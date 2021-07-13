#download tomcat on command line
https://linuxhint.com/install_apache_tomcat_server_ubuntu/

then type http://127.0.0.1:8080/ on firefox to check if it is working
Download intelij idea ultimate


http://127.0.0.1:8080/

# Use journalctl to see the logs to find catalina home and base directories
```
journalctl -u tomcat9 -e
```

-----
Jul 13 07:36:05 daffodil tomcat9[8602]: Command line argument: -Dcatalina.base=/var/lib/tomcat9
Jul 13 07:36:05 daffodil tomcat9[8602]: Command line argument: -Dcatalina.home=/usr/share/tomcat9

-----

to change the permission of the file read write permission I mean

sudo chmod -R 755 /var/lib/tomcat9/conf
