#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${sadjokerwin}" ]] && DockerRepo='' || DockerRepo="ghcr.io/${sadjokerwin}/"
docker build -t "${DockerRepo}micronaut-app:latest" -t "${DockerRepo}micronaut-app:1.0-$Tag" .  