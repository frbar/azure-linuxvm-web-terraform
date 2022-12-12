#! /bin/bash
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<b>Hello World!</b>" | sudo tee /var/www/html/index.html

# #cloud-config
# package_upgrade: true
# packages:
#   - nginx
#   #- apache2
# write_files:
#   - owner: www-data:www-data
#   - path: /etc/nginx/sites-available/default
#     content: |
#      server {
#        listen 443 ssl;
#        ssl_certificate /etc/nginx/ssl/mycert.cert;
#        ssl_certificate_key /etc/nginx/ssl/mycert.prv;
#      }
#   - /var/www/index.html
#     content: "<b>Hello World!</b>"
# runcmd:
#   - secretsname=$(find /var/lib/waagent/ -name "*.prv" | cut -c -57)
#   - mkdir /etc/nginx/ssl
#   - cp $secretsname.crt /etc/nginx/ssl/mycert.cert
#   - cp $secretsname.prv /etc/nginx/ssl/mycert.prv
#   - service nginx restart




