#!/bin/bash

rm -rf blog.new
mv -v blog blog.old
tinker --build

rsync -azv --del \
    --exclude=.git \
    --exclude=.gitignore \
    --exclude=.nojekyll \
    blog/ blog.old/

mv -v blog blog.new
mv -v blog.old blog
