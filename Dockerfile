FROM tutum/lamp

RUN apt-get update && \
  apt-get -y install curl

RUN curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony && \ 
  chmod a+x /usr/local/bin/symfony	
  
# Install composer
RUN wget -O - https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer self-update

