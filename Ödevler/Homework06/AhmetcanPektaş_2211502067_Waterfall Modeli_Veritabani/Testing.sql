SELECT * FROM CalmaListeleri

SELECT SarkiAdi, YayinlanmaTarihi, Sure
    FROM Sarkilar
    WHERE Sure = 
                (SELECT MIN(Sure)
                FROM Sarkilar);