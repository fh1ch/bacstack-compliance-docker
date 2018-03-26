# BACstack Compliance Docker

A BACNET device (server) simulator as Docker container based on
[BACnet Protocol Stack](https://sourceforge.net/projects/bacnet/).

[![](https://img.shields.io/docker/pulls/fh1ch/bacstack-compliance-docker.svg)](https://hub.docker.com/r/fh1ch/bacstack-compliance-docker/)
[![](https://img.shields.io/docker/build/fh1ch/bacstack-compliance-docker.svg)](https://hub.docker.com/r/fh1ch/bacstack-compliance-docker/)

## Usage

This container is available via [DockerHub](https://hub.docker.com/r/fh1ch/bacstack-compliance-docker/).
You can simply start it using following command:

``` sh
docker run fh1ch/bacstack-compliance-docker
```

To create a BACNET test setup using Docker Compose, use following set-up:

``` yml
version: '3'

services:

  bacstack-compliance-docker:
    image: fh1ch/bacstack-compliance-docker

  bacnet-under-test:
    build:
      context: .
    environment:
      - SERVER_IP=bacstack-compliance-docker
    links:
      - bacstack-compliance-docker
```

By using the `$SERVER_IP` environment variable as target device (server), you
can start utilising various BACNET commands against it.

## Contributing

Please follow the [Contribution Guide](CONTRIBUTING.md) when submitting any
changes.

## License

This project is heavily based on [BACnet Protocol Stack](https://sourceforge.net/projects/bacnet/)
which is licensed under a `[...] a GPL with exception license (like eCos) [...]`.

Please see the original project sources, shipped in unmodified form with this
repo for further information regarding the BACnet Protocol Stack license.

---

[The MIT License](http://opensource.org/licenses/MIT)

Copyright (c) 2018 Fabio Huser <fabio@fh1.ch>
