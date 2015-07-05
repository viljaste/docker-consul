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
      -p 8300:8300 \
      -p 8301:8301 \
      -p 8301:8301/udp \
      -p 8302:8302 \
      -p 8302:8302/udp \
      -p 8400:8400 \
      -p 8500:8500 \
      -p 8600:8600 \
      -p 8600:8600/udp \
      --volumes-from consuldata \
      -e SERVER="Off" \
      -e BOOTSTRAP_EXPECT="" \
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
