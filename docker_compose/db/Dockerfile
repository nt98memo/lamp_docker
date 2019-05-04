FROM mysql:8.0.15
ENV MYSQL_ROOT_PASSWORD=password

RUN apt-get update

RUN apt-get install -y vim

#RUN sed -e 's/\[mysqld\]/\[mysqld\]\ndefault_authentication_plugin=mysql_native_password/' -i /etc/mysql/my.cnf
RUN mkdir /var/lib/mysql-files
COPY my.cnf /etc/mysql/
RUN chmod 644 /etc/mysql/my.cnf
#CMD ["--innodb-flush-method=O_DSYNC", "--innodb-use-native-aio=0", "--log_bin=ON"]
CMD ["--innodb-use-native-aio=0"]
