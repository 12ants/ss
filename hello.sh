

##########################
## OK? p-{qqok} ##########
##########################
clear; echo; echo; echo; echo; read -ep "      - ARE YOU OK?:" -i " ...no "  qqok; echo; echo; if [[ ${qqok} = "...no" ]]; then echo "...oh no";else echo "k"; fi;
###########################
###########################




##########################
## LAPTOPLID-FIX #########
##########################
read -ep "laptop-lid-fix?: " -i "Yes" qqltl; if [[ ${qqltl} = "Yes" ]]; then sudo -s ; echo 'HandleLidSwitch=ignore' >> /etc/systemd/logind.conf; else echo "k"; fi; 
###########################
###########################
