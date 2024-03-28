--HASTALAR TABLOSU

CREATE TABLE HASTALAR(
HastaSiraNo int,
HastaAd VARCHAR(30),
HastaSoyad VARCHAR (30),
Cinsiyet VARCHAR (10),
HastaDogumTarihi DATE,
HastaTc char(11),
HastaEmail VARCHAR (30),
HastaTelefon VARCHAR (15)
);


--DOKTORLAR TABLOSU

CREATE TABLE DOKTORLAR(
DoktorID int,
DoktorAd VARCHAR(30),
DoktorSoyad VARCHAR(30),
UzmanlikAlani VARCHAR(30),
DoktorEmail VARCHAR (30),
DoktorTelefon VARCHAR (30)
);


--KADIN DOĞUM BÖLÜMÜ

CREATE TABLE KADINDOGUM(
HastaSiraNo NUMBER,
HastaAd VARCHAR (30),
HastaSoyad VARCHAR (30),
Cinsiyet VARCHAR (10),
HastaDogumTarihi DATE,
HastaTc char(11),
DoktorID int,
Teshis VARCHAR (100),
ReceteNo VARCHAR (15)
);


--KBB BÖLÜMÜ
CREATE TABLE KBB(
HastaSiraNo int,
HastaAd VARCHAR (30),
HastaSoyad VARCHAR (30),
Cinsiyet VARCHAR (10),
HastaDogumTarihi DATE,
HastaTc char(11),
DoktorID NUMBER,
Teshis VARCHAR (100),
ReceteNo VARCHAR (15)
);

--Dahiliye BÖLÜMÜ


CREATE TABLE DAHİLİYE(
HastaSiraNo İNT,
HastaAd VARCHAR (30),
HastaSoyad VARCHAR (30),
Cinsiyet VARCHAR (10),
HastaDogumTarihi DATE,
HastaTc CHAR(11),
DoktorID int,
Teshis VARCHAR (100),
ReceteNo VARCHAR (15)
);


--DERMATOLOJİ


CREATE TABLE DERMATOLOJI(
HastaSiraNo int,
HastaAd VARCHAR (30),
HastaSoyad VARCHAR (30),
Cinsiyet VARCHAR (10),
HastaDogumTarihi DATE,
HastaTc char(11),
DoktorID int,
Teshis VARCHAR (100),
ReceteNo VARCHAR (15)
);



--GÖZ HASTALIKLARI

CREATE TABLE GOZ(
HastaSiraNo int,
HastaAd VARCHAR (30),
HastaSoyad VARCHAR (30),
Cinsiyet VARCHAR (10),
HastaDogumTarihi DATE,
HastaTc char(11),
DoktorID int,
Teshis VARCHAR (100),
ReceteNo VARCHAR (15)
);


--HASTA VERİ KAYDI

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (4, 'Rabia', 'Şen', 'Female', '1992-03-15', '67496308321', 'rabiassenn@gmail.com', '05412345678');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (31, 'Veysel', 'Soysal', 'Male', '2000-06-22', '86403851437', 'vyssoysal@gmail.com', '05323456789');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (3, 'Serkan', 'Şenyüz', 'Male', '2000-11-13', '28428156710', 'serkansenyuzz@gmail.com', '05534567890');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (1, 'Seçil', 'Alican', 'Female', '1995-12-01', '57385634794', 'ssecilalican@gmail.com', '05445678901');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (5, 'Hüseyin', 'Kara', 'Male', '1983-07-18', '27493674920', 'huseyinkara@gmail.com', '05356789012');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (6, 'Hilal', 'Taş', 'Female', '1991-02-28', '96362865013', 'hilaltas@gmail.com', '05367890123');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (7, 'Rukiye', 'Arslan', 'Female', '1993-11-09', '54274062864', 'arslanrukiye@gmail.com', '05578901234');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (8, 'Gökay', 'Gülmez', 'Male', '1992-05-17', '76296153094', 'gokaygulmez@gmail.com', '05489012345');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (9, 'Zeliha', 'Kaya', 'Female', '1985-08-25', '64839572073', 'zelihakaya@gmail.com', '05690123456');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (10, 'Şeyma', 'Yüce', 'Female', '1990-04-12', '54628439015', 'yuceseyma@gmail.com', '05301234567');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (11, 'Ahmet', 'Gün', 'Male', '1993-09-05', '14638594628', 'ahmetgun@gmail.com', '05512345678');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (12, 'Cansel', 'Erdoğan', 'Female', '1989-11-02', '43820964173', 'cansellerdgn@gmail.com', '05523456789');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (13, 'Elif', 'Sever', 'Female', '1994-06-19', '85296401642', 'elifseverr@gmail.com', '05445678970');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (14, 'Eren', 'Akçay', 'Male', '1991-03-11', '96738207152', 'erenakcay@gmail.com', '05645678901');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (15, 'Alp', 'Mertek', 'Male', '2004-10-27', '50987654321', 'mertekkalp@gmail.com', '05356789012');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (16, 'Neriman', 'Derebey', 'Female', '1993-04-04', '59876543210', 'nderebey@gmail.com', '05667890123');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (17, 'Gülşah', 'Ayyıldız', 'Female', '1992-07-21', '98765432109', 'gulsahayyıldız@gmail.com', '05578901234');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (18, 'Deniz', 'Yüksel', 'Female', '1990-01-08', '87654321098', 'yukseldeniz@gmail.com', '05489012345');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (19, 'Mustafa', 'Karaca', 'Male', '1994-09-16', '76543210987', 'mustafakaraca@gmail.com', '05390123456');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (20, 'Emine', 'Aktaş', 'Female', '1987-05-30', '65432109876', 'emineaktas@gmail.com', '05601234567');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (21, 'Oğuzhan', 'Güney', 'Male', '2003-02-13', '54321098765', 'oguzguney@gmail.com', '05412345678');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (22, 'Ebrar', 'Vatansever', 'Female', '1992-05-31', '43210987654', 'ebrarvatansever@gmail.com', '05323456789');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (23, 'Osman', 'Bahçeli', 'Male', '1995-12-20', '32109876543', 'bahceliosman@gmail.com', '05634567890');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (24, 'Aslı', 'Sevil', 'Female', '1990-08-03', '21098765432', 'aslısevil@gmail.com', '05545678901');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (25, 'Serap', 'Yeşilyurt', 'Female', '1994-01-28', '10987654321', 'serapysl@gmail.com', '05356789012');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (26, 'Davut', 'Bulut', 'Male', '1993-06-09', '09876543210', 'davutbulut@gmail.com', '05467890123');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (27, 'Samet', 'Erkuş', 'Male', '1991-03-17', '98765432109', 'sameterkuss@gmail.com', '05478901234');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (28, 'Fatma', 'Durusoy', 'Female', '1995-10-02', '87654321098', 'fatmadurusoy@gmail.com', '05689012345');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (29, 'Aytuğ', 'Ulutaş', 'Male', '1992-07-11', '76543210987', 'aytulutas@gmail.com', '05490123456');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (30, 'Murat', 'Polat', 'Male', '2001-04-06', '65432109876', 'polatmurat@gmail.com', '05501234567');


INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (46, 'Murat', 'Polat', 'Male', '2001-04-06', '65432109876', 'polatmurat@gmail.com', '05501234567');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (47, 'Ayşe', 'Yılmaz', 'Female', '1999-12-15', '12345678901', 'ayseyilmaz@hotmail.com', '05502345678');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (32, 'Ahmet', 'Kaya', 'Male', '1985-07-22', '98765432101', 'ahmetkaya@gmail.com', '05503456789');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (33, 'Fatma', 'Şahin', 'Female', '1976-03-10', '56789012345', 'fatmasahin@yahoo.com', '05504567890');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (34, 'Mehmet', 'Demir', 'Male', '1990-09-28', '34567890123', 'mehmetdemir@hotmail.com', '05505678901');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (35, 'Zeynep', 'Çelik', 'Female', '1988-06-14', '89012345678', 'zeynepcelik@gmail.com', '05506789012');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (36, 'Ali', 'Koç', 'Male', '1979-11-03', '45678901234', 'alikoc@yahoo.com', '05507890123');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (37, 'Selin', 'Yıldırım', 'Female', '1995-02-19', '01234567890', 'selinyildirim@hotmail.com', '05508901234');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (38, 'Kadir', 'Şahbaz', 'Male', '1983-08-07', '78901234567', 'kadirsahbaz@gmail.com', '05509012345');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (39, 'Ceren', 'Yaman', 'Female', '2000-05-25', '23456789012', 'cerenyaman@yahoo.com', '05590123456');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (40, 'Onur', 'Şimşek', 'Male', '1987-10-12', '67890123456', 'onursimsek@gmail.com', '05591234567');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (41, 'Gül', 'Aydın', 'Female', '1993-01-28', '34567890129', 'gulaydin@hotmail.com', '05592345678');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (42, 'Emre', 'Tuncer', 'Male', '1974-12-09', '89012345678', 'emretuncer@yahoo.com', '05593456789');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (43, 'Aylin', 'Erdoğan', 'Female', '1998-07-17', '45678901234', 'aylinerdogan@gmail.com', '05594567890');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (44, 'Oğuz', 'Aksoy', 'Male', '1982-04-02', '90123456789', 'oguzaksoy@hotmail.com', '05595678901');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (45, 'Esra', 'Kayar' , 'Female' , '1973-03-28', '90125436789', 'esrakayar@gmail.com', '05456519605');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (48, 'Bora', 'Meydan', 'Male', '2000-08-17', '45612501234', 'borameydan55@gmail.com', '05598977890');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (49, 'Gökmen', 'Demiroğlu', 'Male', '2002-04-02', '48496163472', 'gokmendmr61@hotmail.com', '05308823899');

INSERT INTO HASTALAR (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc, HastaEmail, HastaTelefon)
VALUES (50, 'Vahittin', 'Ulusahin' , 'Male' , '1994-08-28', '25479856503', 'vahittinulusahin55@gmail.com', '05316270055');

--DOKTOR TABLOSU EKLEME

-- Kadın Doğum Uzmanı Doktorlar
INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11112, 'Meltem', 'Yılmaz', 'Kadın Doğum', 'meltemyilmaz@gmail.com', '05551234567');

INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11113, 'Cenk', 'Aydın', 'Kadın Doğum', 'cenkaydin@hotmail.com', '05552345678');

-- KBB Uzmanı Doktorlar
INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11114, 'Selim', 'Kaya', 'KBB', 'selimkaya@gmail.com', '05553456789');

INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11115, 'Burcu', 'Demir', 'KBB', 'burcudemir@yahoo.com', '05554567890');

-- DAHILIYE Doktorları
INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11116, 'Can', 'Çelik', 'Dahiliye', 'cancelik@gmail.com', '05555678901');

INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11117, 'Melike', 'Şahin', 'Dahiliye', 'melike.sahin@hotmail.com', '05556789012');

-- Dermatoloji Uzmanı Doktorlar
INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11118, 'Tuana', 'Koç', 'Dermatoloji', 'tuanakoc@gmail.com', '05557890123');

INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11119, 'Eren', 'Şahbaz', 'Dermatoloji', 'erensahbaz@yahoo.com', '05558901234');

-- Göz Hastalıkları Uzmanı Doktorlar
INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11120, 'Selma', 'Yıldırım', 'Göz Hastalıkları', 'selmayildirim@gmail.com', '05559012345');

INSERT INTO DOKTORLAR (DoktorID, DoktorAd, DoktorSoyad, UzmanlikAlani, DoktorEmail, DoktorTelefon)
VALUES (11121, 'Emir', 'Aydın', 'Göz Hastalıkları', 'emiraydin@hotmail.com', '05560123456');



KADIN DOGUM TABLOSU

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (4, 'Rabia', 'Şen', 'Female', '1992-03-15', '67496308321',  11113, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0001');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (31, 'Veysel', 'Soysal', 'Male', '2000-06-22', '86403851437', 11112, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0002');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (3, 'Serkan', 'Şenyüz', 'Male', '2000-11-13', '28428156710',  11113, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0003');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (1, 'Seçil', 'Alican', 'Female', '1995-12-01', '57385634794',  11112, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0004');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (5, 'Hüseyin', 'Kara', 'Male', '1983-07-18', '27493674920',  11113, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0005');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (6, 'Hilal', 'Taş', 'Female', '1991-02-28', '96362865013', 11112, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0006');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (7, 'Rukiye', 'Arslan', 'Female', '1993-11-09', '54274062864', 11113, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0007');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (8, 'Gökay', 'Gülmez', 'Male', '1992-05-17', '76296153094',  11112, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0008');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (9, 'Zeliha', 'Kaya', 'Female', '1985-08-25', '64839572073', 11113, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0009');

INSERT INTO KADINDOGUM (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (10, 'Şeyma', 'Yüce', 'Female', '1990-02-12', '54628439015',  11112, 'Kadın Doğum uzmanı tarafından muayene edilmiştir.', 'KD0010');



--KBB BÖLÜMÜ

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (11, 'Ahmet', 'Gün', 'Male', '1993-09-05', '14638594628', 11114, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB001');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (12, 'Cansel', 'Erdoğan', 'Female', '1989-11-02', '43820964173', 11115, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB002');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (13, 'Elif', 'Sever', 'Female', '1994-06-19', '85296401642',  11114, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB003');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (14, 'Eren', 'Akçay', 'Male', '1991-03-11', '96738207152',  11115, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB004');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (15, 'Alp', 'Mertek', 'Male', '2004-10-27', '50987654321',  11114, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB005');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (16, 'Neriman', 'Derebey', 'Female', '1993-04-04', '59876543210', 11115, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB006');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (17, 'Gülşah', 'Ayyıldız', 'Female', '1992-07-21', '98765432109',  11114, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB007');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (18, 'Deniz', 'Yüksel', 'Female', '1990-01-08', '87654321098', 11115, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB008');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (19, 'Mustafa', 'Karaca', 'Male', '1994-09-16', '76543210987', 11114, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB009');

INSERT INTO KBB (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (20, 'Emine', 'Aktaş', 'Female', '1987-05-30', '65432109876', 11115, 'KBB uzmanı tarafından muayene edilmiştir.', 'KBB010');


--DAHİLİYE BÖLÜMÜ

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (21, 'Oğuzhan', 'Güney', 'Male', '2003-02-13', '54321098765',  11116, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0001');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (22, 'Ebrar', 'Vatansever', 'Female', '1992-05-31', '43210987654', 11117, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0002');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (23, 'Osman', 'Bahçeli', 'Male', '1995-12-20', '32109876543',  11116, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0003');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (24, 'Aslı', 'Sevil', 'Female', '1990-08-03', '21098765432', 11117, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0004');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (25, 'Serap', 'Yeşilyurt', 'Female', '1994-01-28', '10987654321', 11116, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0005');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (26, 'Davut', 'Bulut', 'Male', '1993-06-09', '09876543210',  11117, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0006');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (27, 'Samet', 'Erkuş', 'Male', '1991-03-17', '98765432109',  11116, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0007');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (28, 'Fatma', 'Durusoy', 'Female', '1995-10-02', '87654321098', 11117, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0008');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (29, 'Aytuğ', 'Ulutaş', 'Male', '1992-07-11', '76543210987', 11116, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0009');

INSERT INTO DAHİLİYE (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (30, 'Murat', 'Polat', 'Male', '2001-04-06', '65432109876',  11117, 'Dahiliye uzmanı tarafından muayene edilmiştir.', 'DH0010');


--DERMATOLOJİ BÖLÜMÜ

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (47, 'Ayşe', 'Yılmaz', 'Female', '1999-12-15', '12345678901',  11118, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER001');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (32, 'Ahmet', 'Kaya', 'Male', '1985-07-22', '98765432101',  11119, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER002');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (33, 'Fatma', 'Şahin', 'Female', '1976-03-10', '56789012345',  11118, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER003');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (34, 'Mehmet', 'Demir', 'Male', '1990-09-28', '34567890123', 11119, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER004');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (35, 'Zeynep', 'Çelik', 'Female', '1988-06-14', '89012345678',  11118, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER005');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (36, 'Ali', 'Koç', 'Male', '1979-11-03', '45678901234',  11119, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER006');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (37, 'Selin', 'Yıldırım', 'Female', '1995-02-19', '01234567890', 11118, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER007');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (38, 'Kadir', 'Şahbaz', 'Male', '1983-08-07', '78901234567',  11119, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER008');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (39, 'Ceren', 'Yaman', 'Female', '2000-05-25', '23456789012',  11118, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER009');

INSERT INTO DERMATOLOJI (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (40, 'Onur', 'Şimşek', 'Male', '1987-10-12', '67890123456',  11119, 'Dermatoloji uzmanı tarafından muayene edilmiştir.', 'DER010');

--GÖZ HASTALIKLARI TABLOSU


INSERT INTO GOZ (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (41, 'Gül', 'Aydın', 'Female', '1993-01-28', '34567890129', 11120, 'Göz hastalıkları uzmanı tarafından muayene edilmiştir.', 'GOZ001');

INSERT INTO GOZ (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (42, 'Emre', 'Tuncer', 'Male', '1974-12-09', '89012345678',  11121, 'Göz hastalıkları uzmanı tarafından muayene edilmiştir.', 'GOZ002');

INSERT INTO GOZ (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (43, 'Aylin', 'Erdoğan', 'Female', '1998-07-17', '45678901234', 11120, 'Göz hastalıkları uzmanı tarafından muayene edilmiştir.', 'GOZ003');

INSERT INTO GOZ (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (44, 'Oğuz', 'Aksoy', 'Male', '1982-04-02', '90123456789', 11121, 'Göz hastalıkları uzmanı tarafından muayene edilmiştir.', 'GOZ004');

INSERT INTO GOZ (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (45, 'Esra', 'Kayar' , 'Female' , '1973-03-28', '90125436789',  11120, 'Göz hastalıkları uzmanı tarafından muayene edilmiştir.', 'GOZ005');

INSERT INTO GOZ (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (48, 'Bora', 'Meydan', 'Male', '2000-08-17', '45612501234', 11121, 'Göz hastalıkları uzmanı tarafından muayene edilmiştir.', 'GOZ006');

INSERT INTO GOZ (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (49, 'Gökmen', 'Demiroğlu', 'Male', '2002-04-02', '48496163472',  11120, 'Göz hastalıkları uzmanı tarafından muayene edilmiştir.', 'GOZ007');

INSERT INTO GOZ (HastaSiraNo, HastaAd, HastaSoyad, Cinsiyet, HastaDogumTarihi, HastaTc,  DoktorID, Teshis, ReceteNo)
VALUES (50, 'Vahittin', 'Ulusahin' , 'Male' , '1994-08-28', '25479856503',  11121,'Göz hastalıkları uzmanı tarafından muayene edilmiştir.', 'GOZ008');
















