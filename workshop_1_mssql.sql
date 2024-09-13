-- Single Commet
/*
multiple commet
*/

-- İlişkisel Veritabanı (RDBMS)
-- İlişkisel Olmayan veritabanı (NoSql)

-- İlişkisel Veritabanı (RDBMS): Mssql
/*
Veritabanı: 
- Organize edilmiş ve yapılandırılmış veri koleksiyonlarına denir.
- Veriyi düzenli,erişebilirliğini sağlayan, veri tekrarını önleyecek şekilde hazırlanmalıdır. (1NF,2NF,BCND)
*/

/*
Veritabanı Bileşenleri 
- Veri
- Tablolar
- Satırlar(rows)
- Sutunlar(cols)
- İlişkiler
- Anahtar 
  - Birincil Anahtar(Primary Key): Her tabloda mutlaka PK vardır ve kayıt() için benzersiz(unique) olmalıdır.
  - Yabancı Anahtar(Foreign Key): Başka tabloda bulunan PK'dir.
*/

/*
Veritabanı Türleri
- Hiyerarşik Veritabanları (IBM Information Management System)
- Ağ Veritabanları
*/


/*
Veritabanı Genel Kuralları (common rules) 
- sutun adlarını hepsi küçük ve yeni kelimeler arasında alt çizgi(_) exam: category_name
- Sutun adlarını isim,sıfat olarak kullananın.
*/


/*
İlişkisel Veritabanları (RDBMS)
NOT: Aşağıdaki RDBMS'ler Veritabanlarını oluşturmak, yönetmek, manipüle etmek(Delete,Update,Create)
- Mysql
- Postgresql
- Mssql
- Oracle
- H2DB
- Oracle
- MariaDB
*/


/*
İlişkisel Olmayan Veritabanları
- MongoDB
- Cassandra
- Redis
- Neo4j
*/


/*
İlişkisel Veritabanları (RDBMS) Başlıca İşlevleri
Veri tanımlama
Veri manipulasyonu
Veri Güvenliği
Veri Yedekleme, Geri Yükleme
Çoklu Kullanıcılı Erişim
*/


/*
Veritabanı Avantajları
Veri tutarlılığını
Veri Paylaşımı
Veri Güvenliği
Veri Yedekleme, Geri Yükleme
Veri Entegrasyonu
*/


/*
Mysql 
Geliştirici: Oracle
Platform:  Windows, Linux, MacOs
Kullanım Alanı: Küçük ve Orta ölçeklidir.
Mysql  Özelliği:
	- Basit Kurulumu
	- Geniş eklenti desteği InnoDB, MyISAM
	- Yüksek hızda veri yazma okuma
	- Performansı iyidir.
*/


/*
Postgresql 
Geliştirici: PostgreSQL Global Development Group
Platform:  Windows, Linux, MacOs
Kullanım Alanı: Küçük,Orta,Büyük ölçeklidir.
Postgresql  Özelllikleri:
	- Ver türleri çok zengin
	- JSON, XML veri türlerini dahi destekler.
*/


/*
Mssql (Microsoft SQL Server)
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
*/

/*
SQL:
SQL (Structured Query Langualage)
SQL 1970 IBM ilişkisel veri modeli üzerine inşa ederek şimdiki zamanımıza kadar gelmiştir.
SEQUEL: Structured English QUery Language
- Veri tabanı yönetim sistemlerinden(Mssql, Mysql, Postgresql vb) bunlar SQL üzerine inşaa edilmiştir.
- SQL, ANSI(Amerikan National Standarts Instute) ve ISO(International Organization for Standardization) tarafından standart hale gelmiştir.
 */

/*
~~~~~Mssql Syntax ~~~~~
SELECT *, Distinct(Tekrarsız Veriler), Top(istenilen sayıda Listeleme), Min,Max,Avg(Ortalama),Sum, Count
FROM `databaseAdi`.`tabloAdi`
JOIN (Birden fazla tabloda ortak vb yapıları listelemek)
WHERE (Şart, BIL) (Between, In, Like)
GROUP BY (Belli kolon için gruplama yapmak içindir)
HAVING (Filtreleme) (Sum, Avg, Count, Min, Max)
ORDER BY (Sıralama)
*/

/*

Yararlı Linkler: -- https://www.w3schools.com/sql/default.asp
*/

/*################################################################################ */
use nortwind;

/*
DQL (Data Query Language)
SELECT sutunAdi FROM TabloADI; 
 */
-- nortwind databasesinde Categories tablosundaki verileri listeleyim ? (Wilcard)
-- 1.YOL
use nortwind;
SELECT * FROM Categories;
-- 2.YOL (Eğer başka bir database üzerinden başka bir database ile çağırmak istiyorsak [databaseAdi].[dbo].[TabloAdi])
SELECT * FROM [nortwind].[dbo].[Categories];


-- nortwind databasesinde Categories tablosundaki verileri listeleyim ? (Bütün kolonları ekleyerek)
SELECT CategoryID,CategoryName,Description,Picture FROM Categories;

-- nortwind databasesinde Categories tablosundaki verileri listeleyim ? (Alias: Takma ad)
SELECT cat.CategoryID, cat.CategoryName, cat.Description, cat.Picture FROM Categories as cat;
SELECT cat.CategoryID, cat.CategoryName, cat.Description, cat.Picture FROM Categories cat; -- as yazmadım


-- nortwind databasesinde Categories tablosundaki verilerden sadece `CategoryID,CategoryName` listeleyim ?
SELECT CategoryID,CategoryName FROM Categories;

-- nortwind databasesinde Categories tablosundaki verilerden CategoryID'si 3 ve yukarısındaki verileri listeleyim ?
SELECT * FROM Categories WHERE CategoryID>=3;

-- nortwind databasesinde Categories tablosundaki verilerden CategoryID'si 3 ve yukarısındaki verileri `CategoryID` küçükten büyüğe doğru listeleyim ?
SELECT * FROM Categories WHERE CategoryID>=3;
-- NOT: DEfaultta zaten küçükten büyüğe doğru bir sıralama söz konusudur
SELECT * FROM Categories WHERE CategoryID>=3 ORDER BY CategoryID asc;

-- nortwind databasesinde Categories tablosundaki verilerden CategoryID'si 3 ve yukarısındaki verileri `CategoryID` büyükten küçüğe doğru listeleyim ?
-- 1.YOL
SELECT * FROM Categories WHERE CategoryID>=3 ORDER BY CategoryID desc;
-- 2.YOL (ALIAS)
SELECT * FROM Categories as cat WHERE cat.CategoryID>=3 ORDER BY cat.CategoryID desc;

/*#######################*/
/*~~~~ TOP: Veri Sınırla */
-- nortwind databasesinde Categories tablosundaki verilerden sadece CategoryID'sindeki baştan 4 elemanı listeleyelim ?
SELECT * FROM Categories;
SELECT TOP 4 * FROM Categories;
SELECT TOP(4) * FROM Categories;
SELECT TOP(4) * FROM Categories as cat ORDER BY cat.CategoryID ;

-- nortwind databasesinde Categories tablosundaki verilerden sadece CategoryID'sindeki sonda 4 elemanı listeleyelim ?
SELECT * FROM Categories;
SELECT TOP 4  * FROM Categories ORDER BY CategoryID desc;
SELECT TOP(4) * FROM Categories  ORDER BY CategoryID desc;
SELECT TOP(4) * FROM Categories as cat ORDER BY cat.CategoryID desc;

/*#######################*/
/*~~~~ DISTINCT: Tekrarsız Veri ~~~~*/
SELECT * FROM Customers;
-- nortwind databasesinde `Customers` tablosundaki ContactTitle sutunundaki verileri tekrarsız olarak gösteriniz ?
SELECT DISTINCT ContactTitle FROM Customers;
SELECT DISTINCT cus.ContactTitle FROM Customers as cus;
SELECT DISTINCT cus.ContactTitle FROM Customers  cus;

/*#######################*/
/*~~~~ SELECTOR(Seçiciler) */
-- 1.YOL
use nortwind;
SELECT * FROM Categories;
-- 2.YOL (Eğer başka bir database üzerinden başka bir database ile çağırmak istiyorsak [databaseAdi].[dbo].[TabloAdi])
SELECT * FROM [nortwind].[dbo].[Categories];
SELECT * FROM [nortwind].[dbo].[Categories] as cat;
SELECT cat.CategoryID,cat.CategoryName,cat.Description,cat.Picture FROM [nortwind].[dbo].[Categories] as cat;

/*#######################*/
/*~~~~ IS NULL: null değerleri göster ~~~~*/
-- nortwind database Customers tablosundaki `Region` sutunudaki NULL olan değerleri listeleyelim ?
SELECT * FROM [nortwind].[dbo].Customers as cat WHERE cat.Region IS NULL;

/*#######################*/
/*~~~~ IS NOT NULL:  null olmayan değerleri göster ~~~~*/
-- nortwind database Customers tablosundaki `Region` sutunudaki NULL olmayan değerleri listeleyelim ?
SELECT * FROM [nortwind].[dbo].Customers as cat WHERE cat.Region IS NOT NULL ;

/*#######################*/
/*~~~~ OPERATOR: Topla,çıkar,çarp,böl,kalan ~~~~*/
/* + - * / %   */
SELECT 8+2;
SELECT 8+2 as TOPLAM;
SELECT 8+2 as "SONUÇ TOPLAM";
SELECT 8+2 as 'SONUÇ TOPLAM';
-- select 8+2 as `SONUÇ TOPLAM`; -- backtick(``) kullanma

select 8-2 as 'SONUÇ ÇIKARMA';
SELECT 8*2 as 'SONUÇ ÇARPMA';
SELECT 8/2 as 'SONUÇ BÖLME';
SELECT 8%2 as 'SONUÇ KALAN';

/*#######################*/
/*~~~~ MATH : Mathematics~~~~*/
SELECT pi() as 'PI Sayısı';
SELECT PI() as 'PI Sayısı';
SELECT Pi() as 'PI Sayısı';
SELECT pI() as 'PI Sayısı';

SELECT abs(-44) as 'MUTLAK';
SELECT sqrt(16) as 'KAREKÖK';
SELECT power(2,5) as 'ÜSLÜ SAYILAR';

SELECT floor(6.9) as 'ALTA YUVARLA';
SELECT ceiling(6.1) as 'YUKARI YUVARLA';

SELECT sin(45) as 'SINUS';
SELECT cos(45) as 'COSINUS';
SELECT tan(45) as 'TANJANT';
SELECT cot(45) as 'COTANJANT';

/*#######################*/
/*~~~~ AGGREGATE ~~~~*/
-- MIN,MAX,AVG,SUM,COUNT

-- MIN (Belirtilen aralıktaki en küçük elemanı bulur)
-- nortwind databasesinde Categories tablosundaki verilerden CategoryID'si en küçük olan Veriyi listeleyin ?
SELECT * FROM Categories;
SELECT MIN(cat.CategoryID) as 'En Küçük ID'  FROM Categories as cat;
-- nortwind databasesinde Categories tablosundaki verilerden CategoryID'si 3 ve yukarısındaki verilerden CategoryID en küçük olan Veriyi listeleyin ?
SELECT MIN(cat.CategoryID) as 'En Küçük ID'  FROM Categories as cat WHERE cat.CategoryID>=3;

-- MAX(Belirtilen aralıktaki en büyük elemanı bulur)
SELECT * FROM Categories;
-- 1.YOL
-- nortwind databasesinde Categories tablosundaki verilerden CategoryID'si en büyük olan Veriyi listeleyin ?
SELECT MAX(cat.CategoryID) as 'En büyük ID'  FROM Categories as cat;
-- 2.YOL
SELECT TOP(1) * FROM Categories as cat ORDER BY cat.CategoryID desc;
-- nortwind databasesinde Categories tablosundaki verilerden CategoryID'si 3 ve yukarısındaki verilerden CategoryID en büyük olan Veriyi listeleyin ?
SELECT MAX(cat.CategoryID) as 'En büyük ID'  FROM Categories as cat WHERE cat.CategoryID>=3;

-- AVG(Belirtilen aralığın ortalamasını bulmak)
SELECT AVG(CategoryID) as 'ORTALAMASI' FROM Categories;

-- SUM(Belirtilen aralığın toplamını bulmak)
SELECT SUM(CategoryID) as 'ORTALAMASI' FROM Categories;

-- COUNT(Belirtilen aralığın kaç tane olduğunu bulmak)
SELECT COUNT(*) as 'TOPLAM SAYI' FROM Categories;


/*#######################*/
/*~~~~ CAST ~~~~*/
select 5+6 as 'Toplam';
select '5'+6 as 'Toplam';
select 5+'6' as 'Toplam';
select '5'+'6' as 'Toplam';

select CAST ('5' as INTEGER)+'6' as 'Toplam';
select 5 +CAST ('6' as INTEGER) as 'Toplam';
select CAST ('5' as INTEGER) +CAST ('6' as INTEGER) as 'Toplam';


/*#######################*/
/*~~~~  SUBQUERY ~~~~*/
-- IN(SUBQUERY)
SELECT * FROM Categories;

-- nortwind databasinden Categories tablosundaki categoryID'si büyük olan veriyi listeleyin ?

-- 1.YOL (Manuel)
SELECT * FROM Categories as cat where cat.CategoryID=8;

-- 2.YOL (Dynamics)
SELECT * FROM Categories as c2 where c2.CategoryID=(SELECT MAX(c1.CategoryID) FROM Categories as c1);
SELECT * FROM Categories as c2 where c2.CategoryID=CAST((SELECT MAX(c1.CategoryID) FROM Categories as c1) as INTEGER) ;


/*#######################*/
/*~~~~ DATE ~~~~*/
-- GETDATE()
SELECT GETDATE() as 'Şu anda ki Tarih'

-- DATEADD()
-- dateadd() = Zamanı yıl, ay için ileri tarihe göre alsın.
select dateadd(day,1,getdate()) as 'Şu andaki zamanın ayı için 1 gün ileri'
select dateadd(month,2,getdate()) as 'Şu andaki zamanın ayı için 2 ay ileri'
select dateadd(year,3,getdate())  as 'Şu andaki zamanın yılı için 3 yıl ileri'

-- DATEDIFF()
-- datediff() = belirtilen 2 zaman için ara farkını bize gösterir.
select datediff (day, '01.01.1990',getdate());
select datediff(month,'01.01.1990',getdate());
select datediff (year,'01.01.1990',getdate());

-- DATEPART()
-- datepart() = o zaman diliminin  hangi  hafta ,ay,yıl, olduğunu gösterir
select datepart (hour,getdate()) as 'Saat'
select datepart(day,getdate()) as 'Gün'
select datepart (WEEK,getdate()) as 'Yılın kaçıncı Haftası'
select datepart (month,getdate()) as 'Yılın kaçıncı Ay'
select datepart (year,getdate()) 'YEAR'



/*#######################*/
/*~~~~ STRING ~~~~*/
SELECT * FROM Categories; 

-- LISTELEMEK
-- nortwind databasesinden Categories tablosundaki CategoryName'leri Listeyin ?
SELECT cat.CategoryName FROM Categories as cat;


-- LENGTH
-- nortwind databasesinden Categories tablosundaki CategoryName'lerin harf sayısını hesaplatan script yazınız ?
SELECT LEN(cat.CategoryName) as 'Harf Sayısı' FROM Categories as cat;


-- UPPER
-- nortwind databasesinden Categories tablosundaki CategoryName'leri BÜYÜK harflere çevirerek Listeyin ?
SELECT UPPER(cat.CategoryName) as 'BÜYÜK Harfler'  FROM Categories as cat; 


-- LOWER
-- nortwind databasesinden Categories tablosundaki CategoryName'leri küçük harflere çevirerek Listeyin ?
SELECT LOWER(cat.CategoryName) as 'küçük Harfler'  FROM Categories as cat; 


-- ltrim
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinde eğer soldan boşluklar varsa sil ve Listeyin (Validation)
SELECT ltrim(cat.CategoryName) as 'Soldaki Boşluklar Silindi'  FROM Categories as cat; 


-- RTRIM
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinde eğer sağdan boşluklar varsa sil ve Listeyin (Validation)
SELECT RTRIM(cat.CategoryName) as 'Soldaki Boşluklar Silindi'  FROM Categories as cat; 


-- SUBSTRING
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinde ilk 4 harfini gösterin ve Listeyin (Masking)
SELECT SUBSTRING(cat.CategoryName,0,5) as '1-4 arasındaki Harfler'  FROM Categories as cat; -- 0<=SUBSTRING <=5-1


-- İç içe Function kullanımı
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinde ilk 4 harfini gösterin ve BÜYÜK Harfe çevrilsin ve  Listeyin (Masking)
SELECT UPPER(SUBSTRING(cat.CategoryName,0,5))   as '1-4 arasındaki Harfler'  FROM Categories as cat; -- 0<=SUBSTRING <=5-1


-- REPLACE
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinden `Produce` kelimelerini `Ürün` ile değiştirin ve Listeyin (Masking)
SELECT * FROM Categories; 
-- 1.YOL (DQL)
SELECT REPLACE(cat.CategoryName,'Produce','Ürün') as 'Değiştir'  FROM Categories as cat; 

-- 2.YOL (DML)
update Categories SET CategoryName=REPLACE(cat.CategoryName,'Produce','Ürün') from Categories as cat

-- 3.YOL (DML)
update [nortwind].[dbo].[Categories]  SET CategoryName=replace(cat.CategoryName,'Produce','Ürün') from Categories as cat

-- SORU
-- Nortwind databasesinden Categories tablosundaki CategoryID en küçük olan veri için bütün 'e' harfi yerine 'x' yazalım.
-- keyword: subquery,update,replace(),min()
select * from Categories
update [nortwind].[dbo].[Categories] SET CategoryName=replace(cat.CategoryName,'e','x') from Categories as cat where cat.CategoryID=(select min(CategoryID) from Categories)

-- SORU
-- Nortwind databasesinden Categories tablosundaki CategoryID 4 ile 5 arasındaki CategoryName bütün 'a' harfi yerine 'x' yazalım. 
-- keyword: subquery,update,replace(),between()
select * from Categories
update [nortwind].[dbo].[Categories] SET CategoryName=replace(cat.CategoryName,'a','x') from Categories as cat where cat.CategoryID between 4 and 5;


-- CONCAT
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinden sonuna `INC` ekleyin ve Listeyin (Masking)
SELECT CONCAT(cat.CategoryName,'.INC')   FROM Categories as cat; 


-- REVERSE
-- nortwind databasesinden Categories tablosundaki CategoryName'lerinden Test yazdır ve Listeyin (Masking)
SELECT REVERSE(cat.CategoryName) as 'Ters'   FROM Categories as cat; 



/*#######################*/
/*~~~~ WHERE: BIL(Between, In, Like) ~~~~*/

-- BETWEEN(ARASINDA)
-- LISTELEMEK
-- nortwind databasesinden Categories tablosundaki CategoryName'leri Listeyin ?
SELECT * FROM Categories as cat;

-- nortwind databasesinden Categories tablosundaki CategoryID 3 ve yukarısındaki kaç tane veri var ?
SELECT count(*) as 'Kaç tane' FROM Categories as cat where cat.CategoryID>=3;

-- nortwind databasesinden Categories tablosundaki CategoryID 3 ve yukarısındaki verileri Listeyin ?
SELECT * FROM Categories as cat where cat.CategoryID>=3;

-- nortwind databasesinden Categories tablosundaki CategoryID 3<=DATA<=5 arasındaki verileri Listeyin ?
SELECT * FROM Categories as cat where cat.CategoryID BETWEEN 3 and 5 ;

-- nortwind databasesinden Categories tablosundaki CategoryID 3<=DATA<=5 arasındaki verileri CategoryID'sine göre Küçükten Büyüğe Doğru Listeyin ?
SELECT * FROM Categories as cat where cat.CategoryID BETWEEN 3 and 5 ORDER BY cat.CategoryID asc;

-- nortwind databasesinden Categories tablosundaki CategoryID 3<=DATA<=5 arasındaki verileri CategoryID'sine göre Büyükten Küçüğe Doğru Listeyin ?
SELECT * FROM Categories as cat where cat.CategoryID BETWEEN 3 and 5 ORDER BY cat.CategoryID desc;

-- nortwind databasesinden Categories tablosundaki CategoryID 3<=DATA<=5 arasındaki verileri CategoryID'sine göre Büyükten Küçüğe Doğru kaç tane veri var ? ?
SELECT COUNT(*) 'Kaç Tane' FROM Categories as cat where cat.CategoryID BETWEEN 3 and 5 ;

-----------------
-- IN(SUBQUERY)
SELECT * FROM Categories;

-- nortwind databasinden Categories tablosundaki categoryID'si büyük olan veriyi listeleyin ?

-- 1.YOL (Manuel)
SELECT * FROM Categories as cat where cat.CategoryID=8;

-- 2.YOL (Dynamics)
SELECT * FROM Categories as c2 where c2.CategoryID=(SELECT MAX(c1.CategoryID) FROM Categories as c1);
SELECT * FROM Categories as c2 where c2.CategoryID=CAST((SELECT MAX(c1.CategoryID) FROM Categories as c1) as INTEGER) ;

-- Nortwind databasesinden Categories tablosundaki 'Bilgisayar' kelimesi yerine 'Computer' olarak değiştirin.=> 
-- keyword: subquery,update,replace
-- 1.YOL
use nortwind;
update Categories SET CategoryName=REPLACE(cat.CategoryName,'Produce','Ürün') from Categories as cat

-- 2.YOL
update [nortwind].[dbo].[Categories]  SET CategoryName=replace(cat.CategoryName,'Produce','Ürün') from Categories as cat


-----------------
-- LIKE(FİLTRELEMEK)

-- nortwind databasesinden Categories tablosundaki CategoryName'leri Listeyin ?
SELECT * FROM Categories as cat;

-- nortwind databasesinden Categories tablosundaki CategoryName'inde 'C' ile başlayan Verileri Listeyin ?
SELECT *  FROM Categories as cat where cat.CategoryName LIKE 'C%';
SELECT cat.CategoryName  FROM Categories as cat where cat.CategoryName LIKE 'C%';


-- nortwind databasesinden Categories tablosundaki CategoryName'inde 's' ile biten Verileri Listeyin ?
SELECT cat.CategoryName  FROM Categories as cat where cat.CategoryName LIKE '%s';

-- nortwind databasesinden Categories tablosundaki CategoryName'inde 's' ile biten Veri Kaç tane veri vardır ? 
SELECT COUNT(cat.CategoryName) as 'Kaç Tane'  FROM Categories as cat where cat.CategoryName LIKE '%s';


-- nortwind databasesinden Categories tablosundaki CategoryName'in içinden  'on'  geçen  Verileri Listeyin ?
SELECT cat.CategoryName FROM Categories as cat where cat.CategoryName LIKE '%on%';

-- nortwind databasesinden Categories tablosundaki CategoryName'in içinden  'on'  geçen Büyükten Küçüğe Doğru  Verileri Listeyin ?
SELECT cat.CategoryName FROM Categories as cat where cat.CategoryName LIKE '%on%'  ORDER BY cat.CategoryID desc;

-- nortwind databasesinden Categories tablosundaki CategoryName'in içinden  'on'  geçen Büyükten Küçüğe Doğru  Kaç Tane Veri Var ? 
SELECT COUNT(cat.CategoryName ) as 'Kaç Tane' FROM Categories as cat where cat.CategoryName LIKE '%on%';

-- nortwind databasesinden Categories tablosundaki CategoryName'in içinden 11 karakterli olacak, 
-- ilk harf `C`, ikinci harf `o`, üçüncü harf `n` dördüncü harf `f` ve son karakteri s olan Verileri Listeyin ?  
SELECT cat.CategoryName  FROM Categories as cat where cat.CategoryName LIKE 'Conf______s';


/*################################################################################ */
/*################################################################################ */
/*################################################################################ */
/*
DML (Data Manipulation Language)
 */

-- nortwind databasesinden Categories tablosundaki CategoryName'leri Listeyin ?
 use nortwind;
SELECT * FROM Categories as cat;

-- INSERT
INSERT INTO Categories (CategoryName,Description) VALUES ('Bilgisayar','Msi GL65X');

-- UPDATE
UPDATE Categories SET CategoryName='Bilgisayar44',Description='Msi GL44X' WHERE CategoryID=10;

-- DELETE 
DELETE FROM Categories WHERE CategoryID=10;


/*################################################################################ */
 /*
DDL (Data Definition Language)
 */

-- DATABASE
-- CREATE DATABASE
CREATE DATABASE ScriptDb;

-- DROP DATABASE
-- 1.YOL
DROP DATABASE ScriptDb;

-- 2.YOL
USE master
GO
DROP DATABASE ScriptDb;
GO
 
 -- RENAME DATABASE
 EXEC sp_renamedb 'ScriptDb','YeniDB'

------------
-- DATA TYPES
/* 

Sıklıkla Kullanılan Data Types;

Tamsayılarda: int

Virgüllü Sayılarda: float

Kelimelerde: nvarchar

Tarih: Date veya DateTime

*/

-- TAMSAYI
/*
TINYINT: Çok küçük tamsayı değerlerini saklamak için kullanılır. Örneğin, 0 ile 255 arasındaki değerler TINYINT türünde saklanabilir. Boyut olarak 1 byte alana sahiptir.
0<=TINYINT<=255

SMALLINT: Küçük tamsayı değerlerini saklamak için kullanılır. INT'ten daha küçük tamsayı değerlerini saklayabilir. Boyut olarak 2 byte alana sahiptir.

INT: Tamsayı değerleri saklamak için kullanılır. Örneğin, 1, 2, -100, 0 gibi değerler INT türünde saklanabilir. Boyut olarak 4 byte alana sahiptir.

BIGINT: Büyük tamsayı değerlerini saklamak için kullanılır. INT'ten daha büyük tamsayı değerlerini saklayabilir. Boyut olarak 8 byte alana sahiptir.

TINYINT<SMALLINT<INT<BIGINT
*/

-- VİRGüLLÜ SAYI
/* 
DECIMAL(p, s) veya NUMERIC(p, s): Ondalık sayıları saklamak için kullanılır. p, toplam basamak sayısını (ondalık noktadan önce ve sonra toplam basamak sayısı) belirtirken s, ondalık basamak sayısını belirtir.

FLOAT: Kayan nokta sayılarını saklamak için kullanılır. Büyük veya küçük ondalık sayılar için uygundur.
Örnek: 44.10

REAL: İkili hassaslıkta kayan nokta sayılarını saklamak için kullanılır. FLOAT'tan daha düşük bir hassasiyete sahiptir.
Örnek: 44.101222222
*/

-- KELİMESEL
/*

VARCHAR(n) veya NVARCHAR(n): Değişken uzunluklu karakter dizilerini saklamak için kullanılır. 
n, maksimum karakter sayısını belirtir. 

VARCHAR, ASCII karakterlerini (sadece ingilizce harfler) Örnek: VARCHAR(55)

NVARCHAR ise Unicode karakterlerini saklar. (Türkçe, Çince, Arapça vs) Örnek: NVARCHAR(55)

Dikkat: nvarchar Dynamics bir datatypes'dir.

Örnek  nvarchar(255) Anlamı: En fazla 255 karakter kullanabilirsin. ancak eğer siz 10 karakter kullanırsanız geriye kalan 255-10= 245 kadar bit kadar yer kaplamıyor.

CHAR(n) veya NCHAR(n): Sabit uzunluklu karakter dizilerini saklamak için kullanılır. n, sabit karakter dizisinin uzunluğunu belirtir.
Daha hızlı ve ilkeldir.
Dinamik değildir.
*/

-- TARİH 
/*
DATE: Tarih değerlerini saklamak için kullanılır. YYYY-MM-DD biçimindedir.

TIME: Saat değerlerini saklamak için kullanılır. HH:MM:SS.SSS biçimindedir.

DATETIME: Tarih ve saat değerlerini saklamak için kullanılır. YYYY-MM-DD HH:MM:SS.SSS biçimindedir.

*/

--  BIT AND BINARY
/*

BIT: Mantıksal (boolean) değerleri saklamak için kullanılır. 0 veya 1 değerlerini alır.

BINARY(n) veya VARBINARY(n): Sabit veya değişken uzunluklu binary verileri saklamak için kullanılır.

Binary: 0 ve 1'lerdan oluşan

*/

-- Mssql üzerinde tablo oluşturmak
-- Script üzerinde tablo oluşturmak

--------------------------------------------------------------------------------------------------
CREATE DATABASE ScriptDb;

-- TRUNCATE
-- truncate: Tablonun içeriğini temizlemek için kullanıyoruz.
select * from [ScriptDb].[dbo].[Person]
truncate table [ScriptDb].[dbo].[Person]

--------------------------------------------------------------------------------------------------

-- TABLE SCRIPT
-- 1.TABLE
use ScriptDb;
create table EmployeesData(
	EmployeeID INT  PRIMARY KEY IDENTITY NOT NULL,
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	Department NVARCHAR(50),
	Salary DECIMAL(10,2)
);
select * from EmployeesData

/*
EmployeeID INT  PRIMARY KEY IDENTITY NOT NULL,
INT: data type (tam sayı)
PRIMARY KEY: Birincil anahtar
IDENTITY: AI Otomatik artmak için kullanırız. (Unique olması için
NOT NULL: Boş geçilemez 
*/ 

-- 2.TABLE
-- Eğer benim verdiğim tablo database'de varsa ekleme yoksa ekle
-- Constraints: PRIMARY KEY,Foreign Key, UNIQUE, DEFAULT
use ScriptDb;
if not exists (select * from sysobjects where name='notes' and xtype='U')
    CREATE TABLE student (
	StudentId INT PRIMARY KEY IDENTITY  NOT NULL,
	studentName nvarchar(50)  NOT NULL,
	studentSurname nvarchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	Phone_Number varchar(20) UNIQUE NOT NULL,
	studentVizeNotes int NOT NULL,
	studentFinalNotes int NOT NULL,
	Registration_Date date,
	created_at DATETIME NOT NULL  DEFAULT CURRENT_TIMESTAMP,
);
go

insert into 
student(studentName,studentSurname,city,Phone_Number,studentVizeNotes,studentFinalNotes,Registration_Date) 
values
('Adı-1','Soyadı-1','Bingöl','11122233',80,80,'2024-03-28');

insert into 
student(studentName,studentSurname,city,Phone_Number,studentVizeNotes,studentFinalNotes,Registration_Date) 
values
('Adı-2','Soyadı-2','Malatya','11122233',70,70,'2024-03-28');

select * from [ScriptDb].[dbo].[student] as stu;


-- 3.TABLE
-- Kategoriler tablosu
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY NOT NULL,
    CategoryName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX)
);

-- Ürünler tablosu
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY NOT NULL, -- PK: Primary Key
    ProductName NVARCHAR(100) NOT NULL,
    CategoryID INT, -- FK: Foreign Key
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Description NVARCHAR(MAX),
    CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);


----------------------------------------------------------------------------------------------------------------------
-- Hayali Sutun
select *  from student;
select (stu.studentVizeNotes*0.4+stu.studentFinalNotes*0.6) as result from [ScriptDb].[dbo].[student] as stu;


--------------------------------------------------------------------------------------------------
-- UNION : aynı sutun sayısına sahip tabloları alt alta görmek istediğimizde kullanıyoruz.
-- UNIONALL (datatype, script, table, PK)
use ScriptDb;
if not exists (select * from sysobjects where name='notes' and xtype='U')
    CREATE TABLE teacher (
	StudentId INT PRIMARY KEY IDENTITY NOT NULL,
	studentName varchar(50) NOT NULL,
	studentSurname varchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	Phone_Number varchar(20) NOT NULL,
	studentVizeNotes int NOT NULL,
	studentFinalNotes int NOT NULL,
	Registration_Date date,
	created_at DATETIME NOT NULL  DEFAULT CURRENT_TIMESTAMP,
);
go

insert into 
student(studentName,studentSurname,city,Phone_Number,studentVizeNotes,studentFinalNotes,Registration_Date) 
values
('Adı-1','Soyadı-1','Bingöl','11122233',80,80,'2024-03-28');

insert into 
teacher(studentName,studentSurname,city,Phone_Number,studentVizeNotes,studentFinalNotes,Registration_Date) 
values
('Adı-22','Soyadı-22','Bingöl','11122233',80,80,'2024-03-28');

select * from student
union
select * from teacher

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- GROP BY
/*
Bir kolonumuzdaki kaç kere tekrar yaptığını, minumum değerini bulmak ,maksimum değerini bulma (aggregate function) değerler üzerinde işlem yapabilmemizi sağlar.

group by: Kolonun gruplama yapabilmemize olanak sağlar.

Aggregate: count, max, min, sum, avg

select kolon_adiXYZ ,aggregate_function from tablo_adi where şart group by kolon_adiXYZ;

*/

-- Group By Örnek-1
-- Örneğin, bir "employees" (çalışanlar) tablosunda çalışanların bölümlere göre maaş ortalamalarını bulmak istediğinizi varsayalım:
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
--Bu sorgu, "employees" tablosundaki verileri "department" sütununa göre gruplar ve her bir bölüm için ortalama maaşı hesaplar. Sonuçlar, bölüm başına bir satırda görünecektir.


-- Group By Örnek-2
-- Aşağıdaki örnek, "Customers" tablosundaki müşterileri şehirlerine göre gruplar ve her bir şehirde kaç müşteri olduğunu sayar:
SELECT City, COUNT(*) AS CustomerCount
FROM Customers
GROUP BY City;
--Bu sorgu, "Customers" tablosundaki verileri "City" (şehir) sütununa göre gruplar ve her bir grup için o şehirde kaç müşteri olduğunu sayar. Sonuçlar, şehir başına bir satırda görünecektir.


-- Group By Örnek-3
--Tablodaki verileri belirli bir sütuna göre gruplamak ve bu gruplar üzerinde toplu işlemler yapmak için GROUP BY ifadesi kullanılır. 
--Örneğin, bir "Orders" (Siparişler) tablosundaki siparişleri müşteri numaralarına göre gruplamak ve her müşterinin kaç siparişi olduğunu bulmak isteyebilirsiniz.
--Aşağıdaki örnek, "Orders" tablosundaki siparişleri müşteri numaralarına göre gruplar ve her bir müşterinin kaç siparişi olduğunu sayar:
SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID;
--Bu sorgu, "Orders" tablosundaki verileri "CustomerID" (Müşteri Numarası) sütununa göre gruplar ve her bir müşteri için kaç tane sipariş olduğunu sayar. Sonuçlar, müşteri numarası başına bir satırda görünecektir.




------------------------------------------------------------------------------------------------------------------------
-- HAVING 

-- Having Örnek-1
-- Örnek olarak, bir müşteri siparişleri tablosunda, her müşterinin toplam sipariş miktarını bulalım ve sadece toplam sipariş miktarı 1000'den büyük olan müşterileri listeleyelim:
SELECT customer_id, SUM(order_amount) AS total_order_amount
FROM orders
GROUP BY customer_id
HAVING SUM(order_amount) > 1000;
-- Bu sorgu, siparişler tablosundaki her müşterinin toplam sipariş miktarını hesaplar, ardından bu miktarı 1000'den büyük olan müşterileri listeler.


-- Having Örnek-2
-- Örnek olarak, bir işletmenin çalışanlarının departmanlarına göre ortalama maaşlarını hesaplayalım ve sadece ortalama maaşı belirli bir değerden yüksek olan departmanları listeleyelim:
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
-- Bu sorgu, employees tablosundaki verileri departmanlara göre gruplar, her bir grup için ortalama maaşı hesaplar, ardından ortalama maaşı 50000'den büyük olan grupları seçer ve sonuç olarak bu grupların departmanlarını ve ortalama maaşlarını gösterir.


-- GROP BY AND HAVING
select * from Products

SELECT pro.ProductName, AVG(pro.UnitPrice) AS price
FROM Products as pro
GROUP BY pro.ProductName
HAVING AVG(pro.UnitPrice) > 30;


--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- JOIN

-- Join Örnek-1
--MSSQL'de JOIN, ilişkisel veritabanlarında tablolar arasında ilişki kurmayı sağlayan bir SQL operatörüdür. JOIN operatörü, ilişkili tablolardan belirli sütunları almanıza ve bu tabloları belirli bir kriter veya koşula göre birleştirmenize olanak tanır. Bu, ilişkisel veritabanlarında verilerin etkili bir şekilde birleştirilmesini sağlar.
--Örnek olarak, bir müşteri tablosu ve bir sipariş tablosu üzerinden JOIN işlemi gerçekleştirelim:

--customers tablosu:
--customer_id | name         | email
-------------------------------------
--1           | John Doe     | john@example.com
--2           | Jane Smith   | jane@example.com
--3           | Alice Johnson| alice@example.com


--orders tablosu:
--order_id | customer_id | product      | quantity
----------------------------------------------
--101      | 1           | Laptop       | 1
--102      | 2           | Smartphone   | 2
--103      | 1           | Headphones   | 1
--Bu tablolarda, customer_id alanı customers tablosunda müşterileri orders tablosundaki siparişlerle ilişkilendirir.


-------------------------------------------------------------------------------------------------------------
select * from Categories;
select * from Products;

-- select KolonAdı,Aggregate from Categories where +BIL+ Group by+Having+Order By 
-- 1.YOL
select * from Categories as cat inner join Products as pro ON cat.CategoryID=pro.CategoryID;
select cat.CategoryID,cat.CategoryName,pro.ProductName from Categories as cat inner join Products as pro ON cat.CategoryID=pro.CategoryID;

-- LEFT JOIN
select cat.CategoryID,cat.CategoryName,pro.ProductName from Categories as cat left join Products as pro ON cat.CategoryID=pro.CategoryID;

-- RIGHT JOIN
select cat.CategoryID,cat.CategoryName,pro.ProductName from Categories as cat right join Products as pro ON cat.CategoryID=pro.CategoryID;

-- 2.YOL
select * from Products as pro  inner join Categories as cat  ON cat.CategoryID=pro.CategoryID;
select cat.CategoryID,cat.CategoryName,pro.ProductName from Products as pro  inner join Categories as cat  ON cat.CategoryID=pro.CategoryID;

-- LEFT JOIN
select cat.CategoryID,cat.CategoryName,pro.ProductName from Products as pro  left join Categories as cat  ON cat.CategoryID=pro.CategoryID;

-- RIGHT JOIN
select cat.CategoryID,cat.CategoryName,pro.ProductName from Products as pro  right join Categories as cat  ON cat.CategoryID=pro.CategoryID;





-- PK: ProductID
select * from Categories;

-- PK: ProductID
-- FK: CategoryID
select * from Products;

-- Inner Join
select cat.CategoryName, pro.ProductName from Categories as cat inner join Products as pro ON cat.CategoryID=pro.CategoryID;

-- Left Join
select cat.CategoryName, pro.ProductName from Categories as cat left join Products as pro ON cat.CategoryID=pro.CategoryID;

-- Right Join
select cat.CategoryName, pro.ProductName from Categories as cat right join Products as pro ON cat.CategoryID=pro.CategoryID;

------------
-- TABLE

/*################################################################################ */
/*
DCL: Data Control Language [Veri Kontol Dili (GRANT, REVOKE)]
 */
 

/*################################################################################ */
/*
TCL: Transaction Control Language [Veri İşlem Dili (TRANSACTION)]
 */

