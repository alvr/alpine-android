ARG JDK_VERSION

FROM ghcr.io/bell-sw/liberica-runtime-container:jdk-${JDK_VERSION}-glibc
LABEL maintainer="Álvaro Salcedo García <alvaro@alvr.dev>"

ARG CMDLINE_VERSION
ARG SDK_TOOLS_VERSION

ENV ANDROID_SDK_ROOT="/opt/sdk"
ENV ANDROID_HOME=${ANDROID_SDK_ROOT}
ENV PATH=$PATH:${ANDROID_SDK_ROOT}/cmdline-tools/${CMDLINE_VERSION}/bin:${ANDROID_SDK_ROOT}/platform-tools:${ANDROID_SDK_ROOT}/extras/google/instantapps
ENV GIT_LFS_VERSION=3.7.1

# Base packages
RUN apk add --no-cache \
    bash \
    coreutils \
    curl \
    libgcc \
    git \
    openssh-client \
    tar \
    unzip \
    wget

# Install Git LFS
RUN set -eux; \
    wget -qO- \
      "https://github.com/git-lfs/git-lfs/releases/download/v${GIT_LFS_VERSION}/git-lfs-linux-amd64-v${GIT_LFS_VERSION}.tar.gz" \
    | tar -xz -C /tmp; \
    install -m755 \
      "/tmp/git-lfs-${GIT_LFS_VERSION}/git-lfs" \
      /usr/local/bin/git-lfs; \
    rm -rf "/tmp/git-lfs-${GIT_LFS_VERSION}"

# Install Android command line tools and platform-tools
RUN --mount=type=cache,target=/root/.android \
    set -eux; \
    mkdir -p "${ANDROID_SDK_ROOT}/cmdline-tools"; \
    wget -qO /tmp/cmdline-tools.zip \
      "https://dl.google.com/android/repository/commandlinetools-linux-${SDK_TOOLS_VERSION}_latest.zip"; \
    unzip -q /tmp/cmdline-tools.zip -d "${ANDROID_SDK_ROOT}/cmdline-tools"; \
    mv \
      "${ANDROID_SDK_ROOT}/cmdline-tools/cmdline-tools" \
      "${ANDROID_SDK_ROOT}/cmdline-tools/${CMDLINE_VERSION}"; \
    rm /tmp/cmdline-tools.zip; \
    mkdir -p /root/.android; \
    touch /root/.android/repositories.cfg; \
    yes | sdkmanager --sdk_root="${ANDROID_SDK_ROOT}" --licenses; \
    sdkmanager --sdk_root="${ANDROID_SDK_ROOT}" \
      "platform-tools" \
      "extras;google;instantapps"

COPY ./extras /bin

WORKDIR /home/android

CMD ["/bin/bash"]
