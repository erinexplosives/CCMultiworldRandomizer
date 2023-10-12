#!/bin/bash

version="$(jq -r <ccmod.json .version)";
filename="CCMultiworldRandomizer-$version.ccmod";

[ -f "$filename" ] && rm "$filename"
cp data/out/data.json data/data.json
zip -r "$filename" assets ccmod.json data/data.json plugin.js
