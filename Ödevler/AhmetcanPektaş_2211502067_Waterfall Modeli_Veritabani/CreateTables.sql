CREATE TABLE Kullanicilar (
    KullaniciID INT PRIMARY KEY,  /*KullaniciID" sütununu "Kullanici" tablosundaki otomatik artış, birincil anahtar alanı olarak tanımlanır. */
    KullaniciAdi VARCHAR(100) NOT NULL,  /*Her kullanıcının kullanıcı adı olmalı.*/
    Mail VARCHAR(150) UNIQUE NOT NULL,
    AbonelikID INT,
    FOREIGN KEY (AbonelikID) REFERENCES Abonelikler(AbonelikID)
);

CREATE TABLE Abonelikler (
    AbonelikID INT PRIMARY KEY,
    PlanIsmi VARCHAR(255) NOT NULL,
    Fiyat VARCHAR(15) NOT NULL,   /* '8.99 TL'*/
    Ayricaliklar TEXT  /*Boyutu kadar yer kaplaması için TEXT kullandım.*/
);

CREATE TABLE Sarkilar (
    SarkiID INT PRIMARY KEY,
    SarkiAdi VARCHAR(255) NOT NULL,
    SanatciID INT,  /*SanatciID*/
    AlbumID INT,
    Sure DECIMAL(10,2),
    YayinlanmaTarihi DATE,
    Tur VARCHAR(100),  /* Şarkı türü */
    FOREIGN KEY (AlbumID) REFERENCES Albumler(AlbumID),
    FOREIGN KEY (SanatciID) REFERENCES Sanatcilar(SanatciID)
);

CREATE TABLE CalmaListeleri (
    CalmaListesiID INT PRIMARY KEY,
    Baslik VARCHAR(255) NOT NULL,
    Aciklama TEXT,   /*Kullanici calma listesine bir açıklama yazmışsa açıklamasını göster.*/
    OlusturmaTarihi DATE,
    KullaniciID INT
    FOREIGN KEY (KullaniciID) REFERENCES Kullanicilar(KullaniciID)
);

CREATE TABLE CalmaListesiSarkilari (  /*Bakım aşamalarında kullanıcıların gizli listeler yapabilmesi için yeni listeler oluşturulabilir, geliştirilebilir.*/
    CalmaListesiID INT,
    SarkiID INT,
    PRIMARY KEY (CalmaListesiID, SarkiID),
    FOREIGN KEY (CalmaListesiID) REFERENCES CalmaListeleri(CalmaListesiID),
    FOREIGN KEY (SarkiID) REFERENCES Sarkilar(SarkiID)
);

CREATE TABLE Albumler (
    AlbumID INT PRIMARY KEY,
    Baslik VARCHAR(255) NOT NULL,
    Sanatci VARCHAR(200) NOT NULL,
    YayinlanmaTarihi DATE
);

CREATE TABLE Sanatcilar (
    SanatciID INT PRIMARY KEY,
    SanatciAdi VARCHAR(200) NOT NULL,
    Tur VARCHAR(100)
);