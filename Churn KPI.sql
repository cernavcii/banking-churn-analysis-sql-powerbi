-- 1.Genel Müşteri & Churn Oranı
Select 
	Count(*) as Total_customers,
	Sum( 
		Case when
			Exited = 1 then 1
			Else 0
			End ) as Churned_customers,
	Round(100.00*Sum( Case When Exited =1 then 1 else 0 end)/count(*),
	2) as Churn_rate
from churn
-- Genel churn oranı bankadaki müşteri kaybının mevcut seviyesini göstermektedir ve retention ihtiyacını ölçmek için temel KPI’dır.

-- 2.Aktiflik Durumuna Göre Churn
Select 
	IsActiveMember,
	Count(*) as Total_customer,
	Sum(
		Case When
			Exited = 1 then 1
			Else 0
			End ) as Churned_customers,
	Round(100.0 * Sum( case when Exited = 1 then 1 else 0 end) / count(*),
	2 ) as Churn_rate
from churn
group by IsActiveMember
-- Aktif olmayan müşterilerin churn oranı belirgin şekilde daha yüksektir. Aktiflik churn için güçlü bir erken uyarı sinyalidir.

-- 3.Ürün Sayısına Göre Churn
Select 
	NumOfProducts,
	Count(*) as Total_customers,
	Sum(
		Case When
			Exited = 1 then 1
			Else 0
			End ) as Churned_customers,
	Round(100.00 * Sum( Case When Exited = 1 then 1 else 0 end)/Count(*),
	2 ) Churn_rate
from Churn
group by NumOfProducts
order by NumOfProducts ;

-- 4. Yaş Segmentine Göre Churn 
Select 
	Case 
		when Age < 30 then ' Under 30'
		when Age between 30 and 39 then '30-39'
		when Age between 40 and 49 then '40-29'
		else '50+'
		end as Age_group,
	Count(*) as Total_customers,
	Sum( Case When Exited =1 then 1 else 0 end ) as Churned_customers,
	Round( 100.0 * Sum( Case When Exited =1 then 1 else 0 end )/Count(*),
	2 ) As Churn_rate
from Churn
group by Case 
		when Age < 30 then ' Under 30'
		when Age between 30 and 39 then '30-39'
		when Age between 40 and 49 then '40-29'
		else '50+'
		end
order by Age_group ;

-- 5. Bakiye Seviyesine Göre Churn
ALTER TABLE Churn
ALTER COLUMN Balance DECIMAL(12,2);

Select 
	Case
		when Balance = 0 then 'Zero Balance'
		when Balance < 50000 then 'Low Balance'
		when Balance between 50000 and 100000 then 'Medium Balance'
		Else 'High Balance'
		End as Balance_segment ,
	count(*) as Total_customers,
	sum( Case When exited = 1 then 1 else 0 end ) as Churned_customers ,
	ROUND( 100.0 * sum( Case When exited = 1 then 1 else 0 end ) / count(*),
	2) as Churn_rate
from Churn
group by 	Case
		when Balance = 0 then 'Zero Balance'
		when Balance < 50000 then 'Low Balance'
		when Balance between 50000 and 100000 then 'Medium Balance'
		Else 'High Balance'
		End ;


-- High Risk Customer Tanımı 
-- Bir müşteri High Risk kabul edilir eğer:
-- IsActiveMember = 0 VE NumOfProducts ≤ 1

select 
	count(*) as High_churn
from Churn
where IsActiveMember = 0 and NumOfProducts <=1 ;
