# Java 8 environment with JavaFX
FROM dgricci/java:0.0.2
MAINTAINER Didier Richard <didier.richard@ign.fr>

## install JavaFX not yet part of OpenJDK 8
RUN \
    apt-get -qy update && \
    apt-get install -qy \
        libglapi-mesa \
        libgl1-mesa-glx \
        libgl1-mesa-dri \
        openjfx && \
    rm -rf /var/lib/apt/lists/*

