ARG JDK_VERSION

FROM bellsoft/liberica-openjdk-alpine:${JDK_VERSION}
LABEL maintainer="Álvaro Salcedo García <alvaro@alvr.dev>"

ARG CMDLINE_VERSION
ARG SDK_TOOLS_VERSION

ENV ANDROID_SDK_ROOT "/opt/sdk"
ENV ANDROID_HOME ${ANDROID_SDK_ROOT}
ENV PATH $PATH:${ANDROID_SDK_ROOT}/cmdline-tools/${CMDLINE_VERSION}/bin:${ANDROID_SDK_ROOT}/platform-tools:${ANDROID_SDK_ROOT}/extras/google/instantapps

RUN apk upgrade && \ 
    apk add --no-cache bash curl git unzip wget coreutils openssh-client && \ 
    rm -rf /tmp/* && \ 
    rm -rf /var/cache/apk/* && \ 
    wget -q https://dl.google.com/android/repository/commandlinetools-linux-${SDK_TOOLS_VERSION}_latest.zip -O /tmp/tools.zip && \ 
    mkdir -p ${ANDROID_SDK_ROOT}/cmdline-tools && \ 
    unzip -qq /tmp/tools.zip -d ${ANDROID_SDK_ROOT}/cmdline-tools && \ 
    mv ${ANDROID_SDK_ROOT}/cmdline-tools/* ${ANDROID_SDK_ROOT}/cmdline-tools/${CMDLINE_VERSION} && \ 
    rm -v /tmp/tools.zip && \ 
    mkdir -p ~/.android/ && touch ~/.android/repositories.cfg && \ 
    yes | sdkmanager --sdk_root=${ANDROID_SDK_ROOT} --licenses && \ 
    sdkmanager --sdk_root=${ANDROID_SDK_ROOT} --install "platform-tools" "extras;google;instantapps" 

COPY ./extras /bin

WORKDIR /home/android

CMD ["/bin/bash"]