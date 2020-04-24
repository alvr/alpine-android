FROM adoptopenjdk/openjdk11:alpine
LABEL maintainer="Álvaro S. <alvaro@alvr.me>"

ENV SDK_TOOLS "6200805"
ENV ANDROID_HOME "/opt/sdk"
ENV PATH $PATH:${ANDROID_HOME}/cmdline-tools/tools/bin:${ANDROID_HOME}/platform-tools

# Install required dependencies
RUN apk add --no-cache bash git unzip wget && \
    apk add --virtual .rundeps $runDeps && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

# Download and extract Android Tools
RUN wget -q https://dl.google.com/android/repository/commandlinetools-linux-${SDK_TOOLS}_latest.zip -O /tmp/tools.zip && \
    mkdir -p ${ANDROID_HOME}/cmdline-tools && \
    unzip -qq /tmp/tools.zip -d ${ANDROID_HOME}/cmdline-tools && \
    rm -v /tmp/tools.zip

# Install SDK Packages
RUN mkdir -p ~/.android/ && touch ~/.android/repositories.cfg && \
    yes | sdkmanager --sdk_root=${ANDROID_HOME} --licenses && \
    sdkmanager --sdk_root=${ANDROID_HOME} "platform-tools" "extras;android;m2repository" "extras;google;m2repository" "extras;google;instantapps" && \    
    sdkmanager --update

WORKDIR /home/android
