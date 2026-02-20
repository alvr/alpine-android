# Alpine Android Docker Images

<p align="center">
  <a href="https://alvr.dev/en/projects/docker/alpine-android/"><img alt="Alpine Android" src="https://alvr.dev/projects/alpine-android/docker-android.webp"/></a>
</p>

<p align="center">
  <a href="https://github.com/alvr/alpine-android/actions/workflows/default.yaml"><img alt="GitHub build status" src="https://img.shields.io/github/actions/workflow/status/alvr/alpine-android/default.yaml?logo=github"/></a>
  <a href="https://github.com/alvr/alpine-android/releases/latest"><img alt="Latest release" src="https://img.shields.io/github/v/release/alvr/alpine-android?logo=android&logoColor=white&color=066da5"/></a>
  <a href="https://newreleases.io/dockerhub/alvrme/alpine-android"><img alt="Notify new versions" src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-get%20notified-%23005cc5"/></a>
</p>

<p align="center">
  <img alt="Docker Alpine Android Base Pulls" src="https://img.shields.io/docker/pulls/alvrme/alpine-android-base?label=base%20pulls&logo=docker&logoColor=white&color=066da5"/>
  <img alt="Docker Alpine Android Main Pulls" src="https://img.shields.io/docker/pulls/alvrme/alpine-android?label=main%20pulls&logo=docker&logoColor=white&color=066da5"/>
</p>

<p align="center">
  <a href="https://hub.docker.com/r/alvrme/alpine-android-base"><img alt="DockerHub Link" src="https://img.shields.io/badge/base%20image-hub-%23066da5?logo=docker&logoColor=white"/></a>
  <a href="https://github.com/users/alvr/packages/container/package/alpine-android-base"><img alt="GitHub Container Registry Link" src="https://img.shields.io/badge/base%20image-ghcr-black?logo=github&logoColor=white"/></a>
  <a href="https://quay.io/repository/alvr/alpine-android-base"><img alt="Quay Link" src="https://img.shields.io/badge/base%20image-quay-%23D71E00?logo=redhat&logoColor=white"/></a>
</p>

<p align="center">
  <a href="https://hub.docker.com/r/alvrme/alpine-android"><img alt="DockerHub Link" src="https://img.shields.io/badge/main%20image-hub-%23066da5?logo=docker&logoColor=white"/></a>
  <a href="https://github.com/users/alvr/packages/container/package/alpine-android"><img alt="GitHub Container Registry Link" src="https://img.shields.io/badge/main%20image-ghcr-black?logo=github&logoColor=white"/></a>
  <a href="https://quay.io/repository/alvr/alpine-android"><img alt="Quay Link" src="https://img.shields.io/badge/main%20image-quay-%23D71E00?logo=redhat&logoColor=white"/></a>
</p>

---

## Variants

There are four variants of the image, all based on `bellsoft/liberica-openjdk-alpine`:

* JDK8 images are based on Liberica JDK 8u462 and uses the tag's suffix `-jdk8`.
* JDK11 images are based on Liberica JDK 11.0.28 and uses the tag's suffix `-jdk11`.
* JDK17 images are based on Liberica JDK 17.0.16 and uses the tag's suffix `-jdk17`.
* JDK21 images are based on Liberica JDK 21.0.8 and uses the tag's suffix `-jdk21`.

### Which one should I use?

| JDK version | AGP version         |
|-------------|---------------------|
| 8           | < 7.0.0             |
| 11          | >= 7.0.0 && < 8.0.0 |
| 17          | >= 8.0.0            |
| 21          | >= 8.2.1            |

## Tagging

| API level         | JDK8                             | JDK11                                            | JDK17                                        | JDK21                              |
|-------------------|----------------------------------|--------------------------------------------------|----------------------------------------------|------------------------------------|
| Base Image        | `jdk8` `latest-jdk8`             | `jdk11`, `latest-jdk11`                          | `jdk17`, `latest`, `latest-jdk17`            | `jdk21`, `latest-jdk21`            |
| Android 9.0 (28)  | `android-28-jdk8`                | `android-28`, `android-28-jdk11`                 | `android-28-jdk17`                           | `android-28-jdk21`                 |
| Android 10 (29)   | `android-29-jdk8`                | `android-29`, `android-29-jdk11`                 | `android-29-jdk17`                           | `android-29-jdk21`                 |
| Android 11 (30)   | `android-30-jdk8`                | `android-30`, `android-30-jdk11`                 | `android-30-jdk17`                           | `android-30-jdk21`                 |
| Android 12 (31)   | `android-31-jdk8`                | `android-31`, `android-31-jdk11`                 | `android-31-jdk17`                           | `android-31-jdk21`                 |
| Android 12L (32)  | `android-32-jdk8`                | `android-32`, `android-32-jdk11`                 | `android-32-jdk17`                           | `android-32-jdk21`                 |
| Android 13 (33)   | `android-33-jdk8`                | `android-33`, `android-33-jdk11`                 | `android-33-jdk17`                           | `android-33-jdk21`                 |
| Android 14 (34)   | `android-34-jdk8`                | `android-34`, `android-34-jdk11`                 | `android-34-jdk17`                           | `android-34-jdk21`                 |
| Android 15 (35)   | `android-35-jdk8`                | `android-35`, `android-35-jdk11`                 | `android-35-jdk17`                           | `android-35-jdk21`                 |
| Android 16 (36.0) | `android-36-jdk8`, `latest-jdk8` | `android-36`, `android-36-jdk11`, `latest-jdk11` | `android-36-jdk17`, `latest`, `latest-jdk17` | `android-36-jdk21`, `latest-jdk21` |
| Android 16 (36.1) | `android-36.1-jdk8`              | `android-36.1`, `android-36.1-jdk11`             | `android-36.1-jdk17`                         | `android-36.1-jdk21`               |
| Android 17 (37)   | `android-37-jdk8`, `latest-jdk8` | `android-37`, `android-37-jdk11`, `latest-jdk11` | `android-37-jdk17`, `latest`, `latest-jdk17` | `android-37-jdk21`, `latest-jdk21` |

### Versioning

Since January 1st 2021, new versions now include the date it was published so is possible to revert to a previous version. The versioning only applies to tags with the JDK version specified. The tag's format is: `android-XX-jdkZZ-vYYYY.MM.DD`, where:

* `XX` is the API level.
* `ZZ` is the version of the JDK.
* `YYYY` is the year of the release version.
* `MM` is the month of the year of the release version with leading zeros.
* `DD` is the day of the month of the release version with leading zeros.

A valid example would be `android-30-jdk11-v2021.01.01`. [Here](https://github.com/alvr/alpine-android/releases) are listed all the versions.

> :memo: Versioning is not available for `alpine-android-base`.

## Content

<details>
  <summary>See content of Android Base image</summary>
  
![Docker Android Base JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk8?label=jdk8%20image%20size) ![Docker Android Base JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk11?label=jdk11%20image%20size) ![Docker Android Base JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk17?label=jdk17%20image%20size) ![Docker Android Base JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk21?label=jdk21%20image%20size)

| Path                      | Version | Description                         | Location                   |
|---------------------------|---------|-------------------------------------|----------------------------|
| extras;google;instantapps | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1       | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2  | Android SDK Platform-Tools          | platform-tools/            |

## Extend from Alpine Android Base

Use the [following configuration](https://github.com/alvr/alpine-android#use-as-base-image) in your Dockerfile. After that, you can install any Android package [available](https://gist.github.com/alvr/8db356880447d2c4bbe948ea92d22c23). To install an Android package, include the following line on your Dockerfile:

```dockerfile
RUN sdkmanager <list-of-packages>
```

If you want to install an Alpine package [available](https://pkgs.alpinelinux.org/packages?branch=v3.19). To install an Android package, include the following line on your Dockerfile:

```dockerfile
RUN apk add --no-cache <list-of-packages>
```

</details>

<details>
  <summary>See content of Android 9 (Pie) image</summary>

![Docker Android 9 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-28-jdk8?label=jdk8%20image%20size) ![Docker Android 9 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-28-jdk11?label=jdk11%20image%20size) ![Docker Android 9 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-28-jdk17?label=jdk17%20image%20size) ![Docker Android 9 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-28-jdk21?label=jdk21%20image%20size)

| Path                      | Version | Description                         | Location                   |
|---------------------------|---------|-------------------------------------|----------------------------|
| build-tools;28.0.3        | 28.0.3  | Android SDK Build-Tools             | build-tools/28.0.3/        |
| extras;google;instantapps | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1       | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2  | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-28      | 6       | Android SDK Platform 28             | platforms/android-28/      |
</details>

<details>
  <summary>See content of Android 10 (Q) image</summary>

![Docker Android 10 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-29-jdk8?label=jdk8%20image%20size) ![Docker Android 10 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-29-jdk11?label=jdk11%20image%20size) ![Docker Android 10 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-29-jdk17?label=jdk17%20image%20size) ![Docker Android 10 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-29-jdk21?label=jdk21%20image%20size)

| Path                      | Version | Description                         | Location                   |
|---------------------------|---------|-------------------------------------|----------------------------|
| build-tools;29.0.3        | 29.0.3  | Android SDK Build-Tools             | build-tools/29.0.3/        |
| extras;google;instantapps | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1       | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2  | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-29      | 5       | Android SDK Platform 29             | platforms/android-29/      |
</details>

<details>
  <summary>See content of Android 11 (R) image</summary>

![Docker Android 11 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-30-jdk8?label=jdk8%20image%20size) ![Docker Android 11 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-30-jdk11?label=jdk11%20image%20size) ![Docker Android 11 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-30-jdk17?label=jdk17%20image%20size) ![Docker Android 11 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-30-jdk21?label=jdk21%20image%20size)

| Path                      | Version | Description                         | Location                   |
|---------------------------|---------|-------------------------------------|----------------------------|
| build-tools;30.0.3        | 30.0.3  | Android SDK Build-Tools             | build-tools/30.0.3/        |
| extras;google;instantapps | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1       | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2  | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-30      | 3       | Android SDK Platform 30             | platforms/android-30/      |
</details>

<details>
  <summary>See content of Android 12 (S) image</summary>

![Docker Android 12 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-31-jdk8?label=jdk8%20image%20size) ![Docker Android 12 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-31-jdk11?label=jdk11%20image%20size) ![Docker Android 12 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-31-jdk17?label=jdk17%20image%20size) ![Docker Android 12 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-31-jdk21?label=jdk21%20image%20size)

| Path                      | Version | Description                         | Location                   |
|---------------------------|---------|-------------------------------------|----------------------------|
| build-tools;31.0.0        | 31.0.0  | Android SDK Build-Tools             | build-tools/31.0.0/        |
| extras;google;instantapps | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1       | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2  | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-31      | 1       | Android SDK Platform 31             | platforms/android-31/      |
</details>

<details>
  <summary>See content of Android 12L image</summary>

![Docker Android 12L JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-32-jdk8?label=jdk8%20image%20size) ![Docker Android 12L JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-32-jdk11?label=jdk11%20image%20size) ![Docker Android 12L JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-32-jdk17?label=jdk17%20image%20size) ![Docker Android 12 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-32-jdk21?label=jdk21%20image%20size)

| Path                      | Version | Description                         | Location                   |
|---------------------------|---------|-------------------------------------|----------------------------|
| build-tools;32.0.0        | 32.0.0  | Android SDK Build-Tools             | build-tools/32.0.0/        |
| extras;google;instantapps | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1       | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2  | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-32      | 1       | Android SDK Platform 32             | platforms/android-32/      |
</details>

<details>
  <summary>See content of Android 13 (Tiramisu) image</summary>

![Docker Android 13 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-33-jdk8?label=jdk8%20image%20size) ![Docker Android 13 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-33-jdk11?label=jdk11%20image%20size) ![Docker Android 13 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-33-jdk17?label=jdk17%20image%20size) ![Docker Android 13 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-33-jdk21?label=jdk21%20image%20size)

| Path                      | Version | Description                         | Location                   |
|---------------------------|---------|-------------------------------------|----------------------------|
| build-tools;33.0.3        | 33.0.3  | Android SDK Build-Tools             | build-tools/33.0.3/        |
| extras;google;instantapps | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1       | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2  | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-33      | 2       | Android SDK Platform 33             | platforms/android-33/      |

</details>

<details>
  <summary>See content of Android 14 (Upside-down Cake) image</summary>

![Docker Android 14 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-34-jdk8?label=jdk8%20image%20size) ![Docker Android 14 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-34-jdk11?label=jdk11%20image%20size) ![Docker Android 14 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-34-jdk17?label=jdk17%20image%20size) ![Docker Android 14 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-34-jdk21?label=jdk21%20image%20size)

| Path                      | Version    | Description                         | Location                   |
|---------------------------|------------|-------------------------------------|----------------------------|
| build-tools;34.0.0        | 34.0.0     | Android SDK Build-Tools             | build-tools/34.0.0/        |
| extras;google;instantapps | 1.9.0      | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1          | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2     | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-34      | 3          | Android SDK Platform 34             | platforms/android-34/      |

</details>

<details>
  <summary>See content of Android 15 (VanillaIceCream) image</summary>

![Docker Android 15 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-35-jdk8?label=jdk8%20image%20size) ![Docker Android 15 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-35-jdk11?label=jdk11%20image%20size) ![Docker Android 15 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-35-jdk17?label=jdk17%20image%20size) ![Docker Android 15 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-35-jdk21?label=jdk21%20image%20size)

| Path                      | Version    | Description                         | Location                   |
|---------------------------|------------|-------------------------------------|----------------------------|
| build-tools;35.0.1        | 35.0.1     | Android SDK Build-Tools             | build-tools/35.0.1/        |
| extras;google;instantapps | 1.9.0      | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1          | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2     | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-35      | 2          | Android SDK Platform 35             | platforms/android-35/      |

</details>

<details>
  <summary>See content of Android 16 (Baklava) image</summary>

![Docker Android 16 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-36-jdk8?label=jdk8%20image%20size) ![Docker Android 16 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-36-jdk11?label=jdk11%20image%20size) ![Docker Android 16 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-36-jdk17?label=jdk17%20image%20size) ![Docker Android 16 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-36-jdk21?label=jdk21%20image%20size)

| Path                      | Version    | Description                         | Location                   |
|---------------------------|------------|-------------------------------------|----------------------------|
| build-tools;36.1.0        | 36.1.0     | Android SDK Build-Tools             | build-tools/36.1.0/        |
| extras;google;instantapps | 1.9.0      | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1          | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2     | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-36      | 2          | Android SDK Platform 36             | platforms/android-36/      |

</details>

<details>
  <summary>See content of Android 16.1 (Baklava) image</summary>

![Docker Android 16.1 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-36.1-jdk8?label=jdk8%20image%20size) ![Docker Android 16.1 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-36.1-jdk11?label=jdk11%20image%20size) ![Docker Android 16.1 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-36.1-jdk17?label=jdk17%20image%20size) ![Docker Android 16.1 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-36.1-jdk21?label=jdk21%20image%20size)

| Path                      | Version    | Description                         | Location                   |
|---------------------------|------------|-------------------------------------|----------------------------|
| build-tools;36.1.0        | 36.1.0     | Android SDK Build-Tools             | build-tools/36.1.0/        |
| extras;google;instantapps | 1.9.0      | Google Play Instant Development SDK | extras/google/instantapps/ |
| patcher;v4                | 1          | SDK Patch Applier v4                | patcher/v4/                |
| platform-tools            | 36.0.2     | Android SDK Platform-Tools          | platform-tools/            |
| platforms;android-36.1    | 2          | Android SDK Platform 36.1           | platforms/android-36.1/    |

</details>

<details>
  <summary>See content of Android 17 (CinnamonBun) image</summary>

![Docker Android 17 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-37-jdk8?label=jdk8%20image%20size) ![Docker Android 17 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-37-jdk11?label=jdk11%20image%20size) ![Docker Android 17 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-37-jdk17?label=jdk17%20image%20size) ![Docker Android 17 JDK21 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-37-jdk21?label=jdk21%20image%20size)

| Path                          | Version    | Description                         | Location                       |
|-------------------------------|------------|-------------------------------------|--------------------------------|
| build-tools;37.0.0-rc1        | 37.0.0-rc1 | Android SDK Build-Tools             | build-tools/37.0.0-rc1/        |
| extras;google;instantapps     | 1.9.0      | Google Play Instant Development SDK | extras/google/instantapps/     |
| patcher;v4                    | 1          | SDK Patch Applier v4                | patcher/v4/                    |
| platform-tools                | 36.0.2     | Android SDK Platform-Tools          | platform-tools/                |
| platforms;android-CinnamonBun | 1          | Android SDK Platform CinnamonBun    | platforms/android-CinnamonBun/ |

</details>

## Containers registries

Because of the [DockerHub rate limits](https://www.docker.com/increase-rate-limits), the image is now in three different containers registries:

* DockerHub: [Base Image](https://hub.docker.com/repository/docker/alvrme/alpine-android-base/tags) and [Android Image](https://hub.docker.com/repository/docker/alvrme/alpine-android/tags).
* GitHub Container Registry: [Base Image](https://github.com/users/alvr/packages/container/alpine-android-base/versions) and [Android Image](https://github.com/users/alvr/packages/container/alpine-android/versions).
* Quay: [Base Image](https://quay.io/repository/alvr/alpine-android-base?tab=tags) and [Android Image](https://quay.io/repository/alvr/alpine-android?tab=tags).

### Pulling from the different registries

Replace `<tag>` with one of the current [available tags](#tagging).

#### DockerHub pulling

You can pull a specific Docker image from DockerHub with the following command:

```bash
docker pull alvrme/alpine-android-base:<tag>
```

```bash
docker pull alvrme/alpine-android:<tag>
```

#### GHCR pulling

You can pull a specific Docker image from GitHub Container Registry with the following command:

```bash
docker pull ghcr.io/alvr/alpine-android-base:<tag>
```

```bash
docker pull ghcr.io/alvr/alpine-android:<tag>
```

#### Quay pulling

You can pull a specific Docker image from Quay with the following command:

```bash
docker pull quay.io/alvr/alpine-android-base:<tag>
```

```bash
docker pull quay.io/alvr/alpine-android:<tag>
```

### Use as Base Image

Replace `<tag>` with one of the current [available tags](#tagging).

#### DockerHub base image

You can use the Docker images from DockerHub as a base image for creating a new one:

```Dockerfile
FROM alvrme/alpine-android-base:<tag>
```

```Dockerfile
FROM alvrme/alpine-android:<tag>
```

#### GHCR base image

You can use the Docker images from GitHub Container Registry as a base image for creating a new one:

```Dockerfile
FROM ghcr.io/alvr/alpine-android-base:<tag>
```

```Dockerfile
FROM ghcr.io/alvr/alpine-android:<tag>
```

#### Quay base image

You can use the Docker images from Quay as a base image for creating a new one:

```Dockerfile
FROM quay.io/alvr/alpine-android-base:<tag>
```

```Dockerfile
FROM quay.io/alvr/alpine-android:<tag>
```

### Run container

Replace `<tag>` with one of the current [available tags](#tagging).

The command below will create a new container based on the specific image. It will open in the `/home/android` directory and the various [available commands](https://alvr.dev/en/projects/docker/alpine-android/#tools-included) in the `PATH` will be able to be executed. Once the container is closed, it will be deleted. To keep the container after closing it, you have to remove `--rm` from the command.

#### DockerHub run container

Run the container from the DockerHub image:

```bash
docker run --rm -it alvrme/alpine-android-base:<tag>
```

```bash
docker run --rm -it alvrme/alpine-android:<tag>
```

#### GHCR run container

Run the container from the GitHub Container Registry image:

```bash
docker run --rm -it ghcr.io/alvr/alpine-android-base:<tag>
```

```bash
docker run --rm -it ghcr.io/alvr/alpine-android:<tag>
```

#### Quay run container

Run the container from the Quay image:

```bash
docker run --rm -it quay.io/alvr/alpine-android-base:<tag>
```

```bash
docker run --rm -it quay.io/alvr/alpine-android:<tag>
```

## Extras

The base image also includes the `extras` command that contains small utilities that are not installed by default, since their use is not widespread.

These extras are executed with the command `extras <command>` and are the following

### Fastlane

[fastlane](https://github.com/fastlane/fastlane) is a tool for iOS and Android developers to automate tedious tasks like generating screenshots, dealing with provisioning profiles, and releasing your application. Visit their [documentation](https://docs.fastlane.tools/) for more information.

This command allows you to install `fastlane`. There are two variants:

```bash
extras fastlane
```

This command allows you to install the latest version of `fastlane`. If you want to use a specific version, the command is as follows:

```bash
extras fastlane <version>
```

### NDK

The [Android NDK](https://developer.android.com/ndk) is a toolset that lets you implement parts of your app in native code, using languages such as C and C++. For certain types of apps, this can help you reuse code libraries written in those languages.

This command allows you to install NDK and CMAKE using the latest versions available (NDK: `29.0.14206865`; CMAKE: `4.1.2`):

```bash
extras ndk
```

Is also possible to specify the version of NDK and CMAKE with:

```bash
extras ndk [--ndk | -n <version>] [--cmake | -c <version>]
```

It is not necessary to enter both versions, is possible to omit one.

## Extending from Alpine Android Base

[Read more here](https://alvr.dev/en/projects/docker/alpine-android/#alpine-android-base)

## Difference between Alpine Android and Alpine Android Base

The main difference between Alpine Android and Alpine Android Base is that the first one includes the corresponding `build-tools` and `platforms;android` versions. All Alpine Android versions share 95% of the code. Using a base image with the common part makes it easier to maintain.

<!--
markdownlint-configure-file {
  "MD028": false,
  "MD033": {
    "allowed_elements": ["a", "details", "img", "p", "summary"]
    }
  }
-->
