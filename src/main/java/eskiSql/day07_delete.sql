/*================================== DELETE ============================================
DELETE FROM table_name komutu tablodaki tum recordlari siler.
Eger tum kayitlar silindikten sonra tabloyu gormek isterseniz size sadece bos bir tablo
gosterir. 
DELETE komutu sadece datalari siler, tabloyu silmez.
=======================================================================================*/

SELECT * FROM mart_satislar;

DELETE FROM mart_satislar;

/*===============================================================================================
-- DELETE FROM tablo_adi;  Tablonun tum icerigini siler.
-- Bu komut bir DML komutudur. Dolayisiyla devaminda WHERE gibi cumlecikler
-- kullanilabilir.
    
    -- DELETE FROM tablo_adi
    -- WHERE field = veri;
    
--    DELETE FROM ogrenciler;     -- Tum verileri sil.
--    SAVEPOINT ABC;    -- Verilen konuma kodlari kaydeder.
--    ROLLBACK TO ABC;  -- Silinen Verileri geri getir.
​
-- Bilgileri geri getirirken sikinti yasamamak icin ayarlar sql execution auto commit tiki kaldir
​
==================================================================================================*/ 

CREATE TABLE cucuklar
(
id char(3),
isim varchar(50),
veli_isim varchar(50),
yazili_notu int,
CONSTRAINT cocuklar_pk
PRIMARY KEY (id)
);

INSERT INTO cucuklar VALUES(123, 'Ali Can', 'Hasan',75); 
INSERT INTO cucuklar VALUES(124, 'Merve Gul', 'Ayse',85); 
INSERT INTO cucuklar VALUES(125, 'Kemal Yasa', 'Ali',85);

SELECT * FROM cucuklar;

-- Veli Ismi Ali ya da Ayse olan kaydi siliniz

DELETE FROM cucuklar
WHERE veli_isim = 'Ali' OR veli_isim = 'Ayse';

-- ya da

DELETE FROM cucuklar
WHERE veli_isim IN ('Ali', 'Ayse');

-- Yazili notu 84'ten buyuk olan cocuklari silin 

DELETE FROM cucuklar
WHERE yazili_notu > 84;

-- Yazili notu 85'ten farkli olan cocuklari silin 

DELETE FROM cucuklar
WHERE yazili_notu  != 85;

-- ya da

DELETE FROM cucuklar
WHERE NOT yazili_notu = 85;

-- ya da 

DELETE FROM cucuklar
WHERE yazili_notu <> 85;

-- Esit degildir anlaminda yukaridaki 3 yolu da kullanabiliriz

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

CREATE TABLE cocuk
    (
        id CHAR(3),
        isim VARCHAR(50),
        veli_isim VARCHAR(50),
        yazili_notu int       
    );
  
    INSERT INTO cocuk VALUES(123, 'Ali Can', 'Hasan',75);
    INSERT INTO cocuk VALUES(124, 'Merve Gul', 'Ayse',85);
	INSERT INTO cocuk VALUES(125, 'Kemal Yasa', 'Hasan',85);
    INSERT INTO cocuk VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
	INSERT INTO cocuk VALUES(127, 'Mustafa Bak', 'Can',99);

SELECT * FROM cocuk;

SAVEPOINT kayit1; -- Bu satirda olusturdugumuz yeni bir alana bilgileri kayit ediyoruz 

-- Id'si 124'ten buyuk olan kayitlari silin : 

DELETE FROM cocuk
WHERE id > 124;

ROLLBACK TO kayit1; -- Bu satiri calistirirsak, savepoint aldigimiz yere geri doneriz
					-- Kisacasi sildigimiz ya da degistirdigimiz veriler geri gelir

/* ============================= DELETE - TRUNCATE - DROP ================================   
  
  => TRUNCATE TABLE komutu tablodaki tum datalari kalici olarak siler
  => Truncate ve Delete komutlarinin ikisi de bir tabloda bulunan recordlari silmek icin kullanilir.
  => Iki komut da sadece belirtilen tablodaki kayitlari siler.
  => En belirgin farki ise Delete komutu ile belirli bir araligi silebilirken,
  => Truncate komutu tablodaki tum verileri siler.
  
  1-) TRUNCATE komutu DELETE komutu gibi bir tablodaki verilerin tamamini siler.
    Ancak, secmeli silme yapamaz. Cunku Truncate komutu DML degil DDL komutudur.*/ 
    
TRUNCATE TABLE cocuklar; -- dogru yazim

DROP TABLE puanlar;

DELETE FROM cocuklar
WHERE id>125;
  
SELECT * FROM cocuklar;

SELECT * FROM puanlar;
       
   /* 2-) DELETE komutu beraberinde WHERE cumlecigi kullanilabilir. TRUNCATE ile 
    kullanilmaz.
    
        TRUNCATE TABLE ogrenciler
        WHERE veli_isim='Hasan';  .....yanlis yazim
        
-- TRUNCATE komutu tablo yapisini degistirmeden, 
-- tablo icinde yer alan tum verileri tek komutla silmenizi saglar.
        
    3-) Delete komutu ile silinen veriler ROLLBACK Komutu ile kolaylikla geri 
    alinabilir.
    
    4-) Truncate ile silinen veriler geri alinmasi daha zordur. Ancak
    Transaction yontemi ile geri alinmasi mumkun olabilir.
    
    5-) DROP komutu da bir DDL komutudur. Ancak DROP veriler ile birlikte tabloyu da 
    siler. 
    
    -- Tablodaki kayitlari silmek ile tabloyu silmek farkli islemlerdir.
	-- Silme komutlari da iki basamaklidir, biz genelde geri getirilebilecek sekilde sileriz. 
	-- Ancak bazen guvenlik gibi sebeplerle geri getirilmeyecek sekilde silinmesi istenebilir.
​
==============================================================================*/

use sys;





