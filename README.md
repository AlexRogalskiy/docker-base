# Deis Base

[![Build Status](https://travis-ci.org/teamhephy/docker-base.svg?branch=master)](https://travis-ci.org/teamhephy/docker-base) [![Docker Repository on Quay](https://quay.io/repository/teamhephy/base/status "Docker Repository on Docker Hub")](https://hub.docker.com/r/hephy/base)

A slimmed-down Ubuntu-based container image used as the basis of [Hephy Workflow][] and other components.

## Usage

Start your Dockerfile with this line:

```
FROM docker.io/hephy/base:latest
```

There is a `:latest` tag, because even though tagged container images shouldn't be immutable, we also value our time.

The latest hephy/base image is available at:

* [Docker Hub][]
  ```
  docker pull hephy/base:latest
  ```

## Updating Downstream Images

Lots of Workflow components rely on hephy/base. In order to update the downstream repos with the
new image, run `OLD_VERSION="v0.3.7" NEW_VERSION="v0.3.8" ./_scripts/make-prs.sh`. This will
clone all the downstream repos in /tmp, change the image, commit the change and push it to a new
branch. The script will then open a browser window to make a PR against master for that repo.

[Hephy Workflow]: https://teamhephy.com/
[Docker Hub]: https://hub.docker.com/r/hephy/base/
