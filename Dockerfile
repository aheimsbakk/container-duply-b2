#
# Docker: systemd-ubuntu-18.10
# 
# Docker with newer version of duplicity, duply and backblaze integration
# 
# Example: 
#   docker run -u $UID -t -v $HOME:/data --rm duply-b2 usage

# Base image
FROM alpine

# Install duply and backblaze bindings
RUN apk update; \
    apk add duply py2-pip; \
    pip install b2; \
    mkdir /data; \
    rm -rf /var/cache/apk/*

# Set home
ENV HOME=/data

# Mount these volumes
VOLUME /data

# When exec to docker, start in /data
WORKDIR /data

# Run duply
ENTRYPOINT ["/usr/bin/duply"]

# Usage
CMD ["usage"]