#!/bin/sh

set -x

# Grab our libs
. "`dirname $0`/setup-lib.sh"

if [ -f $OURDIR/rdma-done ]; then
    exit 0
fi

logtstart "rdma"

rdma_are_packages_installed() {
    maybe_install_packages rdma-core
    maybe_install_packages ibverbs-utils
}

rdma_are_packages_installed


logtend "rdma"
touch $OURDIR/rdma-done
