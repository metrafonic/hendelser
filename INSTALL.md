# Install oracle dep
mkdir -p /opt/oracle

sudo unzip dep/instantclient-sdk-linux.x64-12.1.0.2.0.zip -d /opt/oracle/
sudo unzip dep/instantclient-basic-linux.x64-12.1.0.2.0.zip -d /opt/oracle/

sudo mv instantclient_12_1 instantclient
cd /opt/oracle/instantclient
ln -s libclntsh.so.12.1 libclntsh.so
export LD_LIBRARY_PATH=/opt/oracle/instantclient:$LD_LIBRARY_PATH; npm install -g oracledb

