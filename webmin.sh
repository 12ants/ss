



###################################
#### WEBMIN--Install ##############
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Install WEBMIN? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#### DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK ";sleep 2;echo ${dim};echo;echo;echo;echo;
apt install -qq -y perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl tar;
mkdir -p /tmp/webmin;
cd /tmp/webmin;
echo "${re}" ${purple};
wget https://download.webmin.com/devel/tarballs/webmin-current.tar.gz; echo "${blue}"
tar -xf webmin-current.tar.gz --strip-components=1; 
fi
echo;echo ${up1}${up1};
####
#### WEBMIN-setup -- prompt
read -p ${cyan}"  ----------${re}  Run ${cyan}WEBMIN${re} Setup? [Y/n]   ${left2}" yn;
if [ "$yn" != "${yn#[Nn]}" ];
then 
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK -- recommended cloudflare-port: 2087";sleep 2;

./setup.sh /usr/local/webmin;
##### ALSO SAY DONE
echo;echo;echo;echo;
echo "${re}${green}${bold}     DONE ${re}";echo;echo;echo;echo;sleep 2;
fi
#### DONE #########################
###################################


# --------------------------------------------------------------------------------------------


###################################
#### CLOUD-PANEL--Install #########
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Install CLOUD-PANEL? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#### DONT #########################
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO ###########################
echo "${re} OK ";sleep 2;echo ${dim};echo;echo;echo;echo;
apt install -y curl sudo; curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo DB_ENGINE=MARIADB_10.9 bash
echo;echo;echo;echo;
echo "${re}${green}${bold}     DONE ${re}";echo;echo;echo;echo;sleep 2;
fi ################################
#### DONE #########################
###################################
















# -------- install WEBMIN ----------------------
cd /home;
apt install -qq -y perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl unzip shared-mime-info tar libio-pty-perl libauthen-pam-perl libnet-ssleay-perl unzip ;
wget https://www.webmin.com/download/deb/webmin-current.deb ;
dpkg --install webmin-current.deb  ;
# sleep 1;echo;echo "
# OK        ==> https://localhost:10000
# ";
# ----------------------------------------------



# Add repository
sudo nano /etc/apt/sources.list

# Add these lines at last
deb http://download.webmin.com/download/repository sarge contrib
deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib

# Save and exit the editor





# Navigate to your preferred directory
cd ~

# Download the GPG Key
wget http://www.webmin.com/jcameron-key.asc

# Add the Key
sudo apt-key add jcameron-key.asc

# Output
OK

# Refresh the packages index
sudo apt-get update

# Install Webmin
sudo apt-get install webmin -y