#!/bin/bash
python -m bash_kernel.install
if [ -x /entrypoint_override.sh ]; then
  /entrypoint_override.sh
fi
exec $@
