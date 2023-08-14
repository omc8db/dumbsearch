#!/bin/bash
cd "$(dirname $0)"
sudo install ./dumbsearch /usr/local/bin
echo "Building search index ..."
find / > ~/.searchindex 2>/dev/null
echo "Index built. Run 'find / > ~/.searchindex' to rebuild."