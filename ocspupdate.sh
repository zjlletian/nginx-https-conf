# !/bin/bash

openssl ocsp -noverify -issuer /etc/httpd/sslcert/zjlup.com/root_bundle.crt -cert /etc/httpd/sslcert/zjlup.com/zjlup.com.crt -url http://ocsp1.wosign.com/ca6/server1/free -respout /etc/nginx/cert/zjlup.com.ocsp > /root/updatetime
nginx -s reload
cat /root/updatetime
