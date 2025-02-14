FROM alpine:3.21.3

ARG VERSION="11.0.26_p4-r0" # renovate: datasource=repology depName=alpine_3_21/openjdk11 versioning=loose

RUN apk add --no-cache openjdk11="${VERSION}" && \
    rm -rf /var/cache/apk/* /tmp/*

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"

ENV PATH=${PATH}:${JAVA_HOME}/bin

CMD ["jshell"]
