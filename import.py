import shlex
from subprocess import Popen

import_logs = "/usr/bin/python2 /root/matomo-log-analytics/import_logs.py"
cleanup_command = "/usr/sbin/logrotate --force /etc/logrotate.d/nginx"
matomo_url = "http://10.3.0.165/"
matomo_token  = "2aabf8cb9823db35875b254ebcd9070c"
log_path = "/var/log/nginx" # without trailing /
log_ext = ".log"

run_command = 1

# ( log_path +"/"+ site_name + log_ext = /var/log/nginx/my.site.com.log )


#sites = ["www.d2k5.com:7", "irc.d2k5.com:17", "vc.d2k5.com:18", "matrix.d2k5.com:8", "im.d2k5.com:3", "fs.d2k5.com:6", "vd.d2k5.com:10", "txt.d2k5.com:9", "img.d2k5.com:11", "stream.d2k5.com:12", "media.d2k5.com:13", "mirror.d2k5.com:1", "info.d2k5.com:14", "cctv.d2k5.com:15", "cdn.d2k5.com:16", "syn.d2k5.com:4"]
sites = ["research.medicide.ch:19"]

for site in sites:
    site = site.split(":")
    site_name = site[0]
    site_id = site[1]
    print("# " + site[0] + ":" + site[1])
    command = import_logs +" --url="+ matomo_url +" --idsite="+ site_id +" --recorders=4 --enable-http-errors --enable-http-redirects --enable-static --enable-bots --token-auth="+ matomo_token +" "+log_path +"/"+ site_name + log_ext + " --log-format-name=nginx_json"
    if run_command == 1:
        proc = Popen(shlex.split(command)) #, shell=True)
        proc.communicate()
    else:
        print("DEBUG: "+  command)

if run_command == 1:
    proc = Popen(shlex.split(cleanup_command)) #, shell=True)
    proc.communicate()
else:
    print("DEBUG: "+ cleanup_command)
