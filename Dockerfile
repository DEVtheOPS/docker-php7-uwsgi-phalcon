FROM digitalfiz/php7-uwsgi

WORKDIR /var/www/src

RUN curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash 

RUN apt-get install -y php7.0-phalcon && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*