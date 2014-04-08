#!/bin/bash

wget --output-document=trainbenchmark-temp.md https://opensourceprojects.eu/p/mondo/wiki/TrainBenchmark/raw
cat trainbenchmark-temp.md | sed "s/^  / /" | sed ':a;N;$!ba;s/\n//g' | sed "s/\\\\r\\\\n/\\n/g" | sed "s/^     \*/    */" | tail -n +5 | head -n -1 > trainbenchmark.md
pandoc trainbenchmark.md --output trainbenchmark.pdf --table-of-contents --variable=documentclass:article --variable=title:"Train Benchmark Guide"
pandoc trainbenchmark.md --output trainbenchmark.html
