#!/bin/bash
python -m bash_kernel.install
sed -i 's/Bash/K8S/g' ~/.local/share/jupyter/kernels/bash/kernel.json
if [ -x /entrypoint_override.sh ]; then
  /entrypoint_override.sh
fi
exec $@
