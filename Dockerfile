#Utilizo la imagen base de Tomcat mas actual
FROM tomcat:latest

# se exponen el puerto 8080 para permitir las conexiones entrantes a través de HTTP
EXPOSE 8080


ADD sample.war /usr/local/tomcat/webapps/

# Comando para iniciar Tomcat
CMD ["catalina.sh", "run"]

