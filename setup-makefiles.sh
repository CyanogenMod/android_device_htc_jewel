#!/bin/sh

set -e

export DEVICE=jewel
export VENDOR=htc
./../../../device/${VENDOR}/s4-common/setup-makefiles.sh $@
