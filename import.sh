# mirror.d2k5.com (1)
#/usr/bin/python2 /root/matomo-log-analytics/import_logs.py --url=http://10.3.0.165/ --idsite=1  --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth=2aabf8cb9823db35875b254ebcd9070c /var/log/nginx/mirror.d2k5.com.log --log-format-name=nginx_json

# im.d2k5.com (3)
#/usr/bin/python2 /root/matomo-log-analytics/import_logs.py --url=http://10.3.0.165/ --idsite=3  --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth=2aabf8cb9823db35875b254ebcd9070c /var/log/nginx/im.d2k5.com.log --log-format-name=nginx_json

# cdn.d2k5.com (5)
#/usr/bin/python2 /root/matomo-log-analytics/import_logs.py --url=http://10.3.0.165/ --idsite=5  --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth=2aabf8cb9823db35875b254ebcd9070c /var/log/nginx/cdn.d2k5.com.log --log-format-name=nginx_json

# fs.d2k5.com (6)
#/usr/bin/python2 /root/matomo-log-analytics/import_logs.py --url=http://10.3.0.165/ --idsite=6  --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth=2aabf8cb9823db35875b254ebcd9070c /var/log/nginx/fs.d2k5.com.log --log-format-name=nginx_json

# d2k5.com (7)
#/usr/bin/python2 /root/matomo-log-analytics/import_logs.py --url=http://10.3.0.165/ --idsite=7  --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth=2aabf8cb9823db35875b254ebcd9070c /var/log/nginx/www.d2k5.com.log --log-format-name=nginx_json

# matrix.d2k5.com (8)
#/usr/bin/python2 /root/matomo-log-analytics/import_logs.py --url=http://10.3.0.165/ --idsite=8  --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth=2aabf8cb9823db35875b254ebcd9070c /var/log/nginx/matrix.d2k5.com.log --log-format-name=nginx_json

# txt.d2k5.com (9)
#/usr/bin/python2 /root/matomo-log-analytics/import_logs.py --url=http://10.3.0.165/ --idsite=9  --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth=2aabf8cb9823db35875b254ebcd9070c /var/log/nginx/txt.d2k5.com.log --log-format-name=nginx_json

# research.medicide.ch (19)
/usr/bin/python2 /root/matomo-log-analytics/import_logs.py --url=http://10.3.0.165/ --idsite=19  --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth=2aabf8cb9823db35875b254ebcd9070c /var/log/nginx/research.medicide.ch.log --log-format-name=nginx_json


/usr/sbin/logrotate --force /etc/logrotate.d/nginx
