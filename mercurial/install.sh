#!/bin/bash

NAMESPACE="mercurial-work"
FILES=( hgrc )

if [ "$DIR" == "" ]; then
    DIR="$( cd -P "$( dirname "$0" )" && pwd )"
fi

for i in ${FILES[@]}; do
    echo -e "\033[1;32m-> installing \033[1;37m$NAMESPACE/$i \033[1;32mto \033[1;37m~/.$i\033[0m"
    /usr/bin/install -m 600 $DIR/$i ~/.$i
done

