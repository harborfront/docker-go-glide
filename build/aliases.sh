#!/bin/bash
set -ev
docker login -e="$DOCKER_EMAIL" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker push "$image"
if [ "$ALIASES" != "" ]; then
for i in "${ALIASES[@]}"; do
  docker tag $(docker images | awk '$1 == "${image}" {print $3}') "$prefix":"$ALIASES"
  docker push "$prefix":"$ALIASES"
done
fi
