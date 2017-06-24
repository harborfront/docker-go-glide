# Go-Glide: Docker Image for Go &amp; Glide
[![Travis CI](https://travis-ci.org/harborfront/docker-go-glide.svg?branch=master)](https://travis-ci.org/harborfront/docker-go-glide?branch=master)

## Supported Tags
Each version number comprises of the golang version, glide version and (if applicable) wheezy, alpine et al.
- `1.7`, `1.7-v0.12.3`, `1.7-v0.12.3-wheezy`, `1.7-v0.12.3-alpine3.5`, `1.7-v0.12.3-alpine`
- `1`, `1.8`, `1.8-v0.12.3`, `1.8-v0.12.3-wheezy`, `1.8-v0.12.3-alpine`

A repository for managing reproducible builds of Docker Image for building Go Projects with Glider.

## Image Variants
The `go-glide` images come in many flavors, each designed for a specific use case.

### `go-glide:<version>-alpine`
This image is based on the popular [Alpine Linux project](http://alpinelinux.org/), available in [the `alpine` official image](https://hub.docker.com/_/alpine). Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

This variant is highly recommended when final image size being as small as possible is desired. The main caveat to note is that it does use [musl libc](http://www.musl-libc.org/) instead of [glibc and friends](http://www.etalabs.net/compare_libcs.html), so certain software might run into issues depending on the depth of their libc requirements. However, most software doesn't have an issue with this, so this variant is usually a very safe choice. See [this Hacker News comment thread](https://news.ycombinator.com/item?id=10782897) for more discussion of the issues that might arise and some pro/con comparisons of using Alpine-based images.

To minimize image size, it's uncommon for additional related tools (such as git or bash) to be included in Alpine-based images. Using this image as a base, add the things you need in your own Dockerfile (see the [`alpine` image description](https://hub.docker.com/_/alpine/) for examples of how to install packages if you are unfamiliar).



## License
View [license information](https://github.com/harborfront/docker-go-glider/blob/master/LICENSE) for the software contained in this image.

## Supported Docker versions
This image is officially supported on Docker version 17.03.1-ce.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

## User Feedback
### Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/harborfront/docker-go-glider/issues).
