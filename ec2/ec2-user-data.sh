#!/bin/bash

#Esta madre es para los datos de usuario que se usan al instanciar un EC2

#Instalar httpd
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hola mundo desde $(hostname -f)</h1>" > /var/www/html/index.html
