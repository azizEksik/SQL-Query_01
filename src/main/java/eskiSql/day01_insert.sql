/*========================================
			   VERI GIRISI
========================================*/

-- INSERT INTO + tablo adi + VALUES + (std_id CHAR(4),std_name VARCHAR(25),std_age int)
-- Degerleri girerken dikkat edilmesi gereken Tabloyu 
-- olustururken degerleri atadigimiz veri cinsinden olmasi
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL 'in default tarih formati YYYY-MM-DD seklindedir.

/*******************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
 table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak 
table olustururken field isminin yanina NOT NULL yaziyoruz.
*********************************************************/

-- Fen Lisesi ogrencilerinin okul no , isim , derece, adres ve 
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim.
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin.

use sys;

create table fen_lisesi
(
okul_no char(3) unique,
isim varchar(25) not null,
derece double,
adres varchar(100),
last_update date   
);

select * from fen_lisesi;

insert into fen_lisesi values (101, 'Mehmet Dag', 4.5, 'Ankara', '2023-01-20');
insert into fen_lisesi values (102, 'Berrin Hanim', 4.6, 'Istanbul', '2023-01-18');
insert into fen_lisesi values (103, 'Mehmet Erden', 3.9, 'Izmir', '2023-01-19');
insert into fen_lisesi values (104, 'Sinan Bey', 4.7, 'Istanbul', '2023-01-20');
insert into fen_lisesi values (105, 'Esra Turker', 4.9, 'Ankara', '2023-01-18');
insert into fen_lisesi values (106, 'Esra Turker', 4.9, 'Ankara', '2023-01-18');
insert into fen_lisesi values (107, null, 4.9, 'Ankara', '2023-01-18');
-- tabloda belirttiğimiz için null kabul etmiyor
insert into fen_lisesi values (107, 'Mehmet Filik', 3.4, 'Izmir', null);
insert into fen_lisesi values (108, 'Burcu Tembel', 3.5, null, '2023-01-18');
insert into fen_lisesi values (109, 'Sevgi Sever', null, 'Istanbul', '2023-01-18');
insert into fen_lisesi values (null, 'Derya Dursun', 4.6, 'Istanbul', '2023-01-18'); 
-- normalde unique olarak belirledigimiz bir field birden fazla null deger kabul etmez
-- ama MYSQL unique olarak belirledigimiz field icin birden fazla null deger kabul eder
insert into fen_lisesi values (null, 'Erdal Akgün', 4.8, 'Ankara', '2023-01-18');
insert into fen_lisesi values ('', 'Erdal Akgün', 4.8, 'Ankara', '2023-01-18'); 
insert into fen_lisesi values ('', 'Kubra Tankisi', 4.8, 'Izmır', '2023-01-18');
-- unique olarak belirdeğimiz bir field birden fazla hiclik '' kabul etmez

/* ----------------------------------------------
Q1 : okul_no , isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak
------------------------------------------------- */

create table anadolu_lisesi
(
okul_no char(4) unique,
isim varchar(25) not null,
adres varchar(100),
derece double
);

select * from anadolu_lisesi;

insert into anadolu_lisesi values(1000, 'Ayse Sezen', 'Duisburg', 4.9);
insert into anadolu_lisesi values(1001, 'Burhan Semiz', 'Amasya', 3.9);
insert into anadolu_lisesi values(1002, 'Anil Fidan', 'Ankara', 4.5);
insert into anadolu_lisesi values(1003, 'Sule Serindik', null, 3.7);
insert into anadolu_lisesi values(1004, 'Hakan Unlu', 'Diyarbakır', null);
insert into anadolu_lisesi values('', 'Duygu Olcay', 'Diyarbakır', 3.7);
insert into anadolu_lisesi values(1005, 'Burcu Torbaci', 'Izmir', 3.7); 

insert into anadolu_lisesi (okul_no, isim, derece) values(1006, 'Mehmet Emre',  4.2);
-- bu sekilde sedece istedigimiz field'lara deger atayabiliriz
insert into anadolu_lisesi (isim, okul_no, derece) values('Emre Cigit', 1007,  4.2);
-- insert'da deger ekleyecegimiz field'larin yerini degistirirsek
-- ekleyecegimiz degerlerinde yerlerini ona uygun olarak degistirmeliyiz
insert into anadolu_lisesi (adres,okul_no,isim) values('Izmir', '1008', 'Berke Bey');











