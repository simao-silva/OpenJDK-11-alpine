FROM alpine:3.21.2

ARG VERSION="11.0.25_p9-r0" # renovate: datasource=repology depName=alpine_3_21/openjdk11 versioning=loose

RUN apk add --no-cache openjdk11="${VERSION}" && \
    rm -rf /var/cache/apk/* /tmp/*

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"

ENV PATH=${PATH}:${JAVA_HOME}/bin

CMD ["jshell"]
