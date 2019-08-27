FROM adoptopenjdk/openjdk8:alpine-slim
LABEL maintainer="Álvaro S. <alvaro@alvr.me>"

ENV SDK_TOOLS "4333796"
ENV ANDROID_HOME "/opt/sdk"
ENV PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# Install required dependencies
RUN apk add --no-cache bash git unzip wget && \
    apk add --virtual .rundeps $runDeps && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

# Download and extract Android Tools
RUN wget -q https://dl.google.com/android/repository/sdk-tools-linux-${SDK_TOOLS}.zip -O /tmp/tools.zip && \
    mkdir -p ${ANDROID_HOME} && \
    unzip -qq /tmp/tools.zip -d ${ANDROID_HOME} && \
    rm -v /tmp/tools.zip

# Install SDK Packages
RUN mkdir -p ~/.android/ && touch ~/.android/repositories.cfg && \
    yes | ${ANDROID_HOME}/tools/bin/sdkmanager "--licenses" && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "platform-tools" "extras;android;m2repository" "extras;google;m2repository" "extras;google;instantapps" && \    
    ${ANDROID_HOME}/tools/bin/sdkmanager "--update"

WORKDIR /home/android
