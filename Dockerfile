#Utilizo la imagen base de Tomcat mas actual
FROM tomcat:latest

# Copio mi archivo de configuración personalizado al contenedor
#COPY server.xml $CATALINA_HOME/conf/

# se exponen el puerto 8080 para permitir las conexiones entrantes a través de HTTP
EXPOSE 8080

#MAINTAINER ardy.dedase@gmail.com

ADD sample.war /usr/local/tomcat/webapps/

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]

