#!/bin/bash
cd "$(dirname $0)"
sudo install ./dumbsearch /usr/local/bin
echo "Installed dumbsearch. Please press alt+r on first use to build a search index"