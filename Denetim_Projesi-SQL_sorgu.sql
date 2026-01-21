SELECT *
FROM MuhasebeKayitlari;

-- "Satis Ekibi" OLMAYAN, yani gerçek kişilerin girdiği işlemleri getir
SELECT * FROM MuhasebeKayitlari 
WHERE Kullanici != 'Satis Ekibi'
ORDER BY Tarih ASC;


-- ============================================================
-- ADIM 1: HAFTA SONU MANUEL İŞLEM ANALİZİ
-- ============================================================
SELECT * FROM MuhasebeKayitlari 
WHERE EXTRACT(ISODOW FROM Tarih) IN (6, 7)  -- 6: Cumartesi, 7: Pazar
AND Kullanici != 'Satis Ekibi';             -- Otomatik satışları görmezden gel



-- ============================================================
-- ADIM 2: MÜKERRER (DUPLICATE) KAYIT ANALİZİ
-- ============================================================
SELECT 
    Tarih, 
    Aciklama, 
    Tutar, 
    Kullanici, 
    COUNT(*) as Tekrar_Sayisi -- Kaç kere tekrar ettiğini sayar
FROM MuhasebeKayitlari
GROUP BY Tarih, Aciklama, Tutar, Kullanici -- Bu özelliklerin hepsi aynıysa grupla
HAVING COUNT(*) > 1; -- Ve sadece tekrar edenleri (sayısı 1'den büyükse) göster



--BENFORD YASASI--
-- ============================================================
-- ADIM 3: YUVARLAK RAKAM VE ŞÜPHELİ İŞLEM ANALİZİ
-- ============================================================
SELECT * FROM MuhasebeKayitlari 
WHERE MOD(Tutar, 1000) = 0          -- 1000'in katı olan (sonu 000 biten) tutarları getir
AND Aciklama NOT LIKE '%Maas%'      -- Maaş ödemelerini listeden çıkar (Onlar normaldir)
AND Aciklama NOT LIKE '%Kira%'      -- Kirayı da çıkar (Sözleşmeli olduğu için düz olabilir)
ORDER BY Tutar DESC;                -- En yüksek tutarı en tepede göster










