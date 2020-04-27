#! /bin/sh

extractcode packages/"$1".tar.gz
scancode -clpeui -n 2 --license-text --license-clarity-score --license-diag --license-policy policy.yml --classify --summary --summary-key-files --generated  --is-license-text --html output/"$1".report.html --html-app output/"$1".app-report-deprecated.html --spdx-tv output/"$1".tv.spdx --json-pp output/"$1".json packages/"$1".tar.gz-extract
