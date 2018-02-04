##############################################
## Dockerfile para el build del archivo apk ##
## Basado en Ubuntu 14.04                   ##
##############################################

# Seteo la imagen base (Ubuntu oficial, versión 14.04)
FROM ubuntu:14.04

# Mantiene: mart
LABEL maintainer="mart"

# Variables de entorno
ENV SDK_URL="https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip" \
    ANDROID_HOME="/opt" \
    ANDROID_VERSION=26 \
    ANDROID_BUILD_TOOLS_VERSION=26.0.2

# Instalar Java SDK
RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
RUN echo "EL FIN" 

# TODO: Usar si hace falta
# Copio los directorios del repositorio
# COPY ./ /home

# TODO: Cambiar al directorio adecuado
# Defino el directorio para correr
# WORKDIR /home

# Defino el comando estándar
CMD ["bash"]

