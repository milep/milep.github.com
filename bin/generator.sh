#!/usr/bin/env bash

_git="/usr/local/bin/git"
_bundle="/Users/milep/.rbenv/shims/bundle"
_opts=(exec jekyll)


_sourcebranch="source"
_destbranch="master"
_currbranch="$(grep "^*" < <("$_git" branch) | cut -d' ' -f2)"


if [[ $_currbranch == $_sourcebranch ]]; then
    _site="$(mktemp -d /tmp/_site.XXXXXXXXX)"
    cd "$("$_git" rev-parse --show-toplevel)"
    "$_bundle" ${_opts[@]} . "$_site"
    "$_git" checkout "$_destbranch"

    cp -rf "$_site"/* .
    
    #rm -rfv "$_site"
fi

