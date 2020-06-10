# Alpine Android Base

[![Download Size](https://images.microbadger.com/badges/image/alvrme/alpine-android-base.svg)](https://microbadger.com/images/alvrme/alpine-android-base)

## Content

| Path                        | Version | Description                         | Location                     |
|-----------------------------|---------|-------------------------------------|------------------------------|
| cmdline-tools;2.0           | 2.0     | Android SDK Command-line Tools      | cmdline-tools/tools/         |
| extras;android;m2repository | 47.0.0  | Android Support Repository          | extras/android/m2repository/ |
| extras;google;instantapps   | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/   |
| extras;google;m2repository  | 58      | Google Repository                   | extras/google/m2repository/  |
| patcher;v4                  | 1       | SDK Patch Applier v4                | patcher/v4/                  |
| platform-tools              | 30.0.2  | Android SDK Platform-Tools          | platform-tools/              |

## Extend from Alpine Android Base

In your Dockerfile use

```dockerfile
FROM alvrme/alpine-android-base
```

this will install the packages above.

You can install any Android package [available](https://gist.github.com/alvr/8db356880447d2c4bbe948ea92d22c23). To install an Android package, include the following line on your Dockerfile:

```dockerfile
RUN sdkmanager <list-of-packages>
```

If you want to install an Alpine package [available](https://pkgs.alpinelinux.org/packages?branch=v3.10). To install an Android package, include the following line on your Dockerfile:

```dockerfile
RUN apk add --no-cache <list-of-packages>
```