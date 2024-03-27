Select * from Dersler
Select * from DersProgrami
SELECT dp.Gun, dp.Saat, s.SinifAdi, d.DersAdi, o.Ad AS OgretmenAdi, o.Bolum
FROM DersProgrami dp
INNER JOIN Siniflar s ON dp.SinifID = s.SinifID
INNER JOIN Dersler d ON dp.DersID = d.DersID
INNER JOIN Ogretmenler o ON d.OgretmenID = o.OgretmenID
WHERE dp.Gun = 'Pazartesi' -- Belirli bir günü seçin
AND dp.Saat BETWEEN '09:00:00' AND '12:00:00'; -- Belirli bir saat aralýðýný seçin

