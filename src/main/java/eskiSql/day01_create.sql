-- Yorum satiri 2 tiredir ama arada bosluk olması lazım
-- bu da 2. yorum satırı
/*
	bu
    arada kaç satırı yazarsak yazalım
    hepsi yorum olarak görünür
    bu da yorum paragrafı
*/
use sys;
/*========================================
	TABLO OLUSTURMA 1 (CRUD - Create)
========================================*/

-- id, isim, not ortalamasi, adres ve son degistirme tarihi
-- fieldlari iceren bir ogrenciler table'i olusturunuz.

create table ogrenciler
(
id int,
isim varchar(25),
not_ortalamasi double,
adres varchar(50),
son_degistirme_tarihi date
);

select * from ogrenciler; -- tabloyu görmek için çalıştırdıgımız komut


/*------------------------------------------------------------
Q1: "tedarikciler" isminde bir tablo olusturun.
   "tedarikci_id", "tedarikci_ismi", "tedarikci_adres" ve 
   "ulasim_tarihi" field'lari olsun.
-------------------------------------------------------------*/

create table tedarikciler
(
tedarikci int,
tedarikci_ismi varchar(25),
tedarikci_adres varchar(100),
ulasim_tarihi date
);

select * from tedarikciler;

/*========================================
	VAROLAN TABLODAN TABLO OLUSTURMA  
========================================
​
------------------Syntax------------------
​
CREATE TABLE table_name
AS
SELECT field1,field2
FROM other_table_name
​
========================================*/

-- ogrenciler tablosundan "isim" ve "not_ortalamasi" field'larini
-- alarak ogrenci_derece isimli yeni bir tablo olusturun.

create table ogrenci_derece
as
select isim, not_ortalamasi
from ogrenciler;

select * from ogrenci_derece;

/*--------------------------------------------------------
Q2: "tedarikciler" table'indan "tedarikci_ismi" ve
 "ulasim_tarihi" field'lari olan "tedarikciler_son" 
 isimli yeni bir table olusturun.
---------------------------------------------------------*/

create table tedarikciler_son
as
select tedarikci_ismi, ulasim_tarihi
from tedarikciler;

select * from tedarikciler_son;







