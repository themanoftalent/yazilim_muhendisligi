-- Bu proje 3 kişiyle yapılmıştır.
CREATE TABLE DEPARTMAN(
    id char(2) PRIMARY KEY,
    isim varchar(50)
);

CREATE TABLE CALISAN(
    tckn char(11) PRIMARY KEY,
    ad varchar(50),
    soyad varchar(50),
    telefon char(10),
    eposta varchar(255),
    departman_id char(2),
    vardiya char(1),
    maas DECIMAL(7,2),
    adres varchar(255),
    FOREIGN KEY (departman_id) REFERENCES DEPARTMAN (id)
);

CREATE TABLE YAZAR(
    id char(5)PRIMARY KEY,
    ad varchar(50),
    soyad varchar(50)
);

CREATE TABLE KITAP (
    id char(5) PRIMARY KEY,
    isbn char(13),
    isim varchar(50),
    yayinevi varchar(50),
    yayin_tarihi DATE,
    durum varchar(20),
    konum char(4)
);

CREATE TABLE KITAP_YAZAR (
    id char(6) PRIMARY KEY,
    kitap_id char(5),
    yazar_id char(5),
    FOREIGN KEY (kitap_id) REFERENCES KITAP (id),
    FOREIGN KEY (yazar_id) REFERENCES YAZAR (id)
);

CREATE TABLE UYE (
    id char(5) PRIMARY KEY,
    ad varchar(50),
    soyad varchar(50),
    telefon char(10),
    eposta varchar(255)
);

CREATE TABLE ODUNC_KAYDI (
    id char(10) PRIMARY KEY,
    kitap_id char(5),
    uye_id char(5),
    alma_tarihi DATE,
    verme_tarihi DATE,
    FOREIGN KEY (kitap_id) REFERENCES KITAP (id), 
    FOREIGN KEY (uye_id) REFERENCES KITAP (id)
);

CREATE TABLE ODUNCLER (
    id char(10) PRIMARY KEY,
    kitap_id char(5),
    uye_id char(5),
    alma_tarihi DATE,
    zorunlu_verme_tarihi DATE,
    FOREIGN KEY (kitap_id) REFERENCES KITAP (id), 
    FOREIGN KEY (uye_id) REFERENCES KITAP (id)
);
-- veri girişleri kolaylık olması bakımından chatgpt ile yaptırıldı.
INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00001', '9789750521348', 'Hikaye Anlatma Sanat�', '�leti�im Yay�nlar�', TO_DATE('2020-03-02', 'YYYY-MM-DD'), NULL, 'AA01');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00002', '9789753426237', '�mgeler Nas�l D���n�r?', ' Metis Yay�nlar�', TO_DATE('2018-05-03', 'YYYY-MM-DD'), NULL, 'AA02');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00003', '9781400079988', 'The Great Gatsby', 'Scribner', TO_DATE('1925-04-10', 'YYYY-MM-DD'), NULL, 'AA03');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00004', '9780544003415', 'The Lord of the Rings', 'Mariner Books', TO_DATE('1954-07-29', 'YYYY-MM-DD'), NULL, 'AA04');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00005', '9780062315007', 'The Catcher in the Rye', 'Little, Brown and Company', TO_DATE('1951-07-16', 'YYYY-MM-DD'), NULL, 'AA05');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00006', '9780140449146', 'Pride and Prejudice', 'Penguin Classics', TO_DATE('1813-01-28', 'YYYY-MM-DD'), NULL, 'AA06');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00007', '9780060935467', 'The Alchemist', 'HarperOne', TO_DATE('1988-01-01', 'YYYY-MM-DD'), NULL, 'AA07');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00008', '9780142437230', 'Moby-Dick', 'Penguin Classics', TO_DATE('1851-10-18', 'YYYY-MM-DD'), NULL, 'AA08');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00009', '9780062561029', 'The Hobbit', 'HarperCollins', TO_DATE('1937-09-21', 'YYYY-MM-DD'), NULL, 'AA09');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00010', '9780553212419', 'War and Peace', 'Bantam Classics', TO_DATE('1869-01-01', 'YYYY-MM-DD'), NULL, 'AA10');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00011', '9780061122415', 'The Chronicles of Narnia', 'HarperCollins', TO_DATE('1950-10-16', 'YYYY-MM-DD'), NULL, 'AA11');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00012', '9780451524935', 'Romeo and Juliet', 'Signet Classics', TO_DATE('1597-01-01', 'YYYY-MM-DD'), NULL, 'AB01');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00013', '9780062316097', 'The Hunger Games', 'Scholastic Press', TO_DATE('2008-09-14', 'YYYY-MM-DD'), NULL, 'AB02');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00014', '9780143127550', 'Brave New World', 'Harper Perennial Modern Classics', TO_DATE('1932-01-01', 'YYYY-MM-DD'), NULL, 'AB04');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00015', '9780812980261', 'Slaughterhouse-Five', 'Delacorte Press', TO_DATE('1969-03-31', 'YYYY-MM-DD'), NULL, 'AB05');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00016', '9780061120085', 'Animal Farm', 'Harper Perennial Modern Classics', TO_DATE('1945-08-17', 'YYYY-MM-DD'), NULL, 'AB06');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00017', '9780345816023', 'The Girl with the Dragon Tattoo', 'Vintage Crime/Black Lizard', TO_DATE('2005-08-19', 'YYYY-MM-DD'), NULL, 'AB07');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00018', '9780452284234', 'Fahrenheit 451', 'Ballantine Books', TO_DATE('1953-10-19', 'YYYY-MM-DD'), NULL, 'AB08');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00019', '9780679720201', 'One Hundred Years of Solitude', 'Harper Perennial Modern Classics', TO_DATE('1967-06-30', 'YYYY-MM-DD'), NULL, 'BA01');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00020', '9780141187143', 'The Picture of Dorian Gray', 'Penguin Classics', TO_DATE('1890-07-01', 'YYYY-MM-DD'), NULL, 'BA02');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00021', '9780141182551', '1984', 'Penguin Books', TO_DATE('1949-06-08', 'YYYY-MM-DD'), NULL, 'BA03');

INSERT INTO KITAP (id, isbn, isim, yayinevi, yayin_tarihi, durum, konum) VALUES
('00022', '9780061120084', 'To Kill a Mockingbird', 'Harper Perennial Modern Classics', TO_DATE('1960-07-11', 'YYYY-MM-DD'), NULL, 'BA03');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00001', 'Ashley', 'Ramsden');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00021', 'Sue', 'Hollingsworth');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00002', 'Ron', 'Bournett');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00003', 'F. Scott', 'Fitzgerald');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00004', 'J.R.R.', 'Tolkien');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00005', 'J.D.', 'Salinger');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00006', 'Jane', 'Austen');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00007', 'Paulo', 'Coelho');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00008', 'Herman', 'Melville');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00009', 'J.R.R.', 'Tolkien');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00010', 'Leo', 'Tolstoy');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00011', 'C.S.', 'Lewis');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00012', 'William', 'Shakespeare');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00013', 'Suzanne', 'Collins');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00014', 'Aldous', 'Huxley');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00015', 'Kurt', 'Vonnegut');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00016', 'George', 'Orwell');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00017', 'Stieg', 'Larsson');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00018', 'Ray', 'Bradbury');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00019', 'Gabriel', 'Garc�a M�rquez');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00020', 'Oscar', 'Wilde');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00023', 'George', 'Orwell');

INSERT INTO YAZAR (id, ad, soyad) VALUES
('00022', 'Harper', 'Lee');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000001', '00001', '00001');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000002', '00001', '00021');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000003', '00003', '00003');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000004', '00004', '00004');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000005', '00005', '00005');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000006', '00006', '00006');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000007', '00007', '00007');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000008', '00008', '00008');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000009', '00009', '00009');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000010', '00010', '00010');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000011', '00011', '00011');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000012', '00012', '00012');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000013', '00013', '00013');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000014', '00014', '00014');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000015', '00015', '00015');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000016', '00016', '00016');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000017', '00017', '00017');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000018', '00018', '00018');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000019', '00019', '00019');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000020', '00020', '00020');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000021', '00021', '00023');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000022', '00022', '00022');

INSERT INTO kitap_yazar (id, kitap_id, yazar_id) VALUES
('000023', '00002', '00002');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00001', 'Ahmet Emre', 'Ceylan', '5551234567', 'ahmetemreceylan@gmail.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00002', '�brahim', 'Ya�ar', '5555555555', 'ibrahimyagar.mh@gmail.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00003', 'Ali Egecan', '�zener', '5559876543', 'aliegecanozener@hotmail.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00004', 'Zeynep', 'Demir', '5554443322', 'zeynep.demir@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00005', 'Ahmet', 'Ko�', '5551112233', 'ahmet.koc@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00006', 'Fatma', '�etin', '5556667788', 'fatma.cetin@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00007', 'Mustafa', 'Ayd�n', '5559998877', 'mustafa.aydin@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00008', 'G�l', 'Kara', '5552223344', 'gul.kara@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00009', 'Emre', 'Turan', '5557778899', 'emre.turan@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00010', 'Aylin', 'Can', '5556664444', 'aylin.can@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00011', 'Kadir', 'Y�ld�z', '5553332211', 'kadir.yildiz@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00012', 'Deniz', 'Tekin', '5558887766', 'deniz.tekin@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00013', 'Selin', 'Aksoy', '5552225566', 'selin.aksoy@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00014', 'Murat', 'Acar', '5557771122', 'murat.acar@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00015', 'Ebru', '�elik', '5553337788', 'ebru.celik@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00016', 'Hakan', 'Kurt', '5554441199', 'hakan.kurt@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00017', 'P�nar', 'Toprak', '5551118899', 'pinar.toprak@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00018', 'Ali', 'Ko�ak', '5555558899', 'ali.kocak@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00019', 'Elif', 'Sar�', '5553335566', 'elif.sari@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00020', 'Murat', '�zdemir', '5554447788', 'murat.ozdemir@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00021', 'Ay�e', 'Y�ld�r�m', '5556662233', 'ayse.yildirim@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00022', 'Can', 'Akg�n', '5551114455', 'can.akgun@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00023', 'Ebru', 'Kaya', '5552223355', 'ebru.kaya@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00024', 'Mehmet', 'Y�lmaz', '5557773399', 'mehmet.yilmaz@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00025', 'Selin', 'Turan', '5553337799', 'selin.turan@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00026', 'Ahmet', '�elik', '5558885566', 'ahmet.celik@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00027', 'Zeynep', 'Acar', '5552227788', 'zeynep.acar@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00028', 'Ali', 'Kurt', '5557779933', 'ali.kurt@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00029', 'G�l', 'Toprak', '5554446622', 'gul.toprak@example.com');

INSERT INTO UYE (id, ad, soyad, telefon, eposta) VALUES
('00030', 'Deniz', 'Sar�', '5551112266', 'deniz.sari@example.com');

INSERT INTO DEPARTMAN (id, isim) VALUES
('01', 'Temizlik�i');

INSERT INTO DEPARTMAN (id, isim) VALUES
('02', 'G�venlik');

INSERT INTO DEPARTMAN (id, isim) VALUES
('03', 'Memur');

INSERT INTO DEPARTMAN (id, isim) VALUES
('04', 'Muhasebeci');

INSERT INTO CALISAN (tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres) VALUES
('12345678901', 'Ay�e', 'Y�lmaz', '5551112233', 'ayse.yilmaz@example.com', '01', 'A', 2500.00, '��tlakkale Mah. ��tlak Sk. No:18/2 Merkez/Giresun');

INSERT INTO CALISAN (tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres) VALUES
('23456789012', 'Ali', 'Kara', '5554445566', 'ali.kara@example.com', '01', 'B', 2400.00, 'Fevzi �akmak Mah. G�k�e Sk. No:11/1 Merkez/Giresun');

INSERT INTO CALISAN (tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres) VALUES
('34567890123', 'Mehmet', 'Demir', '5557778899', 'mehmet.demir@example.com', '02', 'A', 3000.00, 'Teyyared�z� Mah. Fehmi Pamuk Sk. No:14/9 Merkez/Giresun');

INSERT INTO CALISAN (tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres) VALUES
('45678901234', 'Zeynep', 'Aksoy', '5558889900', 'zeynep.aksoy@example.com', '02', 'B', 2900.00, 'Teyyared�z� Mah. 148. Sk. No:22/4 Merkez/Giresun');

INSERT INTO CALISAN (tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres) VALUES
('56789012345', 'Ahmet', 'Y�ld�z', '5553334455', 'ahmet.yildiz@example.com', '03', 'A', 3500.00, 'Hac� H�seyin Mah. Ye�il Sk. No:21/3 Merkez/Giresun');

INSERT INTO CALISAN (tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres) VALUES
('67890123456', 'Fatma', 'Can', '5556667788', 'fatma.can@example.com', '03', 'A', 3400.00, 'Gedikkaya Mah. Gedikkaya Cad. No:29/4 Sanayi Sitesi Merkez/G�RESUN');

INSERT INTO CALISAN (tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres) VALUES
('78901234567', 'Mehmet', 'Ko�', '5559990011', 'mehmet.koc@example.com', '03', 'B', 4000.00, 'Gedikkaya Mah. 96. Sk. No:12 Merkez/Giresun');

INSERT INTO CALISAN (tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres) VALUES
('89012345678', 'G�l', 'Turan', '5552223344', 'gul.turan@example.com', '04', 'A', 3900.00, 'Kavaklar Mah. Kamberli Sk. No:49/6 Merkez/Giresun');

INSERT INTO ODUNC_KAYDI (id, kitap_id, uye_id, alma_tarihi, verme_tarihi) VALUES
('0000000001', '00011', '00002', TO_DATE('2023-01-11', 'YYYY-MM-DD'), TO_DATE('2023-01-13', 'YYYY-MM-DD'));

INSERT INTO ODUNC_KAYDI (id, kitap_id, uye_id, alma_tarihi, verme_tarihi) VALUES
('0000000002', '00002', '00002', TO_DATE('2023-01-24', 'YYYY-MM-DD'), TO_DATE('2023-02-02', 'YYYY-MM-DD'));

INSERT INTO ODUNC_KAYDI (id, kitap_id, uye_id, alma_tarihi, verme_tarihi) VALUES
('0000000003', '00003', '00004', TO_DATE('2023-02-13', 'YYYY-MM-DD'), TO_DATE('2023-02-21', 'YYYY-MM-DD'));

INSERT INTO ODUNC_KAYDI (id, kitap_id, uye_id, alma_tarihi, verme_tarihi) VALUES
('0000000004', '00004', '00004', TO_DATE('2023-02-22', 'YYYY-MM-DD'), TO_DATE('2023-03-12', 'YYYY-MM-DD'));

INSERT INTO ODUNC_KAYDI (id, kitap_id, uye_id, alma_tarihi, verme_tarihi) VALUES
('0000000005', '00002', '00009', TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-03-15', 'YYYY-MM-DD'));

INSERT INTO ODUNC_KAYDI (id, kitap_id, uye_id, alma_tarihi, verme_tarihi) VALUES
('0000000006', '00012', '00005', TO_DATE('2023-03-03', 'YYYY-MM-DD'), TO_DATE('2023-03-05', 'YYYY-MM-DD'));

INSERT INTO ODUNCLER (id, kitap_id, uye_id, alma_tarihi, zorunlu_verme_tarihi) VALUES
('0000000001', '00022', '00016', TO_DATE('2023-06-17', 'YYYY-MM-DD'), TO_DATE('2023-07-17', 'YYYY-MM-DD'));

INSERT INTO ODUNCLER (id, kitap_id, uye_id, alma_tarihi, zorunlu_verme_tarihi) VALUES
('0000000002', '00002', '00012', TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'));

INSERT INTO ODUNCLER (id, kitap_id, uye_id, alma_tarihi, zorunlu_verme_tarihi) VALUES
('0000000003', '00005', '00012', TO_DATE('2023-06-04', 'YYYY-MM-DD'), TO_DATE('2023-07-04', 'YYYY-MM-DD'));

SELECT vardiya, SUM(maas) AS toplam_maas_gideri
FROM CALISAN
GROUP BY vardiya;

SELECT KITAP.isim
FROM KITAP
JOIN kitap_yazar ON KITAP.id = kitap_yazar.kitap_id
JOIN YAZAR ON kitap_yazar.yazar_id = YAZAR.id
WHERE YAZAR.ad = 'George' AND YAZAR.soyad = 'Orwell'; 

SELECT konum
FROM KITAP
WHERE id = '00015';

SELECT d.isim AS departman_adi, COUNT(c.tckn) AS calisan_sayisi, AVG(c.maas) AS ortalama_maas
FROM DEPARTMAN d
LEFT JOIN CALISAN c ON d.id = c.departman_id
GROUP BY d.isim;

SELECT k.isim AS kitap_adi, y.ad AS yazar_ad�, y.soyad AS yazar_soyadi
FROM KITAP k
INNER JOIN kitap_yazar ky ON k.id = ky.kitap_id
INNER JOIN YAZAR y ON ky.yazar_id = y.id
WHERE k.isim = 'The Hobbit';

SELECT k.isim AS kitap_adi, o.alma_tarihi
FROM KITAP k
INNER JOIN ODUNC_KAYDI o ON k.id = o.kitap_id
WHERE o.uye_id = '00009';

SELECT UYE.id, UYE.ad, UYE.soyad, COUNT(ODUNC_KAYDI.kitap_id) AS rezervasyon_sayisi
FROM UYE
LEFT JOIN ODUNC_KAYDI ON UYE.id = ODUNC_KAYDI.uye_id
GROUP BY UYE.id, UYE.ad, UYE.soyad;

SELECT d.isim AS departman_adi, c.ad, c.soyad, c.maas
FROM DEPARTMAN d
INNER JOIN CALISAN c ON d.id = c.departman_id
WHERE c.maas = (
    SELECT MAX(maas) FROM CALISAN WHERE departman_id = d.id
);

SELECT DEPARTMAN.isim AS departman_adi, COUNT(CALISAN.tckn) AS calisan_sayisi
FROM DEPARTMAN
LEFT JOIN CALISAN ON DEPARTMAN.id = CALISAN.departman_id
GROUP BY DEPARTMAN.isim;

SELECT YAZAR.ad, YAZAR.soyad
FROM YAZAR
INNER JOIN kitap_yazar ON YAZAR.id = kitap_yazar.yazar_id
WHERE kitap_yazar.kitap_id = '00004';

SELECT COUNT(*) AS odunc_kitap_sayisi
FROM ODUNC_KAYDI
WHERE TO_CHAR(alma_tarihi, 'YYYY-MM-DD') = '2023-03-01';

SELECT AVG(maas) AS ortalama_maas
FROM CALISAN
WHERE departman_id = '03';

SELECT KITAP.isim, KITAP.yayinevi
FROM KITAP
INNER JOIN ODUNC_KAYDI ON KITAP.id = ODUNC_KAYDI.kitap_id
WHERE ODUNC_KAYDI.uye_id = '00002';

SELECT id, isim, yayinevi, durum
FROM KITAP;

SELECT id, ad, soyad
FROM YAZAR;

SELECT id, ad, soyad, telefon, eposta
FROM UYE;

SELECT tckn, ad, soyad, telefon, eposta, departman_id, vardiya, maas, adres
FROM CALISAN;

SELECT ODUNC_KAYDI.id, KITAP.isim AS kitap_adi, UYE.ad AS uye_adi, ODUNC_KAYDI.alma_tarihi, ODUNC_KAYDI.verme_tarihi
FROM ODUNC_KAYDI
JOIN KITAP ON ODUNC_KAYDI.kitap_id = KITAP.id
JOIN UYE ON ODUNC_KAYDI.uye_id = UYE.id;

SELECT KITAP.isim, UYE.ad, UYE.soyad
FROM KITAP
JOIN ODUNC_KAYDI ON KITAP.id = ODUNC_KAYDI.kitap_id
JOIN UYE ON ODUNC_KAYDI.uye_id = UYE.id
WHERE KITAP.id = '00012';

SELECT KITAP.yayinevi, COUNT(*) AS kitap_sayisi
FROM KITAP
GROUP BY KITAP.yayinevi
ORDER BY COUNT(*) DESC;

SELECT KITAP.isim, ODUNC_KAYDI.alma_tarihi, UYE.ad, UYE.soyad
FROM KITAP
JOIN ODUNC_KAYDI ON KITAP.id = ODUNC_KAYDI.kitap_id
JOIN UYE ON ODUNC_KAYDI.uye_id = UYE.id
WHERE KITAP.id = '00002';

SELECT KITAP.id, KITAP.isim, KITAP.yayinevi, COUNT(ODUNC_KAYDI.kitap_id) AS odunc_sayisi
FROM KITAP
JOIN ODUNC_KAYDI ON KITAP.id = ODUNC_KAYDI.kitap_id
GROUP BY KITAP.id, KITAP.isim, KITAP.yayinevi
ORDER BY COUNT(ODUNC_KAYDI.kitap_id) DESC
FETCH FIRST 1 ROWS ONLY;

SELECT KITAP.yayinevi, COUNT(*) AS kitap_sayisi
FROM KITAP
GROUP BY KITAP.yayinevi
ORDER BY kitap_sayisi DESC;

SELECT eposta, telefon
FROM CALISAN;

SELECT departman_id, COUNT(*) AS calisan_sayisi
FROM CALISAN
GROUP BY departman_id
ORDER BY calisan_sayisi DESC;



