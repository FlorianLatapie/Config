#!/bin/bash

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 user@host"
    exit 1
fi

destination=$1

if [[ ! -f ~/.ssh/id_rsa.pub ]]; then
    echo "Generating RSA key"
    ssh-keygen -b 4096
fi

ssh-copy-id -i ~/.ssh/id_rsa.pub "$destination"
