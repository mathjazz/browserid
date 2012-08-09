#!/bin/bash

if [ ! -f $HOME/var/root.cert ] ; then
    echo ">> generating keypair"
    scripts/generate_ephemeral_keys.js
    mv var/root.{cert,secretkey} $HOME/var
else
    echo ">> no keypair needed.  you gots one"
fi

echo ">> generating production resources"
scripts/compress
