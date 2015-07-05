# docker-consul

A [Docker](https://docker.com/) image for [Consul](https://www.consul.io/).

## Run the container

Using the `docker` command:

    CONTAINER="consuldata" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -v /consul \
      viljaste/data:latest

    CONTAINER="consul" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      --restart always \
      -p 8200:8200 \
      --volumes-from consuldata \
      -e SERVER_NAME="localhost" \
      -d \
      viljaste/consul:latest

Using the `docker-compose` command

    TMP="$(mktemp -d)" \
      && GIT_SSL_NO_VERIFY=true git clone https://git.beyondcloud.io/viljaste/docker-consul.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker-compose up

## Build the image

    TMP="$(mktemp -d)" \
      && GIT_SSL_NO_VERIFY=true git clone https://git.beyondcloud.io/viljaste/docker-consul.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker build -t viljaste/consul:latest . \
      && cd -

## License

**MIT**
