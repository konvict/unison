#!/usr/bin/env bash
#

set -ue
# sh -x ./tests/travis-ocaml.sh &>travis.log
sh -x ./tests/travis-ocaml.sh 
. <( opam config env )

set -x
make
make test
