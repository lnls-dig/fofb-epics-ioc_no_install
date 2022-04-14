#!/bin/bash

CRATE_PREFIX=$1
FOFB_IDX=$2

TEST_FOLDER=/tmp/repos/test

if [ ! $# -eq 2 ]
  then
    echo "Wrong usage! $0 <CRATE_PREFIX> <FOFB_IDX>"
    exit
fi

sudo systemctl stop fofb-ioc@${FOFB_IDX}
sudo systemctl mask fofb-ioc@${FOFB_IDX}

read -p "Press ENTER to run fofb-epics-ioc @${FOFB_IDX}"

cd ${TEST_FOLDER}/fofb-epics-ioc/iocBoot/iocFOFB
./iocBoot.sh ipc:///tmp/malamute ${FOFB_IDX} ${CRATE_PREFIX}

sudo systemctl unmask fofb-ioc@${FOFB_IDX}
sudo systemctl restart fofb-ioc@${FOFB_IDX}
