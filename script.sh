#!/bin/sh
# Things to so after install Ubuntu 20.04
sudo -i
apt update -y
apt upgrade -y 
apt update -y
apt install build-essential checkinstall
apt install ubuntu-restricted-extras
apt install software-properties-common
add-apt-repository ppa:nilarimogard/webupd8
apt update
apt install launchpad-getkeys
launchpad-getkeys 
add-apt-repository ppa:git-core/ppa
apt update -y
apt upgrade -y
apt update -y
apt upgrade -y
apt -f install 
apt autoremove 
apt -y autoclean 
apt -y clean 
apt update
reboot


# Install Apache
sudo apt update
sudo apt upgrade
sudo apt install apache2
sudo ufw allow in "Apache Full"
apache2 -v

nano /etc/apache2/apache2.conf

# Add 
ServerName 127.0.1.1 

# Find and update AllowOverride All 
<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride All 
        Require all granted
</Directory>

# ctrl+s and ctrl+x

sudo service apache2 start
sudo systemctl enable apache2
sudo service apache2 restart
sudo service apache2 reload
sudo service apache2 status
sudo apt install curl
# Visit:  http://localhost/

sudo a2enmod rewrite
sudo systemctl restart apache2
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt upgrade
sudo apt install php8.1
sudo apt install php8.1-common php8.1-cli php8.1-gd php8.1-mysql php8.1-curl php8.1-intl php8.1-mbstring php8.1-bcmath php8.1-imap php8.1-xml php8.1-zip libapache2-mod-php php-mysql

sudo nano /etc/apache2/mods-enabled/dir.conf
# add
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>

# for save and exit ctrl+s + ctrl+x


cd /var/www/html/
git clone https://github.com/laravel/laravel.git
cd laravel
chmod -R 755 /var/www/html/laravel
chmod -R 777 /var/www/html/laravel/storage
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer
composer --version
composer install
php artisan serve
mv .env.example .env
a2enmod rewrite
php artisan key:generate

sudo -i
apt install mariadb-client
apt install mariadb-server
mysql_secure_installation

nano /usr/lib/systemd/system/mariadb.service
# Update

LimitNOFILE=infinity

# save and exit ctrl+s and ctrl+x

systemctl daemon-reload
systemctl restart mariadb
systemctl status mariadb
systemctl is-enabled mariadb
mysql
create database lamplaravel;
CREATE USER 'netadmin'@'%' IDENTIFIED BY 'L@MpPre786';
GRANT ALL PRIVILEGES ON *.* TO 'netadmin'@'%';
use lamplaravel;
FLUSH PRIVILEGES;
exit
systemctl restart mysql
apt update -y
apt upgrade -y

sudo nano .env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=lamplaravel;
DB_USERNAME=netadmin
DB_PASSWORD=L@MpPre786

sudo apt update 
sudo apt install phpmyadmin php-mbstring

sudo nano /etc/apache2/apache2.conf
# Then add the following line to the end of the file:
Include /etc/phpmyadmin/apache.conf
# save ctrl+x then y and hit enter. Then restart apache:

sudo service apache2 restart 
# visit: http://localhost/phpmyadmin/
user: netadmin
pass: L@Rave;786

sudo php artisan config:cache
sudo php artisan make:auth
sudo php artisan migrate

nano /etc/apache2/sites-available/000-default.conf
# remove all text or comment text
<VirtualHost *:80>
    ServerName localhost

    ServerAdmin admin@hakase-labs.io
    DocumentRoot /var/www/html/laravel/public

    <Directory /var/www/html/laravel>
    Options Indexes MultiViews
    AllowOverride None
    Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

sudo service mysql restart 
sudo service apache2 restart 
sudo service apache2 reload



##############################Session Outputs Videos####################################

sudo -i
apt update && apt upgrade
lsb_release -a
whoami
service apache2 restart
service apache2 reload
service apache2 status
apachectl configtest
service mariadb restart 
service mariadb status 
php --version
mysql --version

visit: localhost and show Laravel is working on your localhost


