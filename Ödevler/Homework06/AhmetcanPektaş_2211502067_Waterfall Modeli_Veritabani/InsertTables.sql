/*Tablolara veri ekleme*/

INSERT INTO Abonelikler (AbonelikID, PlanIsmi, Fiyat, Ayricaliklar )  VALUES
(1, 'Ucretsiz Abonelik', '0 TL', 'Kullanıcı sarki dinlerken reklamlar dinleyerek uygulamaya katkida bulunur.' ),
(2, 'Ucretli Aylik Abonelik', '20 TL', 'Kullanıcı aylik 20 TL ile reklamsiz müzik dinleyebilir.' ),
(3, 'Ucretli Ogrenci Aylik Abonelik', '10 TL', 'Kullanıcı aylik 20 TL ile reklamsiz müzik dinleyebilir.'),
(4, 'Ucretli Yillik Abonelik', '200 TL', 'Kullanıcı aylik 200 TL ile reklamsiz müzik dinleyebilir.'),
(5, 'Ucretli Ogrenci Yillik Abonelik', '100 TL', 'Kullanıcı yillik 100 TL ile reklamsiz müzik dinleyebilir.');

INSERT INTO Kullanicilar (KullaniciID, KullaniciAdi, Mail, AbonelikID )  VALUES    /*Bir kullanıcı sadece bir aboneliğe sahip olabilir. (One-to-Many)*/
(0001, 'PEKTASCH', 'Kullanici1@mail.com', 3),
(0002, 'Kullanici2', 'Kullanici2@mail.com', 1),
(0003, 'Kullanici3', 'Kullanici3@mail.com', 4),
(0004, 'Kullanici4', 'Kullanici4@mail.com', 4),
(0005, 'Kullanici5', 'Kullanici5@mail.com', 2),
(0006, 'Kullanici6', 'Kullanici6@mail.com', 5),
(0007, 'Kullanici7', 'Kullanici7@mail.com', 3);

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

INSERT INTO CalmaListeleri (CalmaListesiID, Baslik, Aciklama, OlusturmaTarihi, KullaniciID) VALUES 
(1, 'CalmaListesi1', 'CalmaListesiAciklamasi1', '2023-02-12', 0001),
(2, 'CalmaListesi2', 'CalmaListesiAciklamasi2', '2022-09-14', 0002),
(3, 'CalmaListesi3', ' ', '2019-05-30', 0003),
(4, 'CalmaListesi4', 'CalmaListesiAciklamasi4', '2023-12-11', 0004),  
(5, 'CalmaListesi5', 'CalmaListesiAciklamasi5', '2024-02-01', 0005),
(6, 'CalmaListesi6', 'CalmaListesiAciklamasi6', '2022-09-14', 0006),
(7, 'CalmaListesi7', 'CalmaListesiAciklamasi7', '2023-02-12', 0007),
(8, 'CalmaListesi8', 'CalmaListesiAciklamasi8', '2023-03-19', 0001);

INSERT INTO CalmaListesiSarkilari (CalmaListesiID, SarkiID) VALUES 
(1, 37),
(2, 37),
(1, 33),
(1, 3),
(1, 42),
(2, 16),
(2, 25),
(1, 38);

INSERT INTO Albumler (AlbumID, Baslik, Sanatci, YayinlanmaTarihi) VALUES 
(1, 'Ağlamak Güzeldir', 'Sezen Aksu', '1981-01-01'),
(2, 'Gülümse', 'Sezen Aksu', '1991-07-16'),
(3, 'Bende Bi Aşk Var', 'Göksel', '2012-09-01'),
(4, 'Yollar', 'Göksel', '1997-05-01');

INSERT INTO Sanatcilar (SanatciID, SanatciAdi, Tur) VALUES 
(001, 'Sezen Aksu', 'Türkçe Pop'),
(002, 'Göksel', 'Türkçe Pop' );