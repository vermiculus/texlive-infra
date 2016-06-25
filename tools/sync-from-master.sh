#!/bin/bash

MASTER=${MASTER:-/src/TeX/texlive.git/Master}


for i in tlpkg/TeXLive/* tlpkg/installer/* texmf-dist/scripts/texlive/* install-tl ; do
  if [ -r "$MASTER/$i" ] ; then
    cp "$MASTER/$i" "$i"
  else
    echo "Cannot find $MASTER/$i" >&2
  fi
done


