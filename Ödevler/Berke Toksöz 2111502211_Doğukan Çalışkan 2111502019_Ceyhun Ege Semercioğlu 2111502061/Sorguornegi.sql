--Hangi öğretmenin hangi fakülte ve hangi bölümde olduğunu gösteren sorgu

SELECT 
    Ogretmen.Ad AS OgretmenAdi,
    Ogretmen.Soyad AS OgretmenSoyadi,
    Bolum.BolumAdi AS BolumAdi,
    Fakulte.FakulteAdi AS FakulteAdi
FROM 
    Ogretmen
INNER JOIN 
    Bolum ON Ogretmen.BolumID = Bolum.BolumID
INNER JOIN 
    Fakulte ON Bolum.FakulteID = Fakulte.FakulteID;
