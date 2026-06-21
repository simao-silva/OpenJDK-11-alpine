FROM alpine:3.24.1

ARG VERSION="11.0.31_p11-r0" # renovate: datasource=repology depName=alpine_3_24/openjdk11 versioning=loose

RUN apk add --no-cache openjdk11="${VERSION}" && \
    rm -rf /var/cache/apk/* /tmp/*

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"

ENV PATH=${PATH}:${JAVA_HOME}/bin

CMD ["jshell"]
