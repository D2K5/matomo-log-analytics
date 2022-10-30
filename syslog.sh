#!/bin/sh
python2 /root/matomo-log-analytics/import_logs.py \
 --url=http://10.3.0.165/ \
 --idsite=7 --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots \
 --token-auth=2aabf8cb9823db35875b254ebcd9070c --log-format-name=nginx_json -
