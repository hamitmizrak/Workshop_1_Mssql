
# Microsoft SQL Server 2022
FROM mcr.microsoft.com/mssql/server:2022-latest

#
LABEL maintainer="hamitmizrak@gmail.com"

# SQL Server Başlatmak için
# SQL Server Sözleşmeyi kabul ediyor.
ENV ACCEPT_EULA=Y

# Şifre
ENV SA_PASSWORD=123456789

#ENV MSSQL_PID=Express
ENV MSSQL_PID=Developer

# SQL Server BAşlatıldığında öncelikle `initialize-mssql.sql` bu database scripttini kopyalıyoruz.
COPY ./init-db.sql /usr/src/app/init-db.sql

# SQL Server başlattıktan 30 saniye zaman sonra init-db.sql çalıştır.
CMD /bin/bash -c "/opt/mssql/bin/sqlservr & sleep 30 && /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -i /usr/src/app/init-db.sql"