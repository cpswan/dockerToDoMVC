#/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
    mysql_install_db

    /usr/bin/mysqld_safe &
    sleep 10s

    echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'pa55Word' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
    cat /tmp/todomvc.sql | mysql

    killall mysqld
    sleep 10s
fi

/usr/bin/mysqld_safe
