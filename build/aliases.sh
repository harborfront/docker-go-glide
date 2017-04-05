#!/bin/bash
set -ev
docker build --build-arg="TAG=${GLIDE:+$GLIDE}" -t "$image" "${VARIANT:-.}"
docker login -e="$DOCKER_EMAIL" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker push "$image"
if [ "$ALIASES" != "" ]; then
  IN=(${ALIASES//,/ })
  for i in "${IN[@]}"; do
    docker tag $(docker images | awk '$1 == "${image}" {print $3}') "$prefix":"$i"
    docker push "$prefix":"$i"
  done
fi
