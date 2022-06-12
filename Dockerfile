FROM alpine:3.16.0

ARG VERSION="11.0.15_p10-r1" # renovate: datasource=repology depName=alpine_3_16/openjdk11 versioning=loose

RUN apk update && \
    apk add --no-cache openjdk11="${VERSION}" && \
    rm -rf /var/cache/apk/* /tmp/*

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"

ENV PATH=${PATH}:${JAVA_HOME}/bin

CMD ["jshell"]
