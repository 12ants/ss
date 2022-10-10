


mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'zxasqw122!';



mysql -u root -p
mysql> CREATE DATABASE rainloop;
mysql> CREATE USER 'rainuser'@'localhost' IDENTIFIED BY 'zxasqw122';
mysql> GRANT ALL ON rainloop.* TO 'rainuser'@'localhost';
mysql> FLUSH PRIVILEGES;





mkdir /var/www/html/rainloop -p
wget http://www.rainloop.net/repository/webmail/rainloop-community-latest.zip
unzip rainloop-community-latest.zip -d /var/www/html/rainloop
chown -R nginx:nginx /var/www/html/rainloop
find /var/www/html/rainloop -type d -exec chmod 755 {} \;
find /var/www/html/rainloop -type f -exec chmod 644 {} \;




sudo apt-get update && sudo apt-get install curl apt-transport-https gnupg; curl -s https://packages.mailpile.is/deb/key.asc | sudo apt-key add -; echo "deb https://packages.mailpile.is/deb release main" | sudo tee /etc/apt/sources.list.d/000-mailpile.list; apt-get update && sudo apt-get install mailpile; apt-get update && sudo apt-get install mailpile-apache2; 