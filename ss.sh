



#/bin/bash
clear;echo;echo
if [ "$(id -u)" != "0" ]; then  
echo;echo;echo "  This script must be run as root..." 1>&2  ;echo;echo
exit 1
fi  
mkdir -m 775 -p /home/tempstuff
cd /home/tempstuff;
g="tput setaf 2"
red="tput setaf 1"
d="tput sgr0"
sleep 1; echo "      

             -- Welcome to the shady installer!"; sleep 4;
tput blink setaf 1 ; printf "

       Commencing self-destruct sequence... " ; sleep 4; tput rev; printf " 
                                                                
             Self-destruct sequence failed...                   
                                                                " ; echo ;
sleep 2; echo ;
${g} ; printf " System strong " ;
sleep 4; echo ;
${d}
clear;
BLA_metro=( 0.4  ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉ ▎▎▎▎▎▎▋▋▋▋▋▉▉▎▎▎▎▎▋▋▋▋▋▉▉▎▎▎▎▎▋▋▋▋▋ ▉▉▉▉▉▉▋▋▋▉▋ ▉▉▉▉▉▉▋▋▋▋▉ ▎▎▋▋▋▋▋▋▋▎▎▎▋▋▉ ▉▉▎▎▎▎▎▋▋▋▋▋▉▎▎▎ ▎▎▉▉▎▎▎▋▋▋▋▋▋▉ ▉▉▎▎▎▎▎▋▋▋▋▋▋▉▎▎▎▋▉ ▉▉▉▉▉▉▉▉▋▋▋▉ ▉▉▎▎▎▎▎▋▋▋▉ ▉▉▉▉▉▉▉▉▋▉ ▎▎▎▎▎▋▋▋▉ ▎▎▎▉▉▎▋▋▉ ▎▎▎▎▎▋▋▋▋▋▉ ▉▉▉▉▉▉▎▎▎▎▎▋▋▋▋▋▉ ▉▉▉▉▉▉▎▎▎▎▎▋▋▋▋▋▎▎▎▎▎▋▋▋▋▋▋▉▉ ▉▉▉▉▉▉▎▎▎▎▎▋▋▋▋▋▉ ▉▉▉▉▉▉▎▎▎▎▎▋▋▋▋▋▉▎▎▎▎▎▋▋▋▋▋▋▋▉ ▎▎▎▎▎▋▋▋▋▋▋▋▋▉ ▉▉▉▉▉▉▎▎▎▎▎▋▋▋▋▋▋▋▉ ▎▎▎▎▎▋▋▋▋▋▋▉ ▉▉▉▉▉▉▎▎▎▎▎▋▋▋▋▋▉ ▉▉▉▉▉▉▎▎▎▎▎▋▋▋▉ ) 
declare -a BLA_active_loading_animation 
BLA::play_loading_animation_loop() {
  while true ; do
    for frame in "${BLA_active_loading_animation[@]}" ; do
      $g ; tput civis ;
      printf "\r%s ]"; printf "\r%s" "${frame}" ; $d; printf "\r%s" "    Loading: [ "; tput cuf 24 ; printf " ]"; 
      sleep "${BLA_loading_animation_frame_interval}"
      $d
    done
  done
}

BLA::start_loading_animation() {
  BLA_active_loading_animation=( "${@}" )
  # Extract the delay between each frame from array BLA_active_loading_animation
  BLA_loading_animation_frame_interval="${BLA_active_loading_animation[0]}"
  unset "BLA_active_loading_animation[0]"
  tput civis # Hide the terminal cursor
  BLA::play_loading_animation_loop & 2> /dev/null
clear
echo -e "\v Startub script initializing... \v"

  BLA_loading_animation_pid="${!}"
}

BLA::stop_loading_animation() {
  kill "${BLA_loading_animation_pid}" &> /dev/null
  printf "\n"
  tput cnorm # Restore the terminal cursor
}
## init BLA
trap BLA::stop_loading_animation SIGINT&> /dev/null

echo -e " \v\v "
BLA::start_loading_animation "${BLA_metro[@]}"
sudo apt update -y &> /dev/null ; apt install -qq -y curl tar unzip &> /dev/null ;
echo -e "\v\t\v ${green} done! \v\v"
BLA::stop_loading_animation&> /dev/null
sleep 1;










apt install -qq -y tar unzip ;

export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) grayb=$(tput setab 7) \
red=$(tput setaf 1)  green=$(tput setaf 2)  yellow=$(tput setaf 3)  blue=$(tput setaf 4)  purple=$(tput setaf 5)  cyan=$(tput setaf 6)  gray=$(tput setaf 7) \
white=$(tput setaf 7 bold)  pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) \
left2=$(tput cub 2) up1=$(tput cuu1)
c75="  ---------------------------------------------------------------------------"

# 
#    ${red}    ${green}    ${yellow}     ${blue}     ${purple}     ${cyan}     ${gray}     ${re}     ${dim}
#




###################################
####-UBUNTU-AUTOINSTALLER-#########
###################################
####
clear
echo;echo ${re};
echo ${blue}${dim}"    ***********************************************************************" ${re}${bold}
echo ${cyan}${dim}"    ******${re}${bold} Install some useful commands and tweaks for ubuntu / bash ${cyan}${dim}******" ${re}
echo ${blue}${dim}"    ***********************************************************************"
echo ${re}
#### DONE #########################
###################################


###################################
#### Hello ########################
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Say hello? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK ";sleep 2;echo ${dim} "${dim}" ${noso};echo;echo;echo;echo;
echo "    hello? you should be root (obviously)..." ;sleep 1;
echo "${re}${green}${bold}     ${re}";echo;echo;echo;echo;sleep 2;
fi
#### DONE #########################
###################################



###################################
#### DISABLE ROOT PASSWORD ########
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Disable ROOT password and add autocomplete? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#### DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK ";sleep 2;echo ${dim} "${dim}" ${noso};echo;echo;echo;echo;
cp  /etc/sudoers.d/10-installer  /etc/sudoers.d/10-installer-backup ;
echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer ;
#### ROOT AUTOCOMPLETE
echo "
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
" >> /root/.bashrc
echo "${re}${green}${bold}     DONE ${re}";echo;echo;echo;echo;sleep 2;
fi
#### DONE #########################
###################################



###################################
#### Change username color ########
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Change username color? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK ";sleep 1;echo ${dim} "${dim}" ${noso};echo;echo;echo;echo;
select lng in BLUE PURPLE GREEN DONE
do
case $lng in
"BLUE")
echo "$lng - it is";
echo "PS1='\[\e[34m\]\u\[\e[36m\]@\[\e[2m\]\h\[\e[34m\]\[\e[96m\]\w:\[\e[m\]'" >> ~/.bash_aliases;;
"PURPLE")
echo "$lng - it is";
echo "PS1='\[\e[35m\]\u\[\e[37m\]@\[\e[2m\]\h\[\e[35m\]\[\e[56m\]\w:\[\e[m\]'" >> ~/.bash_aliases;;
"GREEN")
echo "$lng - it is";
echo "PS1='\[\e[34m\]\u\[\e[36m\]@\[\e[2m\]\h\[\e[34m\]\[\e[96m\]\w:\[\e[m\]'" >> ~/.bash_aliases;;
"DONE")
echo $rev "DONE"
break;;
*)
echo "Ooops";;
esac
done
#### BLUE ROOT #### echo "PS1='\[\e[34m\]\##[\e[36m\]@\[\e[2m\]\h\[\e[34m\]\[\e[96m\]\w:\[\e[m\]'" >> /home/${SUDO_USER}/.bash_aliases
echo "${re}${green}${bold}     DONE ${re}";echo;echo " (needs re:login) ";echo;echo;sleep 2;
fi
#### DONE #########################
###################################



###################################
#### SUPER-USER ########################
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} BECOME SUPER-USER? [Y/n]   ${left2}" yn;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#### NO
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK ";sleep 2;echo ${dim} "${dim}" ${noso};echo;echo;echo;echo;
read -ep ${cyan}"  ----------${re} SUPER-USER-ALIAS: "${cyan}  -i $USER newsudo;
if [ "$newsudo" != "$SUDO_USER" ];
then adduser $newsudo;
else
mkdir /home/$newsudo > out.log 2>/dev/null;
sed -i "s/$newsudo:/ ##$newsudo:/" /etc/passwd
echo "$newsudo:x:0:0::/home/$newsudo:/bin/bash" >> /etc/passwd
fi
echo "${re}${green}${bold}   k  ${re}";echo;echo;echo;echo;sleep 2;
fi
#### DONE






###################################
#### shellinabox ########################
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Install shellinabox? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
apt install shellinabox
echo "${re} OK ";sleep 2;echo ${dim} "${dim}" ${noso};echo;echo;echo;echo;
echo "${re}${green}${bold}     ${re}";echo;echo;echo;echo;sleep 2;
fi
#### DONE



###################################
#### COLUD-PANEL ########################
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Install CLOUD-PANEL? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo DB_ENGINE=MARIADB_10.9 bash
echo "${re} OK ";sleep 2;echo ${dim} "${dim}" ${noso};echo;echo;echo;echo;
echo "${re}${green}${bold}     ${re}";echo;echo;echo;echo;sleep 2;
fi
#### DONE


###################################
#### INSTALL CUSTOM GRUB ##########
###################################
####
echo ${cyan};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Install custom grub? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#### DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
chmod 775 /boot -R;
cd /boot;
wget aa.164.one/grub/blur.tar.gz;
tar -xf blur.tar.gz;
cp "blur/background.png" "/usr/share/grub/themes/blur/background.png";
cp "blur/" "/boot/grub/themes/blur/" -r;
cp "blur/" "/boot/grub/themes/default/" -r;
mv /usr/share/grub/default/grub /usr/share/grub/default/grub-old;
echo "
GRUB_DEFAULT="saved"
GRUB_TIMEOUT_STYLE="countdown"
GRUB_TIMEOUT="12"
GRUB_DISTRIBUTOR="`lsb_release -i -s 2> /dev/null || echo Debian`"
GRUB_CMDLINE_LINUX_DEFAULT=""
GRUB_CMDLINE_LINUX=""
GRUB_INIT_TUNE="480 440 1"
GRUB_DISABLE_OS_PROBER="false"
GRUB_THEME=/boot/tardigrade/theme.txt
GRUB_SAVEDEFAULT="true"
GRUB_BADRAM="0x01234567,0xfefefefe,0x89abcdef,0xefefefef"
GRUB_GFXMODE="1024x768"
GRUB_DISABLE_RECOVERY="false"
GRUB_THEME="/boot/grub/themes/blur/theme.txt"
GRUB_SAVEDEFAULT="true"
export GRUB_MENU_PICTURE="/usr/share/grub/themes/blur/background.png"
" > /usr/share/grub/default/grub;
update-grub;
grub-mkconfig;


# CREATE NEW GRUB-FILE #
echo ' 

GRUB_DEFAULT=saved
GRUB_TIMEOUT_STYLE=countdown
GRUB_TIMEOUT=20
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT=""
GRUB_CMDLINE_LINUX=""
GRUB_DISABLE_OS_PROBER=false
GRUB_CMDLINE_LINUX=quiet
GRUB_THEME="/boot/grub/themes/blur/theme.txt"

' > /etc/default/grub

grub-mkconfig

fi
echo next
#### DONE #########################
###################################









###################################
#### WEBMIN-Install ###############
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
read -p ${cyan}"  ----------${re}  Run ${cyan}WEBMIN${re} Setup? [Y/n]   ${left2}" yn;
if [ "$yn" != "${yn#[Nn]}" ];
then 
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK ";sleep 2;
./setup.sh /usr/local/webmin;
##### ALSO SAY DONE
echo;echo;echo;echo;
echo "${re}${green}${bold}     DONE ${re}";echo;echo;echo;echo;sleep 2;
fi
#### DONE #########################
###################################







###################################
#### Install or update the web-server? [Y/n] 
###################################
####
echo ${dim}${green};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Install or update AMP-web-server? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK "; echo;echo;
echo "${dim} Hold on ${bold}updating... ${re}"
apt update -qq > out.log 2>/dev/null;
echo "${dim} Hold on ${bold}installing... ${re}"
echo ${dim} "${dim}" ${noso};echo;echo;echo;echo;
#### UPDATES SILENTLY ##################
apt install -qq -y apache2 ghostscript libapache2-mod-php curl lynx mariadb-server tar ;
apt install -qq -y php php-gd php-memcache php-soap php-tidy php-cli php-bcmath php-curl
apt install -qq -y php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip ;
clear
echo;echo "${bold}    AMP-web-server installed.";
echo;echo;echo;echo;

#################################################################################
########-SETUP-WORDPRESS-########################################################
#################################################################################
####
echo ${dim}${green};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Setup Wordpress-site? [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
echo "${re} OK "; echo;echo;
#################################################################################
########-SET-URL-################################################################
#################################################################################
####
read -p "    ${pink}--${normal} ${blue}Base url: like: -- ${normal}myaddress.net -- ${blue}(leave as is if unsure):${white} " userurl ;
[ -z "${userurl}" ] && userurl="wordpress$(date +%d%m%y)";
echo "${userurl}";
########
read -p "    ${yellow}--${normal} ${blue}New directory: like: ${pink}--${normal} ${white}new-wp-site ${pink}--${normal} ${blue}(leave empty if unsure):${white} " userdir
install_dir="/var/www/${userurl}${userdir}"
read -p "    ${red}--${normal}  Change site directory? [y/N] " yn;
if [ "$yn" != "${yn#[Yy]}" ];
then echo "    ${pink}--${normal}  Yes - OK";
read -p "    ${blue}--${normal}  New directory? (default: $install_dir): " install_dir
install_dir="${install_dir}/${userurl}${userdir}"
echo "    ${pink}--${normal}  OK"
sleep 0.1; echo
else
echo;echo "    ${white}--${normal}  NO - OK";echo;
fi
#################################################################################
####-CREATE-WP-INSTALL-FOLDER-###################################################
#################################################################################
####
mv -n ${install_dir} ${install_dir}_backup 2>/dev/null; mkdir -p -m 0775 ${install_dir}; cd ${install_dir}; chown www-data: ./ -R;
#################################################################################
####-APACHE-SITE-ENABLE-#########################################################
#################################################################################
####
echo "
<VirtualHost *:80>
DocumentRoot ${install_dir}
ServerName ${userurl}
<Directory ${install_dir}>
Options FollowSymLinks
AllowOverride all
DirectoryIndex index.php index.htm
Require all granted
</Directory>
<Directory ${install_dir}/wp-content>
AllowOverride all
Options FollowSymLinks
Require all granted
</Directory>
</VirtualHost>

php_value memory_limit 230M
php_value post_max_size 2222M
php_value upload_max_filesize 2222M

<VirtualHost *:443>
ServerName ${userurl}
ServerAlias www.${userurl}
ServerAdmin hello@o${userurl}
DocumentRoot ${install_dir}
<Directory ${install_dir}>
Options FollowSymLinks
AllowOverride all
DirectoryIndex index.php index.htm
Require all granted
</Directory>
<Directory /var/www/${userurl}/wp-content>
AllowOverride all
Options FollowSymLinks
Require all granted
</Directory>
ErrorLog /${userurl}-error.log
CustomLog /${userurl}-access.log combined
SSLEngine On
SSLCertificateFile  /etc/webmin/miniserv.pem
</VirtualHost>

php_value memory_limit 260M
php_value post_max_size 2222M
php_value upload_max_filesize 2222M
" > /etc/apache2/sites-available/${userurl}.conf;

Install admin area?
mkdir -p ${install_dir}/backend
wget -O ${install_dir}/backend/index.htm https://github.com/symbolen/startub/blob/8c0bb24a0c58efe6a2ace5eaf7fd07cd3e9edead/be.htm



echo 
a2ensite ${userurl}
a2dissite 000-default
a2enmod rewrite 
a2enmod headers
a2enmod ssl
service apache2 restart;
service mariadb restart;
db_name="wp`date +%N`";
sleep 0.2;echo ;
db_user="`date +%B%N`";
sleep 0.2;echo ;
db_password=`date|md5sum|cut -c 1-14`;
echo "
    ${green} ###################################### ${re}
    ${blue} db_name:$gray $db_name            
    ${blue} db_user:$gray $db_user            
    ${blue} db_password:$gray $db_password    
    ${green} ###################################### ${re}";echo;echo;

###########################################################################
####-MySQL-DATABASING-#####################################################
###########################################################################
####
mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE $db_name;
CREATE USER '$db_user'@'localhost' IDENTIFIED BY '$db_password';
GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'localhost';
use $db_name;
select * from wp_options where option_name = 'template' or option_name = 'stylesheet' or option_name = 'current_theme';
update wp_options set option_value = 'blank1' where option_name = 'template' OR option_name = 'stylesheet' OR option_name = 'current_theme';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

###########################################################################
####-DOWNLOAD-WP-##########################################################
###########################################################################
####
sleep 0.1;echo "    ${pink}--${normal} downloading-wordpress -----"
cd ${install_dir}
sleep 1;echo " ${dim}";
wget "http://wordpress.org/latest.tar.gz";
tar -xzf latest.tar.gz --overwrite --strip-components=1;

###########################################################################
####-CONFIGURE-wp-conf.php-################################################
###########################################################################
####
chown www-data: ./ -R;chmod 775 ./ -R
echo "$green             ###################################################"
echo "$green             ####${normal} Creating WP-config and set DB credentials${green} #### "
mv ${install_dir}/wp-config-sample.php ${install_dir}/wp-config.php ; sleep 0.2 ;
sed -i "s/database_name_here/$db_name/g" ${install_dir}/wp-config.php ; sleep 0.2 ;
sed -i "s/username_here/$db_user/g" ${install_dir}/wp-config.php ; sleep 0.2 ;
sed -i "s/password_here/$db_password/g" ${install_dir}/wp-config.php ; sleep 0.2 ;
echo "$green             ###################################################${normal}"
mv -n ${install_dir}/index.html ${install_dir}/index.html_backup 2>/dev/null;


###########################################################################
#####-GET-BLANK1-THEME-########################################################
###########################################################################
####
cd ${install_dir}/wp-content/themes
wget -O blank1.zip https://github.com/symbolen/startub/raw/main/blank2.zip
unzip -q blank1.zip


###########################################################################
#####-Set-WP Salts-########################################################
###########################################################################
####
grep -A50 'table_prefix' $install_dir/wp-config.php > /tmp/wp-tmp-config
sed -i '/**#@/,/$p/d' $install_dir/wp-config.php
lynx --dump -width 200 https://api.wordpress.org/secret-key/1.1/salt/ >> $install_dir/wp-config.php
cat /tmp/wp-tmp-config >> $install_dir/wp-config.php && rm /tmp/wp-tmp-config -f
chown www-data: $install_dir -R;chmod 775 $install_dir -R
echo >> /home/.$userurl-$userdir-LOGIN.txt MYSQL --- db-name-db-user:  $db_name  ------  db-pw:  $db_password  -----
echo " --------------------------------------------------------"
echo " -- Database credentials saved in: ----------------------"
echo " -- /home/.$userurl-$userdir-LOGIN.txt (Hidden folder).--"
echo " --------------------------------------------------------"
echo;echo "${re}   --  go to ${cyan}http://localhost/${re} to finish the Wordpress setup."
echo;echo;echo "                enjoy"
echo;echo;echo;echo;service apache2 restart;
echo "${re}${green}${bold}     DONE ${re}";echo;echo;

#### DONE

cd ${install_dir}
echo "Removing default WordPress plugins..."
rm -rf wp-content/plugins/akismet
rm -rf wp-content/plugins/hello.php
sleep 0.4; $green ; echo -e " \v\t done \v" ; $re;
cd ${install_dir}
echo "Fetching simple-history plugin...";
wget --quiet https://downloads.wordpress.org/plugin/simple-history.zip;
unzip -q advanced-custom-fields.zip;
mv simple-history/ wp-content/plugins/
sleep 0.4; $green ; echo -e " \v\t done \v" ; $re;

echo "Removing default WordPress themes..."
rm -rf wp-content/themes/twentytwentyone
rm -rf wp-content/themes/twentytwentytwo
sleep 0.4; $green ; echo -e " \v\t done \v" ; $re;

echo "Defining the default theme...";
echo "
/** Define the default theme */
define( 'WP_DEFAULT_THEME', 'blank1' );" >> wp-config.php
fi
fi
printf '\n'
sleep 0.4; $green ; echo -e " \v\t done \v" ; $re;






###################################
#### CREATE-BACKEND
###################################
####
echo ${dim}${green};echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";echo "${c75}";
tput cuu 4;
read -p ${cyan}"  ----------${re} Create backend area? at /backend [Y/n]   ${left2}" yn;
tput cuf 52 cuu 1;
if [ "$yn" != "${yn#[Nn]}" ];
then 
#DONT
echo "${re} nope ";echo;echo;echo;echo;sleep 2;
else
#### DO
mkdir -p ${install_dir}/backend
wget ${install_dir}/backend/index.htm https://github.com/symbolen/startub/raw/main/be.htm
fi


sleep 1
localip=`hostname -I`
sleep 1 
echo -e "\v\t all good! Now checkout:"
echo -e "\v\t $green http://${userurl}/ $re or $cyan http://${localip}/$re or http://localhost/ to finish wordpress installation! \v
or http:localhost/backend to start configuring! or ${licalip:8443} \v\v" ; $re;





echo;echo;echo;echo;
echo "                                                  enjoy!"
echo;echo;echo;echo;


####################################################################################







