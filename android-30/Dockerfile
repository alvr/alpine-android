FROM alvrme/alpine-android-base
LABEL maintainer="Álvaro S. <alvaro@alvr.me>"

ENV BUILD_TOOLS "30.0.0-rc2"
ENV TARGET_SDK "R"

# Install SDK Packages
RUN ${ANDROID_HOME}/tools/bin/sdkmanager "build-tools;${BUILD_TOOLS}" "platforms;android-${TARGET_SDK}"