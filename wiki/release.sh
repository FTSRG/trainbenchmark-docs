#!/bin/bash

./compile.sh
scp trainbenchmark-wiki.html trainbenchmark-wiki.pdf ../trainbenchmark-techreport/pdf/trainbenchmark-techreport.pdf szarnyasg@celeborn.mit.bme.hu:/var/www/trainbenchmark.inf.mit.bme.hu/doc
