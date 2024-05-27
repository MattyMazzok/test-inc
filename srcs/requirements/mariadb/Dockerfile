FROM alpine:3.15.0

RUN apk update && apk upgrade && apk add --no-cache \
        mariadb \
        mariadb-client
        
COPY conf/mariadb.sh /tmp/configure.sh

ENTRYPOINT ["sh", "/tmp/configure.sh"]

#RUN apk --no-cache add mariadb mariadb-client vim

#RUN mkdir -p /var/run/mysqld \
#	&& chown -R mysql:mysql /var/run/mysqld \
#	&& chmod 777 /var/run/mysqld

#EXPOSE 3306

#COPY ./conf/mariadb.sh /usr/local/bin/
# COPY ./conf/wordpress.sql /usr/local/bin/
#RUN chmod +x /usr/local/bin/mariadb.sh
	# && chmod +x /usr/local/bin/wordpress.sql

#ENTRYPOINT ["sh",  "/usr/local/bin/mariadb.sh" ]

# CMD ["mysqld", "--bind-address=0.0.0.0"]
