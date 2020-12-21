# Alpine Android Base

![Docker Android Base JDK8 Layers](https://img.shields.io/microbadger/layers/alvrme/alpine-android-base/jdk8?label=Docker%20JDK8%20Layers&style=for-the-badge) ![Docker Android Base JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk8?label=Docker%20JDK8%20Size&style=for-the-badge)

![Docker Android Base JDK11 Layers](https://img.shields.io/microbadger/layers/alvrme/alpine-android-base/jdk11?label=Docker%20JDK11%20Layers&style=for-the-badge) ![Docker Android Base JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk11?label=Docker%20JDK11%20Size&style=for-the-badge)

## Content

| Path                        | Version | Description                         | Location                     |
|-----------------------------|---------|-------------------------------------|------------------------------|
| extras;google;instantapps   | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/   |
| patcher;v4                  | 1       | SDK Patch Applier v4                | patcher/v4/                  |
| platform-tools              | 30.0.5  | Android SDK Platform-Tools          | platform-tools/              |

## Extend from Alpine Android Base

Use the [following configuration](https://github.com/alvr/alpine-android#use-as-base-image) in your Dockerfile. After that, you can install any Android package [available](https://gist.github.com/alvr/8db356880447d2c4bbe948ea92d22c23). To install an Android package, include the following line on your Dockerfile:

```dockerfile
RUN sdkmanager <list-of-packages>
```

If you want to install an Alpine package [available](https://pkgs.alpinelinux.org/packages?branch=v3.12). To install an Android package, include the following line on your Dockerfile:

```dockerfile
RUN apk add --no-cache <list-of-packages>
```
