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
SELECT REPLACE(cat.CategoryName,'Produce','Ürün') as '1-4 arasındaki Harfler'  FROM Categories as cat; 

-- 2.YOL (DML)
SELECT cat.CategoryName FROM Categories as cat where cat.CategoryName='Produce'

-- Nortwind databasesinden Categories tablosundaki 'Bilgisayar' kelimesi yerine 'Computer' olarak değiştirin.=> 
-- keyword: subquery,update,replace
-- 1.YOL
use nortwind;
update Categories SET CategoryName=REPLACE(cat.CategoryName,'Produce','Ürün') from Categories as cat

-- 2.YOL
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



/*################################################################################ */
/*################################################################################ */
/*################################################################################ */
/*
DML
 */


/*################################################################################ */
 /*
DDL
 */
 

/*################################################################################ */
/*
DCL: Data Control Language [Veri Kontol Dili (GRANT, REVOKE)]
 */
 

/*################################################################################ */
/*
TCL: Transaction Control Language [Veri İşlem Dili (TRANSACTION)]
 */

