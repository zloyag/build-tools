#!/bin/bash

cp package.json package.json.bak
BASEDIR=$(dirname "$0")
node $BASEDIR/merge-build-tools-deps.js
node_modules/.bin/yarn --ignore-engines
rc=$?
mv package.json.bak package.json
exit $rc
