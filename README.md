# Alpine Android Docker Images

<p align="center">
  <a href="https://alvr.me/en/projects/docker/alpine-android/"><img alt="Alpine Android" src="https://alvr.me/images/showcase/alpine-android/docker-android.webp"/></a>
</p>

<p align="center">
  <a href="https://github.com/alvr/alpine-android/actions?query=workflow%3A%22Docker+Images+Builder%22"><img alt="GitHub build status" src="https://img.shields.io/github/workflow/status/alvr/alpine-android/Docker%20Images%20Builder?style=for-the-badge"/></a>
</p>

<p align="center">
  <img alt="Docker Alpine Android Base Stars" src="https://img.shields.io/docker/stars/alvrme/alpine-android-base?label=Docker%20Base%20Stars&style=for-the-badge"/>
  <img alt="Docker Alpine Android Base Pulls" src="https://img.shields.io/docker/pulls/alvrme/alpine-android-base?label=Docker%20Base%20Pulls&style=for-the-badge"/>
</p>

<p align="center">
  <img alt="Docker Alpine Android Stars" src="https://img.shields.io/docker/stars/alvrme/alpine-android?label=Docker%20Stars&style=for-the-badge"/>
  <img alt="Docker Alpine Android Pulls" src="https://img.shields.io/docker/pulls/alvrme/alpine-android?label=Docker%20Pulls&style=for-the-badge"/>
</p>

<p align="center">
  <a href="https://hub.docker.com/r/alvrme/alpine-android-base"><img alt="DockerHub Link" src="https://img.shields.io/badge/Base%20Image%20Link-DockerHub-%232496ED?style=for-the-badge"/></a>
  <a href="https://github.com/users/alvr/packages/container/package/alpine-android-base"><img alt="GitHub Container Registry Link" src="https://img.shields.io/badge/Base%20Image%20Link-GHCR-%23181717?style=for-the-badge"/></a>
  <a href="https://quay.io/repository/alvr/alpine-android-base"><img alt="Quay Link" src="https://img.shields.io/badge/Base%20Image%20Link-Quay-%23D71E00?style=for-the-badge"/></a>
</p>

<p align="center">
  <a href="https://hub.docker.com/r/alvrme/alpine-android"><img alt="DockerHub Link" src="https://img.shields.io/badge/Image%20Link-DockerHub-%232496ED?style=for-the-badge"/></a>
  <a href="https://github.com/users/alvr/packages/container/package/alpine-android"><img alt="GitHub Container Registry Link" src="https://img.shields.io/badge/Image%20Link-GHCR-%23181717?style=for-the-badge"/></a>
  <a href="https://quay.io/repository/alvr/alpine-android"><img alt="Quay Link" src="https://img.shields.io/badge/Image%20Link-Quay-%23D71E00?style=for-the-badge"/></a>
</p>

---

## Variants

There are two variants of the image:

* JDK8 images are based on `adoptopenjdk/openjdk8:alpine` (JDK 8u275-b01) and uses the tag's suffix `-jdk8`.
* JDK11 images are based on `adoptopenjdk/openjdk11:alpine` (JDK 11.0.9.1+1) and uses the tag's suffix `-jdk11`.

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

| API level        | JDK8                                                     | JDK11                              |
|------------------|----------------------------------------------------------|------------------------------------|
| Base Image       | `jdk8`, `latest`, `latest-jdk8`                          | `jdk11`, `latest-jdk11`            |
| Android 5.0 (21) | `android-21`, `android-21-jdk8`                          | `android-21-jdk11`                 |
| Android 5.1 (22) | `android-22`, `android-22-jdk8`                          | `android-22-jdk11`                 |
| Android 6.0 (23) | `android-23`, `android-23-jdk8`                          | `android-23-jdk11`                 |
| Android 7.0 (24) | `android-24`, `android-24-jdk8`                          | `android-24-jdk11`                 |
| Android 7.1 (25) | `android-25`, `android-25-jdk8`                          | `android-25-jdk11`                 |
| Android 8.0 (26) | `android-26`, `android-26-jdk8`                          | `android-26-jdk11`                 |
| Android 8.1 (27) | `android-27`, `android-27-jdk8`                          | `android-27-jdk11`                 |
| Android 9.0 (28) | `android-28`, `android-28-jdk8`                          | `android-28-jdk11`                 |
| Android 10 (29)  | `android-29`, `android-29-jdk8`                          | `android-29-jdk11`                 |
| Android 11 (30)  | `android-30`, `android-30-jdk8`, `latest`, `latest-jdk8` | `android-30-jdk11`, `latest-jdk11` |

> :memo: The tags `latest` and `android-XX` will be using the JDK8 base image for one year after AGP 7.0.0 is released to avoid problems with currents CI/CD configurations. That date is yet TBD. After that date, if you want to continue to use JDK8, you must update your configuration with the corresponding tag.

### Versioning

Since January 1st 2021, new versions now include the date it was published so is possible to revert to a previous version. The versioning only applies to tags with the JDK version specified. The tag's format is: `android-XX-jdkZZ-vYYYY.MM.DD`, where:

* `XX` is the API level.
* `ZZ` is the version of the JDK.
* `YYYY` is the year of the release version.
* `MM` is the month of the year of the release version with leading zeros.
* `DD` is the day of the month of the release version with leading zeros.

A valid example would be `android-30-jdk11-v2021.01.01`. [Here](https://github.com/alvr/alpine-android/releases) are listed all the versions.

> :memo: The versioning is not available for `alpine-android-base`.

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

The command below will create a new container based on the specific image. It will open in the `/home/android` directory and the various [available commands](https://alvr.me/en/projects/docker/alpine-android/#tools-included) in the `PATH` will be able to be executed. Once the container is closed, it will be deleted. To keep the container after closing it, you have to remove `--rm` from the command.

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

## Extending from Alpine Android Base

[Read more here](https://github.com/alvr/alpine-android/tree/master/android-base)

## Difference between Alpine Android and Alpine Android Base

The main difference between Alpine Android and Alpine Android Base is that the first one includes the corresponding `build-tools` and `platforms;android` versions. All Alpine Android versions share 95% of the code. Using a base image with the common part makes it easier to maintain.
