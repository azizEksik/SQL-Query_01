use sys;

/*==================================SELECT-WHERE=============================================
Verileri SELECT komutu ile veritabanindan cekerken filtreleme yapmak icin : 
 
SELECT ile birlikte WHERE komutu kullanilabilir.
​
-----Syntax----- :
SELECT field1, field2 
FROM tablo_adi 
WHERE kosul;
​
-- SELECT -- hangi sutunlari(field) getirsin
-- FROM -- hangi tablodan(table) getirsin
-- WHERE -- hangi satirlari(record) getirsin
=========================================================================================*/



CREATE TABLE meslek_lisesi (
okul_no char(4) UNIQUE,
isim varchar(50) not null,
derece double,
adres varchar(100),
son_degisiklik_tarihi date
);

select * from meslek_lisesi;

insert into meslek_lisesi values('1001','Fatih Oz', 89,'Ankara', '2022-11-23');      
insert into meslek_lisesi values('1002','Fatih Yildiz', 94,'Istanbul', '2022-11-23');
insert into meslek_lisesi values('1003','Bora Sverige', 78,'Izmir', '2022-11-23');
insert into meslek_lisesi values('1004','Nevzat Celik', 69,'Ankara', '2022-11-23');
insert into meslek_lisesi values('1005','Gursel Unal', 90,'Istanbul', '2022-11-23');
insert into meslek_lisesi values('1006','Soner Karatasoglu ', 85,'Istanbul', '2022-11-23');
insert into meslek_lisesi values('1007','Talha Kurt', 75,'Ankara', '2022-11-23');
insert into meslek_lisesi values('1008','Yakup Lejon', 79,'Izmir', '2022-11-23');
insert into meslek_lisesi values('1009','Ilhan Gurbetci', 80,'Izmir', '2022-11-23');

-- Q1 : Meslek lisesinde kayitli ogrencilerin sadece isimlerini getirin

select isim
from meslek_lisesi;

-- Q2 : Meslek lisesinde kayitli ogrencilerin sadece sehirlerini getirin

select adres
from meslek_lisesi;

-- Q3 : Derecesi 90'dan yuksek olan ogrencilerin tum bilgilerini getirin

select *
from meslek_lisesi
where derece>90;

-- Q4 : derecesi 80'den kucuk olan ogrencilerin isimlerini listeleyin

select isim
from meslek_lisesi
where derece<80;

-- Q5 : Adresi Ankara olan ogrencilerin isim ve derece bilgilerini listeleyin

select isim,derece
from meslek_lisesi
where adres='Ankara';

-- Q6 : okul_no'su 1005 olan ogrencilerin isim ve adres bilgisini listeleyin

select isim, adres
from meslek_lisesi
where okul_no='1005';

-- Q7 : Derecesi 70 ile 80 arasında olan ogrencilerin okul_no ve adreslerini listeleyin

select okul_no,adres
from meslek_lisesi
where 70<derece and derece<80;








