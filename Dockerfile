FROM openjdk:8-alpine
MAINTAINER Álvaro S. <alvaro@alvr.me>

ENV VERSION_SDK_TOOLS "25.2.5"
ENV VERSION_BUILD_TOOLS "25.0.2"
ENV VERSION_TARGET_SDK "25"
ENV SDK_PACKAGES "build-tools-${VERSION_BUILD_TOOLS},android-${VERSION_TARGET_SDK},platform-tools,extra-android-m2repository,extra-google-google_play_services,extra-google-m2repository"
ENV ANDROID_HOME "/opt/sdk"
ENV PATH "$PATH:${ANDROID_HOME}/tools"
ENV GLIBC_VERSION "2.25-r0"

# Install required dependencies
RUN apk add --no-cache --virtual=.build-dependencies wget unzip ca-certificates bash && \
	wget https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub -O /etc/apk/keys/sgerrand.rsa.pub && \
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-$GLIBC_VERSION.apk -O /tmp/glibc.apk && \
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION/glibc-bin-$GLIBC_VERSION.apk -O /tmp/glibc-bin.apk && \
	apk add --no-cache /tmp/glibc.apk /tmp/glibc-bin.apk && \
	rm -rf /tmp/* && \
	rm -rf /var/cache/apk/*

# Download and extract Android Tools
RUN wget http://dl.google.com/android/repository/tools_r${VERSION_SDK_TOOLS}-linux.zip -O /tmp/tools.zip && \
	mkdir -p $ANDROID_HOME && \
	unzip /tmp/tools.zip -d $ANDROID_HOME && \
	rm -v /tmp/tools.zip

# Install SDK Packages
RUN mkdir -p $ANDROID_HOME/licenses/ && \
	echo "8933bad161af4178b1185d1a37fbf41ea5269c55" > $ANDROID_HOME/licenses/android-sdk-license && \
	echo "84831b9409646a918e30573bab4c9c91346d8abd" > $ANDROID_HOME/licenses/android-sdk-preview-license && \
	chmod +x $ANDROID_HOME/tools/android && \
	(while [ 1 ]; do sleep 5; echo y; done) | ${ANDROID_HOME}/tools/android update sdk -u -a -t ${SDK_PACKAGES}