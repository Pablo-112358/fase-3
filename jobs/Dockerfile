# Imagen base
FROM debian:latest

# Instalar dependencias
RUN apt-get update && apt-get install -y python3

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos necesarios al contenedor
COPY app.py .

# Instalar dependencias de Python
RUN apt-get install -y python3-pip && pip3 install --no-cache-dir flask

# Exponer puerto
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python3", "app.py"]
