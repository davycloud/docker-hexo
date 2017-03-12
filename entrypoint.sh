#!/bin/bash

# init the BLOG if it's empty
if [ -z "`ls`" ];then
    echo "directory is empty, init ... "
    cp -ar /_init/* .
fi

# just call hexo directly
hexo $@
