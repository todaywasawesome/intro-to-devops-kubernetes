#!/bin/bash

wget https://github.com/codefresh-io/cli/releases/download/v0.43.6/codefresh-v0.43.6-linux-x64.tar.gz
tar -xzvf codefresh-v0.43.6-linux-x64.tar.gz
chmod +x codefresh
mv codefresh /bin/