#!/bin/bash

wget --output-document=trainbenchmark-wiki-temp.md https://opensourceprojects.eu/p/mondo/wiki/TrainBenchmark/raw
cat trainbenchmark-wiki-temp.md | sed "s/^  / /" | sed ':a;N;$!ba;s/\n//g' | sed "s/\\\\r\\\\n/\\n/g" | sed "s/^     \*/    */" | tail -n +5 | head -n -1 > trainbenchmark-wiki.md
pandoc trainbenchmark-wiki.md --output trainbenchmark-wiki.pdf --table-of-contents --variable=documentclass:article --variable=title:"Train Benchmark Guide"
pandoc trainbenchmark-wiki.md --output trainbenchmark-wiki.html --table-of-contents --variable=title:"Train Benchmark Guide" --template=template.html
