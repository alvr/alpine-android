# Alpine Android Docker Images

<p align="center">
  <a href="https://alvr.dev/en/projects/docker/alpine-android/"><img alt="Alpine Android" src="https://alvr.dev/images/showcase/alpine-android/docker-android.webp"/></a>
</p>

<p align="center">
  <a href="https://github.com/alvr/alpine-android/actions/workflows/default.yaml"><img alt="GitHub build status" src="https://img.shields.io/github/workflow/status/alvr/alpine-android/Docker%20Images%20Builder?logo=github"/></a>
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

There are two variants of the image:

* JDK8 images are based on `bellsoft/liberica-openjdk-alpine:8` (JDK 8u302-8) and uses the tag's suffix `-jdk8`.
* JDK11 images are based on `bellsoft/liberica-openjdk-alpine:11` (JDK 11.0.12-7) and uses the tag's suffix `-jdk11`.
* JDK17 images are based on `bellsoft/liberica-openjdk-alpine:17` (JDK 17-35) and uses the tag's suffix `-jdk17`.

### Which one should I use?

The recommended version is JDK8 if you are not using AGP v7.0.0+ or you are using DataBinding with a version of AGP prior to v7.0.0. Otherwise you must use JDK11 version because AGP v7.0.0+ will only work with version 11+ of the JDK.

If you want to use a JDK11 image with a version of AGP prior to v7, remember that JAXB is not included and you must add the following dependencies if using DataBinding:

```groovy
// In Groovy
implementation "org.glassfish.jaxb:jaxb-runtime:2.3.3"
// or in Kotlin DSL
implementation("org.glassfish.jaxb:jaxb-runtime:2.3.3")
```

## Tagging

| API level         | JDK8                                                     | JDK11                              | JDK17                              |
|-------------------|----------------------------------------------------------|------------------------------------|------------------------------------|
| Base Image        | `jdk8`, `latest`, `latest-jdk8`                          | `jdk11`, `latest-jdk11`            | `jdk17`, `latest-jdk17`            |
| Android 9.0 (28)  | `android-28`, `android-28-jdk8`                          | `android-28-jdk11`                 | `android-28-jdk17`                 |
| Android 10 (29)   | `android-29`, `android-29-jdk8`                          | `android-29-jdk11`                 | `android-29-jdk17`                 |
| Android 11 (30)   | `android-30`, `android-30-jdk8`, `latest`, `latest-jdk8` | `android-30-jdk11`, `latest-jdk11` | `android-30-jdk17`, `latest-jdk17` |
| Android 12 (31)   | `android-31`, `android-31-jdk8`                          | `android-31-jdk11`                 | `android-31-jdk17`                 |
| Android Sv2 (31)  | `android-Sv2`, `android-Sv2-jdk8`                        | `android-Sv2-jdk11`                | `android-Sv2-jdk17`                |

> :warning: The tags `latest` and `android-XX` will be using the JDK8 base image until July 28th, 2022. After that date, those tags will be targeting JDK11.

> :warning: Android 12 is available. Android 12 will be using `latest` tag on January 1st, 2022.

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
  
![Docker Android Base JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk8?label=jdk8%20image%20size) ![Docker Android Base JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk11?label=jdk11%20image%20size) ![Docker Android Base JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android-base/jdk17?label=jdk17%20image%20size)

| Path                        | Version | Description                         | Location                     |
|-----------------------------|---------|-------------------------------------|------------------------------|
| extras;google;instantapps   | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/   |
| patcher;v4                  | 1       | SDK Patch Applier v4                | patcher/v4/                  |
| platform-tools              | 31.0.3  | Android SDK Platform-Tools          | platform-tools/              |

## Extend from Alpine Android Base

Use the [following configuration](https://github.com/alvr/alpine-android#use-as-base-image) in your Dockerfile. After that, you can install any Android package [available](https://gist.github.com/alvr/8db356880447d2c4bbe948ea92d22c23). To install an Android package, include the following line on your Dockerfile:

```dockerfile
RUN sdkmanager <list-of-packages>
```

If you want to install an Alpine package [available](https://pkgs.alpinelinux.org/packages?branch=v3.13). To install an Android package, include the following line on your Dockerfile:

```dockerfile
RUN apk add --no-cache <list-of-packages>
```

</details>

<details>
  <summary>See content of Android 28 image</summary>

![Docker Android 28 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-28-jdk8?label=jdk8%20image%20size) ![Docker Android 28 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-28-jdk11?label=jdk11%20image%20size) ![Docker Android 28 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-28-jdk17?label=jdk17%20image%20size)

| Path                        | Version | Description                         | Location                     |
|-----------------------------|---------|-------------------------------------|------------------------------|
| build-tools;28.0.3          | 28.0.3  | Android SDK Build-Tools             | build-tools/28.0.3/          |
| extras;google;instantapps   | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/   |
| patcher;v4                  | 1       | SDK Patch Applier v4                | patcher/v4/                  |
| platform-tools              | 31.0.3  | Android SDK Platform-Tools          | platform-tools/              |
| platforms;android-28        | 6       | Android SDK Platform 28             | platforms/android-28/        |
</details>

<details>
  <summary>See content of Android 29 image</summary>

![Docker Android 29 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-29-jdk8?label=jdk8%20image%20size) ![Docker Android 29 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-29-jdk11?label=jdk11%20image%20size) ![Docker Android 29 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-29-jdk17?label=jdk17%20image%20size)

| Path                        | Version | Description                         | Location                     |
|-----------------------------|---------|-------------------------------------|------------------------------|
| build-tools;29.0.3          | 29.0.3  | Android SDK Build-Tools             | build-tools/29.0.3/          |
| extras;google;instantapps   | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/   |
| patcher;v4                  | 1       | SDK Patch Applier v4                | patcher/v4/                  |
| platform-tools              | 31.0.3  | Android SDK Platform-Tools          | platform-tools/              |
| platforms;android-29        | 5       | Android SDK Platform 29             | platforms/android-29/        |
</details>

<details>
  <summary>See content of Android 30 image</summary>

![Docker Android 30 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-30-jdk8?label=jdk8%20image%20size) ![Docker Android 30 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-30-jdk11?label=jdk11%20image%20size) ![Docker Android 30 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-30-jdk17?label=jdk17%20image%20size)

| Path                        | Version | Description                         | Location                     |
|-----------------------------|---------|-------------------------------------|------------------------------|
| build-tools;30.0.3          | 30.0.3  | Android SDK Build-Tools             | build-tools/30.0.3/          |
| extras;google;instantapps   | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/   |
| patcher;v4                  | 1       | SDK Patch Applier v4                | patcher/v4/                  |
| platform-tools              | 31.0.3  | Android SDK Platform-Tools          | platform-tools/              |
| platforms;android-30        | 3       | Android SDK Platform 30             | platforms/android-30/        |
</details>

<details>
  <summary>See content of Android 31 image</summary>

![Docker Android 31 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-31-jdk8?label=jdk8%20image%20size) ![Docker Android 31 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-31-jdk11?label=jdk11%20image%20size) ![Docker Android 31 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-31-jdk17?label=jdk17%20image%20size)

| Path                        | Version | Description                         | Location                     |
|-----------------------------|---------|-------------------------------------|------------------------------|
| build-tools;31.0.0          | 31.0.0  | Android SDK Build-Tools             | build-tools/31.0.0/          |
| extras;google;instantapps   | 1.9.0   | Google Play Instant Development SDK | extras/google/instantapps/   |
| patcher;v4                  | 1       | SDK Patch Applier v4                | patcher/v4/                  |
| platform-tools              | 31.0.3  | Android SDK Platform-Tools          | platform-tools/              |
| platforms;android-31        | 1       | Android SDK Platform 31             | platforms/android-31/        |
</details>

<details>
  <summary>See content of Android Sv2 image</summary>

![Docker Android Sv2 JDK8 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-Sv2-jdk8?label=jdk8%20image%20size) ![Docker Android Sv2 JDK11 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-Sv2-jdk11?label=jdk11%20image%20size) ![Docker Android Sv2 JDK17 Size](https://img.shields.io/docker/image-size/alvrme/alpine-android/android-Sv2-jdk17?label=jdk17%20image%20size)

| Path                        | Version     | Description                         | Location                     |
|-----------------------------|-------------|-------------------------------------|------------------------------|
| build-tools;32.0.0-rc1      | 32.0.0-rc1  | Android SDK Build-Tools             | build-tools/32.0.0-rc1/      |
| extras;google;instantapps   | 1.9.0       | Google Play Instant Development SDK | extras/google/instantapps/   |
| patcher;v4                  | 1           | SDK Patch Applier v4                | patcher/v4/                  |
| platform-tools              | 31.0.3      | Android SDK Platform-Tools          | platform-tools/              |
| platforms;android-Sv2       | 1           | Android SDK Platform Sv2            | platforms/android-Sv2/       |
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

This command allows you to install NDK and CMAKE using the latest versions available (NDK: `23.0.7599858`; CMAKE: `3.18.1`):

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
