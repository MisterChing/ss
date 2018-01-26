#!/bin/bash
HOME=$(readlink -f $(dirname $0))
WORK_DIR=`dirname $0`
if [ "$1"x == "server"x ]; then
    ${HOME}/shadowsocks-server -c ${HOME}/../conf/config.json
elif [ "$1"x == "client"x ]; then
    ${HOME}/shadowsocks-local -c ${HOME}/../conf/config.json &
fi
