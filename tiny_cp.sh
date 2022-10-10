



## -- TINY-CONTROL-PANEL (50MB) -- ##
-- -- -- -- -- --
sudo apt install gnupg ca-certificates
sudo apt-key adv --fetch-keys http://repos.tinycp.com/ubuntu/conf/gpg.key
sudo echo "deb http://repos.tinycp.com/ubuntu all main" | sudo tee /etc/apt/sources.list.d/tinycp.list
sudo apt-get update
-- -- -- -- -- --
sudo apt-get install tinycp
## -- or    -- --
TINYCP_USER="admin" TINYCP_PASS="secretpass" TINYCP_PORT="55555" apt-get install tinycp
-- -- -- -- -- --
## -- -- -- -- ##