DIR=${PWD}

SCRIPT="${BASH_SOURCE[0]:-$0}"
REALPATH=`realpath -- "${SCRIPT}"`
SCRIPT_LOC=`dirname "${REALPATH}"`

cd "${SCRIPT_LOC}"

source support/ethernet_network.bash

cd "${DIR}"
