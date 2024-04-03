
--OGRENCILER TABLOSU

CREATE TABLE OGRENCILER(
OgrenciID int,
OgrenciAd VARCHAR(60),
OgrenciSoyad VARCHAR (60),
Cinsiyet VARCHAR (10),
OgrenciDogumTarihi DATE,
OgrenciTc char(11),
OgrenciEmail VARCHAR (60),
OgrenciTelefon VARCHAR (15),
OgrenciBolum VARCHAR (60),
);


--OGRETMENLER TABLOSU

CREATE TABLE OGRETMENLER(
OgretmenID int,
OgretmenAd VARCHAR(60),
OgretmenSoyad VARCHAR (60),
OgretmenEmail VARCHAR (60),
OgretmenTelefon VARCHAR (15),
BolumNo VARCHAR (10),
);

--BOLUMLER

CREATE TABLE BOLUMLER(
    BolumNo int,
    BolumAdı VARCHAR (30),
    FakulteNo int,
);

--FAKULTELER

CREATE TABLE FAKULTELER(
    FakulteNo int,
    FakulteAd VARCHAR (60),
    FakulteTelefon VARCHAR (15),

);

--ÖĞRENCİ VERİ GİRİŞİ

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020454, 'Rabia', 'Şen', 'Female', '1992-03-15', '67496308321', 'rabiassenn@gmail.com', '05412345678' 'Bilgisayar Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020453, 'Veysel', 'Soysal', 'Male', '2000-06-22', '86403851437', 'vyssoysal@gmail.com', '05323456789' ,'Bilgisayar Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020453, 'Serkan', 'Şenyüz', 'Male', '2000-11-13', '28428156710', 'serkansenyuzz@gmail.com', '05534567890' ,'Bilgisayar Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020451, 'Seçil', 'Alican', 'Female', '1995-12-01', '57385634794', 'ssecilalican@gmail.com', '05445678901','Endüstri Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020455, 'Hüseyin', 'Kara', 'Male', '1983-07-18', '27493674920', 'huseyinkara@gmail.com', '05356789012','Endüstri Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020456, 'Hilal', 'Taş', 'Female', '1991-02-28', '96362865013', 'hilaltas@gmail.com', '05367890123','Endüstri Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020457, 'Rukiye', 'Arslan', 'Female', '1993-11-09', '54274062864', 'arslanrukiye@gmail.com', '05578901234','Makine Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020458, 'Gökay', 'Gülmez', 'Male', '1992-05-17', '76296153094', 'gokaygulmez@gmail.com', '05489012345','Makine Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (211115020459, 'Zeliha', 'Kaya', 'Female', '1985-08-25', '64839572073', 'zelihakaya@gmail.com', '05690123456','Makine Mühendisliği');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204510, 'Şeyma', 'Yüce', 'Female', '1990-04-12', '54628439015', 'yuceseyma@gmail.com', '05301234567','Öğretmenlik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204511, 'Ahmet', 'Gün', 'Male', '1993-09-05', '14638594628', 'ahmetgun@gmail.com', '05512345678','Öğretmenlik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204512, 'Cansel', 'Erdoğan', 'Female', '1989-11-02', '43820964173', 'cansellerdgn@gmail.com', '05523456789','Öğretmenlik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204513, 'Elif', 'Sever', 'Female', '1994-06-19', '85296401642', 'elifseverr@gmail.com', '05445678970','Matematik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204514, 'Eren', 'Akçay', 'Male', '1991-03-11', '96738207152', 'erenakcay@gmail.com', '05645678901','Matematik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204515, 'Alp', 'Mertek', 'Male', '2004-10-27', '50987654321', 'mertekkalp@gmail.com', '05356789012','Matematik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204516, 'Neriman', 'Derebey', 'Female', '1993-04-04', '59876543210', 'nderebey@gmail.com', '05667890123','Güzel Sanatlar');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204517, 'Gülşah', 'Ayyıldız', 'Female', '1992-07-21', '98765432109', 'gulsahayyıldız@gmail.com', '05578901234','Güzel Sanatlar');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204518, 'Deniz', 'Yüksel', 'Female', '1990-01-08', '87654321098', 'yukseldeniz@gmail.com', '05489012345','Güzel Sanatlar');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204519, 'Mustafa', 'Karaca', 'Male', '1994-09-16', '76543210987', 'mustafakaraca@gmail.com', '05390123456','Hemşirelik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204520, 'Emine', 'Aktaş', 'Female', '1987-05-30', '65432109876', 'emineaktas@gmail.com', '05601234567','Hemşirelik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204521, 'Oğuzhan', 'Güney', 'Male', '2003-02-13', '54321098765', 'oguzguney@gmail.com', '05412345678','Hemşirelik');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204522, 'Ebrar', 'Vatansever', 'Female', '1992-05-31', '43210987654', 'ebrarvatansever@gmail.com', '05323456789','Tıbbi Görüntüleme');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204523, 'Osman', 'Bahçeli', 'Male', '1995-12-20', '32109876543', 'bahceliosman@gmail.com', '05634567890','Tıbbi Görüntüleme');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204524, 'Aslı', 'Sevil', 'Female', '1990-08-03', '21098765432', 'aslısevil@gmail.com', '05545678901','Tıbbi Görüntüleme');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204525, 'Serap', 'Yeşilyurt', 'Female', '1994-01-28', '10987654321', 'serapysl@gmail.com', '05356789012','Fizyoterapi');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204526, 'Davut', 'Bulut', 'Male', '1993-06-09', '09876543210', 'davutbulut@gmail.com', '05467890123','Fizyoterapi');

INSERT INTO OGRENCILER (OgrenciID, OgrenciAd, OgrenciSoyad, Cinsiyet, OgrenciDogumTarihi, OgrenciTc, OgrenciEmail, OgrenciTelefon,OgrenciBolum)
VALUES (2111150204527, 'Cem', 'Kaya', 'Male', '1991-03-17', '98765432109', 'Cemkaya@gmail.com', '05475691234','Fizyoterapi');

--ÖĞRETMEN VERİ GİRİŞİ

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11112, 'Meltem', 'Yılmaz', 'meltemyilmaz@gmail.com', '05551234567',1211);

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11113, 'Cenk', 'Aydın', 'cenkaydin@hotmail.com', '05552345678',1212);

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11114, 'Selim', 'Kaya', 'selimkaya@gmail.com', '05553456789',1213);

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11115, 'Burcu', 'Demir', 'burcudemir@yahoo.com', '05554567890',1311);

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11116, 'Can', 'Çelik', 'cancelik@gmail.com', '05555678901',1312);

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11117, 'Melike', 'Şahin', 'melike.sahin@hotmail.com', '05556789012',1313);

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11118, 'Tuana', 'Koç',  'tuanakoc@gmail.com', '05557890123',1411);

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11119, 'Eren', 'Şahbaz',  'erensahbaz@yahoo.com', '05558901234',1412);

INSERT INTO OGRETMENLER (OgretmenID, OgretmenAd, OgretmenSoyad,  OgretmenEmail, OgretmenTelefon,BolumNo)
VALUES (11120, 'Selma', 'Yıldırım', 'selmayildirim@gmail.com', '05559012345',1413);

--BÖLÜMLER VERİ GİRİŞİ

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1211,'Bilgisayar Mühendisliği',1);

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1212,'Elektrik Mühendisliği',1);

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1213,'Makine Mühendisliği',1);

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1311,'Öğretmenlik',2);

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1312,'Matematik',2);

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1313,'Güzel Sanatlar',2);

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1411,'Hemşirelik',3);

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1412,' Tıbbi Görüntüleme',3);

INSERT INTO BOLUMLER (BolumNo,BolumAdı,FakulteNo)
VALUES (1413,'Fizyoterapi',);

--Fakülteler


INSERT INTO FAKULTELER (FakulteNo,FakulteAd,FakulteTelefon)
VALUES (1,'Mühendislik Ve Doğa Bilimleri Fakültesi',12851);

INSERT INTO FAKULTELER (FakulteNo,FakulteAd,FakulteTelefon)
VALUES (2,'Eğitim Fakültesi',12852);

INSERT INTO FAKULTELER (FakulteNo,FakulteAd,FakulteTelefon)
VALUES (3,'Sağlık Fakültesi',12853);