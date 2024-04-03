# Waterfall Süreç Modeli ile Müzik Veritabanı


## - Planlama

    Projenin maaliyeti müşteriye bildirilir. Veritabanını oluşturmak için gerekli yetkinliğe sahip kişiler projeye dahil edilir.


## - Gereksinim Analizi

    Bir müzik uygulamasında,

    Kullanıcıların kişisel bazı bilgilerini, hesap abonelik türlerini, çalma listelerini gösteren, 
    Kullanıcıların sahip olduğu abonelik fiyatlandırma ve ayrıcalıklarını belirten,
    Kullanıcıların oluşturduğu çalma listelerini ve çalma listelerindeki şarkıları listeleyen,
    Sanatçıların şarkılarını ve albümlerini göstermek için kullanılacak bir ilişkisel veritabanı oluşturmak.

## - Tasarım

    Tasarım aşamasında ilişkisel veri tabanı yapısı kullanılacaktır. 
    
    Bir kullanıcının birden fazla çalma listesinin olabileceğini ve bir çalma listesinin sadece bir kullanıcının sahip olabileceğini, (One-to-Many)
    Bir çalma listesi birden fazla şarkı içerebileceğini, bir şarkının  birden fazla çalma listesinde olabileceğini, (Many-to-Many)
    Bir şarkının sadece bir albümde olabileceğini, ve bir albümün içinde birden fazla şarkının olabileceğini, (One-to-Many)
    Bir şarkı sadece bir sanatçıya ait olabileceğini, bir sanatçının birden fazla şarkısının olabileceğini, (One-to-Many)
    Bir kullanıcının sadece bir abonelik türünün olabileceğini, bir abonelik türünün birden fazla kullanıcının sahip olabileceiğini, (One-to-Many)
    diyagram ile gösterilecektir.

### Oluşturulacak tablolar arasındaki ilişkiler ve tablo içindeki verilerin şema diyagramı ile gösterimi:

![Diyagram](https://github.com/PEKTASCH/VeriTabani/assets/108456677/0336e6c2-ea03-4243-bf13-f1cf461e51d2)
![SQLDiagram](https://github.com/PEKTASCH/VeriTabani/assets/108456677/02f2ee26-67ce-4423-8e4f-18b6e5a7cae6)

## - Kodlama

    SQL Server Managment Studio ile tasarımı oluşuturulan ilişkisel veri tabanı için kodlama aşamasına geçilir. 
    Veritabanı yaratılacak.
    Tablolar oluşturulacak.
    Oluşturulan tablolar için veri girişi yapılacak.

#### Veritabanı Oluşturulur

```sql
CREATE DATABASE MuzikVeritabani;
```

#### Tasarım Aşamasındaki Tablolar Oluşturulur
```sql
CREATE TABLE Kullanicilar (
    KullaniciID INT PRIMARY KEY,  /*KullaniciID" sütununu "Kullanici" tablosundaki otomatik artış, birincil anahtar alanı olarak tanımlanır. */
    KullaniciAdi VARCHAR(100) NOT NULL,  /*Her kullanıcının kullanıcı adı olmalı.*/
    Mail VARCHAR(150) UNIQUE NOT NULL,
    AbonelikID INT,
    FOREIGN KEY (AbonelikID) REFERENCES Abonelikler(AbonelikID)
);
```

```sql
CREATE TABLE Abonelikler (
    AbonelikID INT PRIMARY KEY,
    PlanIsmi VARCHAR(255) NOT NULL,
    Fiyat VARCHAR(15) NOT NULL,   /* '8.99 TL'*/
    Ayricaliklar TEXT  /*Boyutu kadar yer kaplaması için TEXT kullandım.*/
);
```

```sql
CREATE TABLE Sarkilar (
    SarkiID INT PRIMARY KEY,
    SarkiAdi VARCHAR(255) NOT NULL,
    SanatciID INT,  /*SanatciID*/
    AlbumID INT,
    Sure DECIMAL,
    YayinlanmaTarihi DATE,
    Tur VARCHAR(100),  /* Şarkı türü */
    FOREIGN KEY (AlbumID) REFERENCES Albumler(AlbumID),
    FOREIGN KEY (SanatciID) REFERENCES Sanatcilar(SanatciID)
);
```

```sql
CREATE TABLE CalmaListeleri (
    CalmaListesiID INT PRIMARY KEY,
    Baslik VARCHAR(255) NOT NULL,
    Aciklama TEXT,   /*Kullanici calma listesine bir açıklama yazmışsa açıklamasını göster.*/
    OlusturmaTarihi DATE,
    KullaniciID INT
    FOREIGN KEY (KullaniciID) REFERENCES Kullanicilar(KullaniciID)
);
```

```sql
CREATE TABLE CalmaListesiSarkilari (  /*Bakım aşamalarında kullanıcıların gizli listeler yapabilmesi için yeni listeler oluşturulabilir, geliştirilebilir.*/
    CalmaListesiID INT,
    SarkiID INT,
    PRIMARY KEY (CalmaListesiID, SarkiID),
    FOREIGN KEY (CalmaListesiID) REFERENCES CalmaListeleri(CalmaListesiID),
    FOREIGN KEY (SarkiID) REFERENCES Sarkilar(SarkiID)
);
```

```sql
CREATE TABLE Albumler (
    AlbumID INT PRIMARY KEY,
    Baslik VARCHAR(255) NOT NULL,
    Sanatci VARCHAR(200) NOT NULL,
    YayinlanmaTarihi DATE
);
```

```sql
CREATE TABLE Albumler (
    AlbumID INT PRIMARY KEY,
    Baslik VARCHAR(255) NOT NULL,
    Sanatci VARCHAR(200) NOT NULL,
    YayinlanmaTarihi DATE
);
```

#### Oluşturulan Tablolara Veri Girişi Yapılır

```sql
INSERT INTO Abonelikler (AbonelikID, PlanIsmi, Fiyat, Ayricaliklar )  VALUES
(1, 'Ucretsiz Abonelik', '0 TL', 'Kullanıcı sarki dinlerken reklamlar dinleyerek uygulamaya katkida bulunur.' ),
(2, 'Ucretli Aylik Abonelik', '20 TL', 'Kullanıcı aylik 20 TL ile reklamsiz müzik dinleyebilir.' ),
(3, 'Ucretli Ogrenci Aylik Abonelik', '10 TL', 'Kullanıcı aylik 20 TL ile reklamsiz müzik dinleyebilir.'),
(4, 'Ucretli Yillik Abonelik', '200 TL', 'Kullanıcı aylik 200 TL ile reklamsiz müzik dinleyebilir.'),
(5, 'Ucretli Ogrenci Yillik Abonelik', '100 TL', 'Kullanıcı yillik 100 TL ile reklamsiz müzik dinleyebilir.');
```

```sql
INSERT INTO Kullanicilar (KullaniciID, KullaniciAdi, Mail, AbonelikID )  VALUES    /*Bir kullanıcı sadece bir aboneliğe sahip olabilir. (One-to-Many)*/
(0001, 'PEKTASCH', 'Kullanici1@mail.com', 3),
(0002, 'Kullanici2', 'Kullanici2@mail.com', 1),
(0003, 'Kullanici3', 'Kullanici3@mail.com', 4),
(0004, 'Kullanici4', 'Kullanici4@mail.com', 4),
(0005, 'Kullanici5', 'Kullanici5@mail.com', 2),
(0006, 'Kullanici6', 'Kullanici6@mail.com', 5),
(0007, 'Kullanici7', 'Kullanici7@mail.com', 3);
```

```sql
INSERT INTO Sarkilar (SarkiID, SarkiAdi, SanatciID, AlbumID, Sure, YayinlanmaTarihi, Tur) VALUES /*SanatciID mi Yoksa Sanatci mi? Test edilecek.*/
(1, 'Düşünce', 001, 1, 3.57, '1981-01-01','Türkçe Pop'),
(2, 'Ağlamak Güzeldir', 001, 1, 2.46, '1981-01-01', 'Türkçe Pop'),
(3, 'Yak Bir Sigara', 001, 1, 4.02, '1981-01-01', 'Türkçe Pop'),
(4, 'Köprü', 001, 1, 3.14, '1981-01-01', 'Türkçe Pop'),
(5, 'Yalnız Kullar', 001, 1, 3.43, '1981-01-01', 'Türkçe Pop'),
(6, 'En Uzun Gece', 001, 1, 4.03, '1981-01-01', 'Türkçe Pop'),
(7, 'Biliyorsun', 001, 1, 5.16, '1981-01-01', 'Türkçe Pop'),
(8, 'Ben Her Bahar Aşık Olurum', 001, 1, 3.47, '1981-01-01', 'Türkçe Pop'),
(9, 'Lunapark', 001, 1, 3.51, '1981-01-01', 'Türkçe Pop'),
(10, 'Hoşgörü', 001, 1, 3.17, '1981-01-01', 'Türkçe Pop'),
(11, 'Hadi Bakalım', 001, 2, 4.56, '1991-07-16', 'Türkçe Pop'),
(12, 'Tutsak', 001, 2, 6.28, '1991-07-16', 'Türkçe Pop'),
(13, 'Ne Kavgam Bitti Ne Sevdam', 001, 2, 3.28, '1991-07-16', 'Türkçe Pop'),
(14, 'Gülümse', 001, 2, 5.03, '1991-07-16', 'Türkçe Pop'),
(15, 'Güllerim Soldu', 001, 2, 4.31, '1991-07-16', 'Türkçe Pop'),
(16, 'Vazgeçtim', 001, 2, 5.09, '1991-07-16', 'Türkçe Pop'),
(17, 'Her Şeyi Yak', 001, 2, 5.14, '1991-07-16', 'Türkçe Pop'),
(18, 'Hadi Bakalım', 001, 2, 4.56, '1991-07-16', 'Türkçe Pop'),
(19, 'Namus', 001, 2, 3.56, '1991-07-16', 'Türkçe Pop'),
(20, 'Seni Kimler Aldı', 001, 2, 3.28, '1991-07-16', 'Türkçe Pop'),
(21, 'Değer mi?', 001, 2, 3.25, '1991-07-16', 'Türkçe Pop'),
(22, 'Acıyor', 002, 3, 3.29, '09-01-2012', 'Türkçe Pop'),
(23, 'Aşkın Yalanmış', 002, 3, 4.03, '2012-09-01', 'Türkçe Pop'),
(24, 'Rüzgar', 002, 3, 3.43, '2012-09-01', 'Türkçe Pop'),
(25, 'Uzaktan', 002, 3, 3.39, '2012-09-01', 'Türkçe Pop'),
(26, 'Aşk Bitti', 002, 3, 3.48, '2012-09-01', 'Türkçe Pop'),
(27, 'Aşkın Yalanmış', 002, 3, 4.56, '2012-09-01', 'Türkçe Pop'),
(28, 'Unuttun mu Sahi', 002, 3, 3.35, '2012-09-01', 'Türkçe Pop'),
(29, 'Sarhoş', 002, 3, 4.00, '2012-09-01', 'Türkçe Pop'),
(30, 'Gidemiyorum', 002, 3, 4.24, '2012-09-01', 'Türkçe Pop'),
(31, 'Yalnız Kuş', 002, 3, 4.01, '2012-09-01', 'Türkçe Pop'),
(32, 'Yarım Kalan Şarkı', 002, 3, 3.05, '2012-09-01', 'Türkçe Pop'),
(33, 'Uzun Uzun Yollar', 002, 4, 3.43, '1997-05-01', 'Türkçe Pop'),
(34, 'Unut Dediler', 002, 4, 4.38, '1997-05-01', 'Türkçe Pop'),
(35, 'Sabır', 002, 4, 4.12, '1997-05-01', 'Türkçe Pop'),
(36, 'Dön', 002, 4, 4.47, '1997-05-01', 'Türkçe Pop'),
(37, 'Olur Ya', 002, 4, 5.03, '1997-05-01', 'Türkçe Pop'),
(38, 'Kurşuni Renkler', 002, 4, 4.25, '1997-05-01', 'Türkçe Pop'),
(39, 'Yakışıklı', 002, 4, 3.39, '1997-05-01', 'Türkçe Pop'),
(40, 'Evire Çevire', 002, 4, 3.38, '1997-05-01', 'Türkçe Pop'),
(41, 'Sensiz Kalınca', 002, 4, 4.29, '1997-05-01', 'Türkçe Pop'),
(42, 'Benim Şarkım', 002, 4, 5.21, '1997-05-01', 'Türkçe Pop');
```

```sql
INSERT INTO CalmaListeleri (CalmaListesiID, Baslik, Aciklama, OlusturmaTarihi, KullaniciID) VALUES 
(1, 'CalmaListesi1', 'CalmaListesiAciklamasi1', '2023-02-12', 0001),
(2, 'CalmaListesi2', 'CalmaListesiAciklamasi2', '2022-09-14', 0002),
(3, 'CalmaListesi3', ' ', '2019-05-30', 0003),
(4, 'CalmaListesi4', 'CalmaListesiAciklamasi4', '2023-12-11', 0004),  
(5, 'CalmaListesi5', 'CalmaListesiAciklamasi5', '2024-02-01', 0005),
(6, 'CalmaListesi6', 'CalmaListesiAciklamasi6', '2022-09-14', 0006),
(7, 'CalmaListesi7', 'CalmaListesiAciklamasi7', '2023-02-12', 0007),
(8, 'CalmaListesi8', 'CalmaListesiAciklamasi8', '2023-03-19', 0001);
```

```sql
INSERT INTO CalmaListesiSarkilari (CalmaListesiID, SarkiID) VALUES 
(1, 37),
(2, 37),
(1, 33),
(1, 3),
(1, 42),
(2, 16),
(2, 25),
(1, 38);
```

```sql
INSERT INTO Albumler (AlbumID, Baslik, Sanatci, YayinlanmaTarihi) VALUES 
(1, 'Ağlamak Güzeldir', 'Sezen Aksu', '1981-01-01'),
(2, 'Gülümse', 'Sezen Aksu', '1991-07-16'),
(3, 'Bende Bi Aşk Var', 'Göksel', '2012-09-01'),
(4, 'Yollar', 'Göksel', '1997-05-01');
```

```sql
INSERT INTO Sanatcilar (SanatciID, SanatciAdi, Tur) VALUES 
(001, 'Sezen Aksu', 'Türkçe Pop'),
(002, 'Göksel', 'Türkçe Pop' );
```

## - Test

### Veritabanına Yapılan Bazı Sorgu Örnekleri 


```sql
-- Calma Listelerini listeleme:

SELECT*FROM CalmaListeleri
```
![SelectFromCalmaListeleri](https://github.com/PEKTASCH/VeriTabani/assets/108456677/875c9c83-fb03-4bca-92a4-777299356386)


```sql
-- En az çalma süresine sahip şarkı adını, yayınlanma tarihini ve süresini gösterir:

SELECT SarkiAdi, YayinlanmaTarihi, Sure
    FROM Sarkilar
    WHERE Sure = 
                (SELECT MIN(Sure)
                FROM Sarkilar);
```
![En Az Süreye Sahip Şarkı](https://github.com/PEKTASCH/VeriTabani/assets/108456677/58c52de1-ad71-4d6d-8a65-b0aad0da61e9)

## - Yayınlama ve Bakım

Oluşturulan veri tabanı kullanıcıya sunulur. Bakım aşamasında karşılaşılan problemler çözüme kavuşturulur.

### Karşılaşılan Sorun

![En Az Süreye Sahip Şarkı](https://github.com/PEKTASCH/VeriTabani/assets/108456677/c339c6da-bbd0-4ea9-9b24-a75d67cb83f5)
![Decimal 2 00](https://github.com/PEKTASCH/VeriTabani/assets/108456677/029c998d-b6f3-4eb3-ba00-f6d257939184)

Sarkilar tablosunda decimal belirtilmesine rağmen şarkı sürelerinin saniye bölümü sorguda gözükmemiştir. 
Bu hata tespitine göre başlangıçta SQL default olarak DECİMAL(18,0) türünde süreyi tanımlamıştır.
Önce DECİMAL(10,2) şeklinde değişiklik yapılarak tabloya doğru dakika ve saniye değerleri girilmiş ve hata giderilmiştir.

### Çözüm Süreci

![SarkilarSureDüzeltildi](https://github.com/PEKTASCH/VeriTabani/assets/108456677/e4a6c5ca-e051-428b-b392-ac26095c76a6)

Sorugunun doğru şekilde sonuç vermesi için hata düzeltilmiştir. Sorgu sırasında saniye bölümü de gözükmektedir.
Bakım aşamasında, kullanıcıların diğer kullancıların da çalma listelerini ekleyebileceği bir alt yapı oluşturulur. Sistem geliştirilebilir.

















