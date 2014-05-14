#!/usr/bin/env sh

# Start MySQL
/usr/bin/mysqld_safe > /dev/null 2>&1 &


if [ ! -f /var/lib/mysql/ibdata1 ]; then
    mysql_install_db
fi


# Shutdown MySQL
mysqladmin -uroot -proot shutdown
