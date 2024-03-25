create table DoktorBilgisi(
    DoktorID CHAR(11),
    DoktorunAdi varchar(50),
    DoktorunSoyadi varchar(50),
    DoktorunCinsiyeti char(5),
    DoktorUzmanlik varchar(50)
);

create table HastaBilgisi(
    HastaTC varchar(11) 
    HastaAdi varchar(50),
    HastaSoyadi varchar(50),
    HastaYas int,
    HastaCinsiyet char(5),
     
);
create table Randevu(
    DoktorID int,
    HastaTC VARCHAR(11),
    Bölümadi varchar(50),
    Tarih datetime
);

create table Teshis(
HastaTC CHAR(11),
Teshis varchar(100)
);

create table Recete(
ReceteID INT,
HastaID INT,
DoktorID INT
);


