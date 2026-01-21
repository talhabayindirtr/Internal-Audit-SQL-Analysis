# Internal-Audit-SQL-Analysis
SQL ve Python kullanarak gerçekleştirdiğim İç Denetim ve Hile Tespit Simülasyonu
# 🕵️‍♂️ Internal Audit & Fraud Detection Simulation (SQL & Python)

Bu proje, orta ölçekli bir ticaret şirketinin 100.000 satırlık **Yevmiye Defteri (General Ledger)** verisi üzerinde gerçekleştirilmiş bir iç denetim simülasyonudur.

## 🎯 Projenin Amacı
Veri analitiği tekniklerini kullanarak finansal verilerdeki;
* İç kontrol zafiyetlerini,
* Yetkisiz işlemleri,
* Ve potansiyel hile (fraud) göstergelerini tespit etmek.

## 🛠️ Kullanılan Teknolojiler
* **Python:** Gerçekçi ve manipüle edilmiş finansal veri seti üretimi için.
* **PostgreSQL (SQL):** Büyük veri setinin sorgulanması ve analizi için.
* **Excel:** Bulguların denetim standartlarına uygun raporlanması için.

## 🔍 Temel Bulgular (Key Findings)

### 1. Hafta Sonu Yetkisiz Erişim (Weekend Activity)
* **Senaryo:** Şirket politikasına aykırı olarak mesai saatleri dışında işlem girişi.
* **Bulgu:** Finans Müdürü tarafından Cumartesi günleri sisteme girilen toplam **125.000 TL** tutarında "Acil Danışmanlık" ödemeleri tespit edildi.

### 2. Mükerrer Ödeme (Duplicate Payments)
* **Senaryo:** Aynı faturanın birden fazla kez ödenmesi.
* **Bulgu:** Tedarikçi X'e yapılan ödemenin aynı gün içinde iki kez işlendiği ve nakit kaybına yol açtığı SQL sorgusu ile yakalandı.

### 3. Benford Yasası ve Yuvarlak Rakam Analizi
* **Senaryo:** İnsan müdahalesi olan şüpheli tutarların tespiti.
* **Bulgu:** Satış Müdürü tarafından girilen **50.000,00 TL** tutarındaki küsuratsız "Temsil Ağırlama" harcaması riskli işlem olarak raporlandı.

---
*Bu proje Talha Bayındır tarafından portföy çalışması olarak hazırlanmıştır.*
