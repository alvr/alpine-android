FROM tenrero/android-alpine-base
LABEL maintainer="Marcos Tenrero"

ENV BUILD_TOOLS "22.0.1"
ENV TARGET_SDK "22"

# Install SDK Packages
RUN ${ANDROID_HOME}/tools/bin/sdkmanager "build-tools;${BUILD_TOOLS}" "platforms;android-${TARGET_SDK}"