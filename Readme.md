# Workshop Mssql 

[GitHub](https://github.com/hamitmizrak/Workshop_1_Mssql)
---


## Mssql Server Install
```sh
Step-1 => [Mssql Server Download](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
Step2 => Developer Download
Step3 => Developer Chooise
Step4 => Next => Next 
```
---

## Mssql SSMS (SQL Server Management Studio)
```sh
Step-1 => [Mssql Server Download](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
Step2 => Next => Next
```
---


## Whoami
```sh
Terminal => whoami => 

$ whoami
Hamit-Mizrak
```
---

## Mssql SSMS Server Name
```sh
Server name: .
Server name: localhost
Server name: local

```
---


## Veritabanı: 
```sh
-- Single Commet
/*
multiple commet
*/

İlişkisel Veritabanı (RDBMS)
İlişkisel Olmayan veritabanı (NoSql)

İlişkisel Veritabanı (RDBMS): Mssql
Veritabanı: 
- Organize edilmiş ve yapılandırılmış veri koleksiyonlarına denir.
- Veriyi düzenli,erişebilirliğini sağlayan, veri tekrarını önleyecek şekilde hazırlanmalıdır. (1NF,2NF,BCND)

Veritabanı Bileşenleri 
- Veri
- Tablolar
- Satırlar(rows)
- Sutunlar(cols)
- İlişkiler
- Anahtar 
  - Birincil Anahtar(Primary Key): Her tabloda mutlaka PK vardır ve kayıt() için benzersiz(unique) olmalıdır.
  - Yabancı Anahtar(Foreign Key): Başka tabloda bulunan PK'dir.

Veritabanı Türleri
- Hiyerarşik Veritabanları (IBM Information Management System)
- Ağ Veritabanları

Veritabanı Genel Kuralları (common rules) 
- sutun adlarını hepsi küçük ve yeni kelimeler arasında alt çizgi(_) exam: category_name
- Sutun adlarını isim,sıfat olarak kullananın.

İlişkisel Veritabanları (RDBMS)
NOT: Aşağıdaki RDBMS'ler Veritabanlarını oluşturmak, yönetmek, manipüle etmek(Delete,Update,Create)
- Mysql
- Postgresql
- Mssql
- Oracle
- H2DB
- Oracle
- MariaDB

İlişkisel Olmayan Veritabanları
- MongoDB
- Cassandra
- Redis
- Neo4j

İlişkisel Veritabanları (RDBMS) Başlıca İşlevleri
- Veri tanımlama
- Veri manipulasyonu
- Veri Güvenliği
- Veri Yedekleme, Geri Yükleme
- Çoklu Kullanıcılı Erişim
```
---


## Veritabanı Avantajları
```sh
Veri tutarlılığını
Veri Paylaşımı
Veri Güvenliği
Veri Yedekleme, Geri Yükleme
Veri Entegrasyonu
```
---

## Mysql 
```sh
Geliştirici: Oracle
Platform:  Windows, Linux, MacOs
Kullanım Alanı: Küçük ve Orta ölçeklidir.
Mysql  Özelliği:
	- Basit Kurulumu
	- Geniş eklenti desteği InnoDB, MyISAM
	- Yüksek hızda veri yazma okuma
	- Performansı iyidir.
```
---

## Postgresql 
```sh
Geliştirici: PostgreSQL Global Development Group
Platform:  Windows, Linux, MacOs
Kullanım Alanı: Küçük,Orta,Büyük ölçeklidir.
Postgresql  Özelllikleri:
	- Ver türleri çok zengin
	- JSON, XML veri türlerini dahi destekler.

```
---


## Mssql (Microsoft SQL Server)
```sh
Geliştirici: Microsoft
Platform:  Windows, Linux
Kullanım Alanı: Küçük,Orta,Büyük ölçeklidir.
Düşük Latans vardır(Tüm işlemler tek bir suunucuda gerçekleşir bundan dolayı işlem süreleri daha düşüktür.)
Mssql (Microsoft SQL Server) Özellikleri
- Zengin yönetim araçları SSMS
- Güçlü veri bütünlüğünü sağlar.
- Veri yedekleme, kurtama eşsizdir.
- Yüksek Performansa sahiptir.
- Yatay ve Dikey Ölçeklendirmeği destekler.
- Veri Bütünlüğü mekanizması sağlamdır(ACID)
- Rol tabanalı erişim kontrol özelliği vardır.
- SSMS(SQL Server Management Studio) ile yönetim sağlarız.
- Bulut desteği mevcuttur.


SQL Server Microsoft ve Sybase tarafından ortalaşa geliştiriliyor. (1989)
Dezavantaj: 
    - Dağıtık Sistem karmaşıklığı
    - Öğrenme Eğrisi biraz diktir.
    - Sınırlı ölçeklendirme
```
---



## Mssql Syntax
```sh
~~~~~Mssql Syntax ~~~~~
SELECT *, Distinct(Tekrarsız Veriler), Top(istenilen sayıda Listeleme), Min,Max,Avg(Ortalama),Sum, Count
FROM `databaseAdi`.`tabloAdi`
JOIN (Birden fazla tabloda ortak vb yapıları listelemek)
WHERE (Şart, BIL) (Between, In, Like)
GROUP BY (Belli kolon için gruplama yapmak içindir)
HAVING (Filtreleme) (Sum, Avg, Count, Min, Max)
ORDER BY (Sıralama)
```
---



## SQL:
```sh
SQL (Structured Query Langualage)
SQL 1970 IBM ilişkisel veri modeli üzerine inşa ederek şimdiki zamanımıza kadar gelmiştir.
SEQUEL: Structured English QUery Language
- Veri tabanı yönetim sistemlerinden(Mssql, Mysql, Postgresql vb) bunlar SQL üzerine inşaa edilmiştir.
- SQL, ANSI(Amerikan National Standarts Instute) ve ISO(International Organization for Standardization) tarafından standart hale gelmiştir.
```
---



## DQL
```sh

```
---



## DML
```sh

```
---



## DDL
```sh

```
---



## DCL:
```sh
DCL: Data Control Language [Veri Kontol Dili (GRANT, REVOKE)]
```
---


## TCL
```sh
TCL: Transaction Control Language [Veri İşlem Dili (TRANSACTION)]
 
```
---



## Transaction
```sh

```
---

## Relation
```sh

```
---

## Storage Procudure
```sh

```
---

## NF
```sh

```
---



## View
```sh

```
---




## Trigger
```sh

```
---


