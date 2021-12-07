FROM alpine:latest as output_image

RUN apk add --no-cache docker-cli docker-cli-compose


# Build a test image, validate that everything installed correctly
FROM output_image as test_image

# Check that things are installed by executing the help commands
RUN docker help
RUN docker compose --help
