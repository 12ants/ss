


###################################
####-CLOUDPANEL-INSTALL-###########
###################################
####
####

apt -y install curl wget sudo ; curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo DB_ENGINE=MARIADB_10.9 bash

####
##### / ###########################
###################################
###################################
####-CLOUDPANEL-BACKUPS-###########
###################################

rclone config;
mkdir /backups; chmod 775 /backups

###################################
#### (may need reboot) ##
####



