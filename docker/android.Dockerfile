ARG JDK_VERSION

FROM alvrme/alpine-android-base:jdk${JDK_VERSION}
LABEL maintainer="Álvaro Salcedo García <alvaro@alvr.dev>"

ARG BUILD_TOOLS
ARG TARGET_SDK

ENV PATH $PATH:${ANDROID_SDK_ROOT}/build-tools/${BUILD_TOOLS}

# Install SDK Packages
RUN sdkmanager --sdk_root="${ANDROID_SDK_ROOT}" --install "build-tools;${BUILD_TOOLS}" "platforms;android-${TARGET_SDK}" && \
    sdkmanager --sdk_root="${ANDROID_SDK_ROOT}" --uninstall emulator

CMD ["/bin/bash"]