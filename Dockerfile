# Use a imagem oficial do MinIO como base
FROM quay.io/minio/minio

# Expõe as portas 9000 e 9090 do contêiner
EXPOSE 9000 9090

# Copia o diretório local "./minio/data" para "/data" no contêiner
COPY ./minio/data /data

# Define as variáveis de ambiente para o usuário e senha do MinIO
ENV MINIO_ROOT_USER=luuhsantanafs
ENV MINIO_ROOT_PASSWORD=Lucas102030

# Define o comando que será executado quando o contêiner for iniciado
CMD ["server", "/data", "--console-address", ":9090"]