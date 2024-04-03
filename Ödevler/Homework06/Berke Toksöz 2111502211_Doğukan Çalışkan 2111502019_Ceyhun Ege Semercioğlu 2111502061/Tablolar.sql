

CREATE TABLE Fakulte (
    FakulteID INT PRIMARY KEY,
    FakulteAdi VARCHAR(100),
    DekanAdi VARCHAR(50),
    Telefon VARCHAR(15),
    Adres VARCHAR(255)
);


CREATE TABLE Bolum (
    BolumID INT PRIMARY KEY,
    BolumAdi VARCHAR(100),
    FakulteID INT,
    FOREIGN KEY (FakulteID) REFERENCES Fakulte(FakulteID)
);


CREATE TABLE Ogrenci (
    OgrenciID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    DogumTarihi DATE,
    Cinsiyet CHAR(1),
    BolumID INT,
    FOREIGN KEY (BolumID) REFERENCES Bolum(BolumID)
);


CREATE TABLE Ogretmen (
    OgretmenID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    DogumTarihi DATE,
    Cinsiyet CHAR(1),
    BolumID INT,
    FOREIGN KEY (BolumID) REFERENCES Bolum(BolumID)
);