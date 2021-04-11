IMAGE_NAME=simaofsilva/openjdk11-alpine
ALPINE_VERSION=3.13.4

build:
		DOCKER_CLI_EXPERIMENTAL=enabled \
		docker buildx build \
			--build-arg "ALPINE_VERSION=${ALPINE_VERSION}" \
			--push \
			--platform=linux/amd64,linux/arm64/v8 \
			--tag ${IMAGE_NAME}:${ALPINE_VERSION} \
			--tag ${IMAGE_NAME}:latest \
			--file Dockerfile \
			.
