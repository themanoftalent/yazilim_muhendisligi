-- Üyeler Tablosu
CREATE TABLE Uyeler (
    UyeID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    DogumTarihi DATE,
    Cinsiyet CHAR(1),
    Email VARCHAR(100),
    Telefon VARCHAR(20),
    Adres VARCHAR(255)
);

-- Yazarlar Tablosu
CREATE TABLE Yazarlar (
    YazarID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    DogumTarihi DATE,
    Ulke VARCHAR(100)
);

-- Kategoriler Tablosu
CREATE TABLE Kategoriler (
    KategoriID INT PRIMARY KEY,
    KategoriAdi VARCHAR(100)
);

-- Yayın Evleri Tablosu
CREATE TABLE YayinEvleri (
    YayineviID INT PRIMARY KEY,
    YayineviAdi VARCHAR(100),
    Adres VARCHAR(255),
    Ulke VARCHAR(100)
);

-- Kitaplar Tablosu
CREATE TABLE Kitaplar (
    KitapID INT PRIMARY KEY,
    KitapAdi VARCHAR(255),
    YazarID INT,
    KategoriID INT,
    YayineviID INT,
    YayinYili INT,
    Dil VARCHAR(50),
    SayfaSayisi INT,
    ISBN VARCHAR(20),
    Fiyat DECIMAL(10, 2),
    FOREIGN KEY (YazarID) REFERENCES Yazarlar(YazarID),
    FOREIGN KEY (KategoriID) REFERENCES Kategoriler(KategoriID),
    FOREIGN KEY (YayineviID) REFERENCES YayinEvleri(YayineviID)
);

-- Stoklar Tablosu
CREATE TABLE Stoklar (
    StokID INT PRIMARY KEY,
    KitapID INT,
    Miktar INT,
    RafKonumu VARCHAR(100),
    FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID)
);

-- Ödünç Alma Tablosu
CREATE TABLE OduncAlmalar (
    OduncAlmaID INT PRIMARY KEY,
    UyeID INT,
    KitapID INT,
    OduncAlmaTarihi DATE,
    GeriVermeTarihi DATE,
    Durum VARCHAR(50),
    FOREIGN KEY (UyeID) REFERENCES Uyeler(UyeID),
    FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID)
);

-- Geciken İşlemler Tablosu
CREATE TABLE GecikenIslemler (
    GecikmeID INT PRIMARY KEY,
    OduncAlmaID INT,
    GecikmeGunleri INT,
    CezaMiktari DECIMAL(10, 2),
    FOREIGN KEY (OduncAlmaID) REFERENCES OduncAlmalar(OduncAlmaID)
);