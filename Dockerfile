FROM postgis/postgis
RUN useradd openzaak
COPY ./openzaak-config.sql /tmp/openzaak-config.sql
