FROM adoptopenjdk/openjdk8:alpine
LABEL maintainer="Álvaro S. <alvaro@alvr.me>"

ENV ANDROID_HOME "/opt/sdk"
ENV CMDLINE_VERSION "3.0"
ENV SDK_TOOLS "6858069"
ENV PATH $PATH:${ANDROID_HOME}/cmdline-tools/${CMDLINE_VERSION}/bin:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/extras/google/instantapps

# Install required dependencies
RUN apk add --no-cache bash git unzip wget && \
    apk add --virtual .rundeps $runDeps && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

# Download and extract Android Tools
RUN wget -q https://dl.google.com/android/repository/commandlinetools-linux-${SDK_TOOLS}_latest.zip -O /tmp/tools.zip && \
    mkdir -p ${ANDROID_HOME}/cmdline-tools && \
    unzip -qq /tmp/tools.zip -d ${ANDROID_HOME}/cmdline-tools && \
    mv ${ANDROID_HOME}/cmdline-tools/* ${ANDROID_HOME}/cmdline-tools/${CMDLINE_VERSION} && \
    rm -v /tmp/tools.zip

# Install SDK Packages
RUN mkdir -p ~/.android/ && touch ~/.android/repositories.cfg && \
    yes | sdkmanager --sdk_root=${ANDROID_HOME} --licenses && \
    sdkmanager --sdk_root=${ANDROID_HOME} --install "platform-tools" "extras;google;instantapps"

COPY ./extras /bin

WORKDIR /home/android
