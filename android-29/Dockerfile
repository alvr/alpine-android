FROM tenrero/android-alpine-base
LABEL maintainer="Marcos Tenrero"

ENV BUILD_TOOLS "29.0.2"
ENV TARGET_SDK "29"

# Install SDK Packages
RUN ${ANDROID_HOME}/tools/bin/sdkmanager "build-tools;${BUILD_TOOLS}" "platforms;android-${TARGET_SDK}"