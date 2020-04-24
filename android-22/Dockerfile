FROM alvrme/alpine-android-base
LABEL maintainer="Álvaro S. <alvaro@alvr.me>"

ENV BUILD_TOOLS "22.0.1"
ENV TARGET_SDK "22"
ENV PATH $PATH:${ANDROID_HOME}/build-tools/${BUILD_TOOLS}

# Install SDK Packages
RUN sdkmanager "build-tools;${BUILD_TOOLS}" "platforms;android-${TARGET_SDK}"