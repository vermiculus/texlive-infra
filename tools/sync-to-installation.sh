#!/bin/bash

INSTALLPLACE=${INSTALLPLACE:-/home/norbert/tl/2016}


for i in tlpkg/TeXLive/* texmf-dist/scripts/texlive/* ; do
  if [ -r "$INSTALLPLACE/$i" ] ; then
    cp "$i" "$INSTALLPLACE/$i"
  else
    echo "Cannot find $INSTALLPLACE/$i" >&2
  fi
done


