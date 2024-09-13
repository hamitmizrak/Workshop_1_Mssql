######################################################################
# Image Create
# docker image build -t customize_nginx .

# Container Create
# docker container run -d -p 1111:80 --rm --name  customize_nginx

# Daocker Registery Create
# Step-1: Dockerfile ile image oluştur => docker image build -t customize_nginx .
# Step-2: DockerHub git public veya private repository oluştur.
# Step-3: docker ps
# Step-4: image Name: customize_nginx
# Step-5: docker image tag imageName javahamitmizrak/oluşturulmuşRepositoryAdi
# Step-5: docker image tag customize_nginx javahamitmizrak/oluşturulmuşRepositoryAdi
# Step-6: docker push javahamitmizrak/oluşturulmuşRepositoryAdi

# ÖNEMLİ NOT: eğer windows üzerinden çalıştırıyorsanız sudo tanımayacaktır.
# ÖNEMLİ NOT: nginx eğer browserda istediğiniz sonuç çıkmazsa browserin cache belleğini temizleyiniz. yoksa nginx'in kendi sayfasını görürüsünüz.

######################################################################
# Multi-Stage Build
# @@@@@@@@@@@

# Node.js tabanlı bir imaj kullanmalıyız.
# Dikkatttt : Örneğin node:14 kullanma bu proje için hata alırsın


# Microsoft SQL Server 2022
FROM mcr.microsoft.com/mssql/server:2022-latest

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Maintainer
LABEL maintainer="hamitmizrak@gmail.com"

# Ortam Değişkenleri
ENV AUTHOR="Hamit Mızrak"
ENV APP_NAME="Offline Node.js"
ENV TECH="Docker"
ENV VERSION="v1.0.0"
ENV YEAR="2024"
ENV NODE_HOST=localhost
ENV NODE_PORT=1111

# Ortam Değişkeni Çalıştırması
RUN echo "Yazar: $AUTHOR"
RUN echo "Uygulama Adı: $APP_NAME Yılı: $YEAR"
RUN echo "Teknolojiler: $TECH"
RUN echo "Version: $VERSION"
RUN echo "Version: $VERSION"
RUN echo "URL: http//$NODE_HOST:$NODE_PORT"

# SQL Server Başlatmak için
# SQL Server Sözleşmeyi kabul ediyor.
ENV ACCEPT_EULA=Y

# Şifre
ENV SA_PASSWORD=123456789

#ENV MSSQL_PID=Express
ENV MSSQL_PID=Developer

# SQL Server BAşlatıldığında öncelikle `initialize-mssql.sql` bu database scripttini kopyalıyoruz.
COPY ./init-db.sql /usr/src/app/init-db.sql

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# HEALTHCHECK         ==> Bu image dosyasının sağlık durumu (Container Çalışıyor mu)
# --interval=30s      ==> 30 saniyede bir sağlık kontrolü yapılsın
# --timeout=10s       ==>  10 saniyede Sağlık kontrolünü tamamlasın
# --start-periyod=5s  ==> Konteynar başladığında sağlık kontrolünün başlamasın için 5 saniye bekle
# --retries=3         ==>  Sağlık kontrolünü eğer ilk denemede başarısız olursa 3 defa daha  çalışsın.
# Eğer bu 3s komutu belirtilenin dışına çıkarsa Docker sağlıksız olarak işaretlenir
# CMD wget --quiet --tries=1 --spider http://localhost : wget ile localhost istek atmak
HEALTHCHECK --interval=30s --timeout=10s \
    --start-period=5s --retries=3 \
    CMD curl -f http://${NGINX_HOST}:${NGINX_PORT}/ || exit 1
#CMD wget --quiet --tries=1  --spider http://localhost:4444 || exit 1


# SQL Server başlattıktan 30 saniye zaman sonra init-db.sql çalıştır.
CMD /bin/bash -c "/opt/mssql/bin/sqlservr & sleep 30 && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -i /usr/src/app/init-db.sql"

##########################################################################
# docker build -t imageName .  => (Defaultta: Dockerfile yazılmışsa)
# docker build -f CustomiseDockerFile -t imageName . => (Dockerfile yerine CustomiseDockerFile yazılmışsa)

# docker ps
# docker ps -a
# docker container ls
# docker container ls -a
# docker image ls
# docker container run -d -p 1111:80 --rm --name nginx_container customize_nginx
# docker container prune
# docker container exec -it containerID bash
# docker container exec -it containerNAME bash