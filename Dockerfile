FROM ubuntu:22.04

RUN apt update
RUN apt -y upgrade
RUN apt -y install curl

# Instalar OpenJDK 11
RUN apt -y install openjdk-11-jdk

# Instalar Tomcat 10
RUN useradd -m -U -d /opt/tomcat -s /bin/false tomcat
RUN curl -L 'https://downloads.apache.org/tomcat/tomcat-10/v10.1.10/bin/apache-tomcat-10.1.10-deployer.tar.gz' | tar -xz -C /opt/tomcat
RUN mv /opt/tomcat/apache-tomcat-10.1.10/ /opt/tomcat/tomcat10
COPY tomcat.service /etc/systemd/system/

ENV CATALINA_HOME /opt/tomcat/tomcat10
ENV PATH $CATALINA_HOME/bin:$PATH

# Exponer puertos
EXPOSE 8080

# Definir comando para iniciar la aplicación
CMD ["catalina.sh", "run"]
