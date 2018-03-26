# Contributing

Please follow the best-practice contribution guidelines as mentioned below when
submitting any changes.

### Conventional Changelog

This project has a changelog which is automatically generated based on Git
commit messages. This mechanism requires that all commit messages comply with
the [Conventional Changelog](https://github.com/bcoe/conventional-changelog-standard/blob/master/convention.md).

### Docker Setup

This project is a simple Docker container based on [BACnet Protocol Stack](https://sourceforge.net/projects/bacnet/).
To build and test it, simply run the Docker build command in the project root
folder:

``` sh
docker build --tag=bacstack-compliance-docker .
```

To verify if the functionality of the built container, start the container as
following:

``` sh
docker run bacstack-compliance-docker
```
