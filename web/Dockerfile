# --------------- DÉBUT COUCHE OS -------------------
FROM nginx
# --------------- FIN COUCHE OS ---------------------
# MÉTADONNÉES DE L'IMAGE
LABEL version="1.0" maintainer="OULAI Kevin koulai001@iutbayonne.univ-pau.fr"
# VARIABLES TEMPORAIRES
ARG APT_FLAGS="-q -y"
ARG DOCUMENTROOT="/usr/share/nginx/html"
# --------------- DÉBUT COUCHE PHP ------------------
RUN apt-get update -y && \
    apt-get install ${APT_FLAGS} \
    php-mysql \
    php-fpm && \
    rm -f ${DOCUMENTROOT}/index.html && \
    apt-get clean -y

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY start.sh /usr/app/start.sh
RUN chmod 777 /usr/app/start.sh

EXPOSE 80
EXPOSE 81

# RÉPERTOIRE DE TRAVAIL
WORKDIR "/usr/app"
# DÉMARRAGE DES SERVICES LORS DE L'EXÉCUTION DE L'IMAGE
CMD ["./start.sh"]