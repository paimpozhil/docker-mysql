#!/usr/bin/env sh

# Start MySQL
/usr/bin/mysqld_safe > /dev/null 2>&1 &


# Shutdown MySQL
mysqladmin -uroot -proot shutdown
