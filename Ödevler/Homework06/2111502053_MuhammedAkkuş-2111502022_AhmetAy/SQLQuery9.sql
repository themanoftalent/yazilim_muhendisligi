SELECT 
    dp.Gun AS Gun,
    dp.Saat AS Saat,
    s.SinifAdi AS SinifAdi,
    d.DersAdi AS DersAdi,
    o.Ad AS OgretmenAdi,
    o.Bolum AS OgretmenBolum
FROM 
    DersProgrami dp
INNER JOIN 
    Siniflar s ON dp.SinifID = s.SinifID
INNER JOIN 
    Dersler d ON dp.DersID = d.DersID
INNER JOIN 
    Ogretmenler o ON d.OgretmenID = o.OgretmenID
WHERE 
    dp.Gun = 'Pazartesi' 
AND 
    dp.Saat BETWEEN '09:00:00' AND '12:00:00';
