# 🏦 Banka Müşteri Churn Analizi (SQL & Power BI)
## 📌 Proje Özeti
Bu proje, bankacılık sektöründe müşteri kaybını (churn) analiz etmek amacıyla
SQL kullanılarak hesaplamaların yapıldığı ve Power BI ile yönetici seviyesinde
dashboard’ların oluşturulduğu uçtan uca bir analiz çalışmasıdır.

Projenin amacı:
- Churn oranını hesaplamak
- Yüksek riskli müşteri segmentlerini belirlemek
- İş birimleri için aksiyon alınabilir içgörüler sunmak


## 🎯 İş Problemi
Bankalar için müşteri kaybı doğrudan gelir ve kârlılık kaybına yol açmaktadır.

Bu analiz aşağıdaki sorulara yanıt arar:
- Hangi müşteriler churn ediyor?
- Churn riski en yüksek segmentler hangileri?
- Müşteri davranışları churn ile nasıl ilişkilidir?
📎 **Detaylı iş problemi ve varsayımlar:**  
🔗 *Notice dokümanı linki buraya*

## 🛠 Kullanılan Teknolojiler
- **SQL** – Veri hazırlama, churn hesaplamaları
- **Power BI** – KPI’lar, dashboard ve raporlama
- **GitHub** – Versiyonlama ve dokümantasyon

---
## 🔍 Churn Tanımı
Bu projede bir müşteri aşağıdaki koşulları sağlıyorsa **churn** olarak tanımlanmıştır:

- `IsActiveMember = 0`
- İncelenen dönemde aktif işlem yapmaması

📎 **Churn tanımının gerekçesi ve alternatif senaryolar:**  
🔗 *Notice churn tanımı linki*

## 📊 Hesaplanan Temel Metrikler
- Churn Oranı (%)
- High-Risk Müşteri Oranı
- Churn vs Non-Churn Dağılımı
- Segment Bazlı Churn Analizi
- Bakiye – Churn İlişkisi

## 📈 Power BI Dashboard’ları
Oluşturulan Power BI raporları aşağıdaki sayfalardan oluşmaktadır:

- **Executive Summary**
- **Churn vs Non-Churn Analizi**
- **High-Risk Customer View**

Dashboard ekran görüntüleri `/powerbi/dashboard_screenshots/` klasöründe yer almaktadır.

📎 **Dashboard tasarım kararları ve KPI mantığı:**  
🔗 *Notice Power BI açıklama linki*

---

## 💡 Öne Çıkan İçgörüler
- Aktif olmayan müşterilerde churn riski anlamlı şekilde daha yüksektir
- Düşük bakiye ve düşük ürün kullanımına sahip müşteriler churn etmeye daha yatkındır
- Belirli yaş ve müşteri segmentlerinde churn yoğunlaşmaktadır

📎 **İş birimleri için aksiyon önerileri:**  
🔗 *Notice içgörü & öneriler linki*
