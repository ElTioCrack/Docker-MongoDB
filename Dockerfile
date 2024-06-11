# Usa una imagen base ligera ya que solo necesitas ejecutar docker-compose
FROM docker:latest

# Instala docker-compose
RUN apk add --no-cache py-pip && pip install docker-compose

# Copia todo el contenido del repositorio a /app
COPY . /app

# Establece el directorio de trabajo a /app
WORKDIR /app

# Comando para iniciar docker-compose
CMD ["docker-compose", "up"]
