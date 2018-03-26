FROM debian:9-slim

# Environment variables
ENV BACNET_STACK_VERSION 0.8.5
ENV BACNET_DEVICE_INSTANCE 1234

# Install dependencies
RUN apt-get update && apt-get -y \
    install \
    build-essential && \
    rm -rf /var/lib/apt/lists/*

# Install bacnet-stack
ADD bacnet-stack-$BACNET_STACK_VERSION.tgz .
RUN cd bacnet-stack-$BACNET_STACK_VERSION && \
    make clean all

# Run bacnet-stack simulator
CMD bacnet-stack-$BACNET_STACK_VERSION/bin/bacserv $BACNET_DEVICE_INSTANCE
