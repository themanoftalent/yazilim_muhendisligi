CREATE TABLE Siniflar (
    SinifID INT PRIMARY KEY,
    SinifAdi VARCHAR(50)
);

CREATE TABLE Ogrenciler (
    OgrenciID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    DogumTarihi DATE,
    Cinsiyet VARCHAR(10),
    SinifID INT,
    FOREIGN KEY (SinifID) REFERENCES Siniflar(SinifID)
);

CREATE TABLE Ogretmenler (
    OgretmenID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    DogumTarihi DATE,
    Cinsiyet VARCHAR(10),
    Bolum VARCHAR(50)
);

CREATE TABLE Dersler (
    DersID INT PRIMARY KEY,
    DersAdi VARCHAR(100),
    OgretmenID INT,
    FOREIGN KEY (OgretmenID) REFERENCES Ogretmenler(OgretmenID)
);

CREATE TABLE DersProgrami (
    DersProgramiID INT PRIMARY KEY,
    SinifID INT,
    DersID INT,
    Gun VARCHAR(15),
    Saat TIME,
    FOREIGN KEY (SinifID) REFERENCES Siniflar(SinifID),
    FOREIGN KEY (DersID) REFERENCES Dersler(DersID)
);

CREATE TABLE Veliler (
    VeliID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    Telefon VARCHAR(15),
    Email VARCHAR(100)
);
