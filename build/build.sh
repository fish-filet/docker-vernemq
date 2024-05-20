# Build the Docker image
docker build -t vernemq-build -f Dockerfile.build .

# Create a container from the image
docker create --name vernemq-builder vernemq-build

# Copy the built binary from the container to the host
docker cp vernemq-builder:/out/vernemq/. ./target

# Remove the build container
docker rm vernemq-builder
