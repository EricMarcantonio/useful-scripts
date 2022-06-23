#!/bin/bash
curl -O https://dl.google.com/go/go1.18.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz
echo export PATH=$PATH:/usr/local/go/bin >> .bashrc
echo export PATH=$PATH:/root/go/bin >> .bashrc
source .bashrc
go install fortio.org/fortio@latest
