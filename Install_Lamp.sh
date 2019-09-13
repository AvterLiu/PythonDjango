#根据提示，输入Y安装即可成功安装
yum install httpd -y
#启动apache
systemctl start httpd.service 
#停止apache
systemctl stop httpd.service 
#重启apache
systemctl restart httpd.service 
#设置apache开机启动
systemctl enable httpd.service
#询问是否要安装，输入Y即可自动安装,直到安装完成
yum install mariadb mariadb-server -y
#启动MariaDB
systemctl start mariadb.service 
#停止MariaDB
systemctl stop mariadb.service 
#重启MariaDB
systemctl restart mariadb.service 
#设置开机启动
systemctl enable mariadb.service
yum install php php-mysql php-gd libjpeg* php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash php-devel -y
#初始化MySQL
mysql_secure_installation
#重启MariaDB
systemctl restart mariadb.service 
#重启apache
systemctl restart httpd.service
