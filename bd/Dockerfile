# --------------- DÉBUT COUCHE OS -------------------
FROM debian:stable-slim
# --------------- FIN COUCHE OS ---------------------
# MÉTADONNÉES DE L'IMAGE
LABEL version="1.0" maintainer="OULAI Kevin koulai001@iutbayonne.univ-pau.fr"
# VARIABLES TEMPORAIRES
ARG APT_FLAGS="-q -y"
ARG DOCUMENTROOT="/var/www/html"
# --------------- DÉBUT COUCHE MYSQL ----------------
RUN apt-get update -y && \
apt-get install ${APT_FLAGS} mariadb-server
COPY src/schema.sql /
# --------------- FIN COUCHE MYSQL ------------------
# OUVERTURE DU PORT HTTP
EXPOSE 3306
# RÉPERTOIRE DE TRAVAIL
WORKDIR ${DOCUMENTROOT}
# DÉMARRAGE DES SERVICES LORS DE L'EXÉCUTION DE L'IMAGE
ENTRYPOINT service mariadb start && mariadb < schema.sql