ARG ALPINE_VERSION=

FROM alpine:${ALPINE_VERSION}

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"

RUN apk add --no-cache openjdk11

ENV PATH=${PATH}:${JAVA_HOME}/bin

CMD ["jshell"]
