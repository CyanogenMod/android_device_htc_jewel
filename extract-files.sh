#!/bin/sh

set -e

export DEVICE=jewel
export VENDOR=htc
./../msm8960-common/extract-files.sh $@
