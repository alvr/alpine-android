# Alpine Android

| Alpine Android Base                 | Alpine Android            |
|-------------------------------------|---------------------------|
| [![docker-base-pulls]][docker-base] | [![docker-pulls]][docker] |
| [![docker-base-stars]][docker-base] | [![docker-stars]][docker] |

All images are based on adoptopenjdk/openjdk11:alpine (JDK 11.0.7+10)

---

> Is possible to use `latest` tag to always use the latest Android SDK version.

## Pull from Docker Hub

| API level         | Command                                        | Info              |
|-------------------|------------------------------------------------|-------------------|
| Android 21 (5.0)  | `docker pull alvrme/alpine-android:android-21` | [Info][android21] |
| Android 22 (5.1)  | `docker pull alvrme/alpine-android:android-22` | [Info][android22] |
| Android 23 (6.0)  | `docker pull alvrme/alpine-android:android-23` | [Info][android23] |
| Android 24 (7.0)  | `docker pull alvrme/alpine-android:android-24` | [Info][android24] |
| Android 25 (7.1)  | `docker pull alvrme/alpine-android:android-25` | [Info][android25] |
| Android 26 (8.0)  | `docker pull alvrme/alpine-android:android-26` | [Info][android26] |
| Android 27 (8.1)  | `docker pull alvrme/alpine-android:android-27` | [Info][android27] |
| Android 28 (9.0)  | `docker pull alvrme/alpine-android:android-28` | [Info][android28] |
| Android 29 (10.0) | `docker pull alvrme/alpine-android:android-29` | [Info][android29] |
| Android 30 (11.0) | `docker pull alvrme/alpine-android:android-30` | [Info][android30] |

## Use as Base Image

| API level         | Base Image                              |
|-------------------|-----------------------------------------|
| Android 21 (5.0)  | `FROM alvrme/alpine-android:android-21` |
| Android 22 (5.1)  | `FROM alvrme/alpine-android:android-22` |
| Android 23 (6.0)  | `FROM alvrme/alpine-android:android-23` |
| Android 24 (7.0)  | `FROM alvrme/alpine-android:android-24` |
| Android 25 (7.1)  | `FROM alvrme/alpine-android:android-25` |
| Android 26 (8.0)  | `FROM alvrme/alpine-android:android-26` |
| Android 27 (8.1)  | `FROM alvrme/alpine-android:android-27` |
| Android 28 (9.0)  | `FROM alvrme/alpine-android:android-28` |
| Android 29 (10.0) | `FROM alvrme/alpine-android:android-29` |
| Android 30 (11.0) | `FROM alvrme/alpine-android:android-30` |

## Run container

| API level         | Command                                                |
|-------------------|--------------------------------------------------------|
| Android 21 (5.0)  | `docker run --rm -it alvrme/alpine-android:android-21` |
| Android 22 (5.1)  | `docker run --rm -it alvrme/alpine-android:android-22` |
| Android 23 (6.0)  | `docker run --rm -it alvrme/alpine-android:android-23` |
| Android 24 (7.0)  | `docker run --rm -it alvrme/alpine-android:android-24` |
| Android 25 (7.1)  | `docker run --rm -it alvrme/alpine-android:android-25` |
| Android 26 (8.0)  | `docker run --rm -it alvrme/alpine-android:android-26` |
| Android 27 (8.1)  | `docker run --rm -it alvrme/alpine-android:android-27` |
| Android 28 (9.0)  | `docker run --rm -it alvrme/alpine-android:android-28` |
| Android 29 (10.0) | `docker run --rm -it alvrme/alpine-android:android-29` |
| Android 30 (11.0) | `docker run --rm -it alvrme/alpine-android:android-30` |

## Extending from Alpine Android Base

[Read more here](https://github.com/alvr/alpine-android/tree/master/android-base)

## Difference between Alpine Android and Alpine Android Base

The main difference between Alpine Android and Alpine Android Base is that the first one includes the corresponding `build-tools` and `platforms;android` versions. All Alpine Android versions share 95% of the code. Using a base image with the common part makes it easier to maintain.

[docker-base]: https://hub.docker.com/r/alvrme/alpine-android-base/
[docker]: https://hub.docker.com/r/alvrme/alpine-android/
[docker-base-pulls]: https://img.shields.io/docker/pulls/alvrme/alpine-android-base.svg "Docker Pulls"
[docker-pulls]: https://img.shields.io/docker/pulls/alvrme/alpine-android.svg "Docker Pulls"
[docker-base-stars]: https://img.shields.io/docker/stars/alvrme/alpine-android-base.svg "Docker Stars"
[docker-stars]: https://img.shields.io/docker/stars/alvrme/alpine-android.svg "Docker Stars"

[android21]: https://github.com/alvr/alpine-android/tree/master/android-21
[android22]: https://github.com/alvr/alpine-android/tree/master/android-22
[android23]: https://github.com/alvr/alpine-android/tree/master/android-23
[android24]: https://github.com/alvr/alpine-android/tree/master/android-24
[android25]: https://github.com/alvr/alpine-android/tree/master/android-25
[android26]: https://github.com/alvr/alpine-android/tree/master/android-26
[android27]: https://github.com/alvr/alpine-android/tree/master/android-27
[android28]: https://github.com/alvr/alpine-android/tree/master/android-28
[android29]: https://github.com/alvr/alpine-android/tree/master/android-29
[android30]: https://github.com/alvr/alpine-android/tree/master/android-30
