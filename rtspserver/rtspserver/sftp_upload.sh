#!/bin/sh

USER=root
IP=192.168.1.117

sftp $USER@$IP <<-EOF
cd /mnt/data/etc/rtsp_new/
mput rtspserver
exit
EOF

echo "Success : $?"