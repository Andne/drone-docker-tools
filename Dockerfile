FROM alpine:latest as output_image

RUN apk add --no-cache docker-cli

COPY docker-compose /usr/lib/docker/cli-plugins/
RUN chmod +x /usr/lib/docker/cli-plugins/docker-compose


# Build a test image, validate that everything installed correctly
FROM output_image as test_image

# Check that things are installed by executing the help commands
RUN docker help
RUN docker compose --help
