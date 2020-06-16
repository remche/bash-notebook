[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/remche/bash-notebook?style=flat-square)](https://hub.docker.com/repository/docker/remche/bash-notebook)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/remche/bash-notebook?style=flat-square)](https://hub.docker.com/repository/docker/remche/bash-notebook)

# JupyterHub bash Docker image
This repository builds a docker image for JupyterHub notebook embedding takluyver/bash_kernel and nbgitpuller.

## Overriding entrypoint
When inheriting the image you can use `/entrypoint_override.sh` file to add your custom script.
