# HealthandWelenessDeviceAnalysis

Google Data Analytics Capstone Project

Introduction of the project:
Sršen (company co-founder) asks you to analyze smart device usage data in order to gain insight into how consumers use non-Bellabeat smart devices. She then wants you to select one Bellabeat product to apply these insights to.

Bellabeat products:
-	Bellabeat app: The Bellabeat app provides users with health data related to their activity, sleep, stress, menstrual cycle, and mindfulness habits. This data can help users better understand their current habits and make healthy decisions. The Bellabeat app connects to their line of smart wellness products. 
-	Leaf: Bellabeat’s classic wellness tracker can be worn as a bracelet, necklace, or clip. The Leaf tracker connects to the Bellabeat app to track activity, sleep, and stress. 
-	Time: This wellness watch combines the timeless look of a classic timepiece with smart technology to track user activity, sleep, and stress. The Time watch connects to the Bellabeat app to provide you with insights into your daily wellness. 
-	Spring: This is a water bottle that tracks daily water intake using smart technology to ensure that you are appropriately hydrated throughout the day. The Spring bottle connects to the Bellabeat app to track your hydration levels. 
-	Bellabeat membership: Bellabeat also offers a subscription-based membership program for users. Membership gives users 24/7 access to fully personalized guidance on nutrition, activity, sleep, health and beauty, and mindfulness based on their lifestyle and goals.

Questions guide:
1.	What are some trends in smart device usage? 
Personalized health recommendations; Mental Health Monitoring; Menstrual cycle tracking; Exercise monitoring; Sleep monitoring; Health beat/stress monitor
2.	How could these trends apply to Bellabeat customers? 
Since the focus of Bellabeat is women as its customers, they could benefit from all of those trends to track their health, monitor their internal system (menstrual cycle tracking), and monito external factors that might affect their health.
3.	How could these trends help influence Bellabeat marketing strategy? 
These trends could have a positive impact in the marketing strategy, if Bellabeat uses those trends to achieve women that wants to get healthier, and monitor their symptoms, marketing strategy could achieve this goal by advertising the trends involved in the smart device. 

Summary of Business Task
	Analyze data from the FitBit device, and compare with the Bellabeat product. Get insights that will help guide the following steps the company needs to take for its marketing strategy and see how those trends influence and apply to Bellabeat customers.

Data Sources
	Data from FitBit device collected from Kaggle; Files used for analyze: SleepDay, DailyActicity, DailySteps, HeartRate. 

Cleaning data

-	On excel: 
o	transformed the ‘SleepDay’ column or the ‘sleep_day_merged’ file to date only (instead of data and time in the same column).
o	Used LEN function to ensure all IDs are 10 characters length.

-	On Rstudio: separated the date that wasn’t included in the “Time” column in the ‘hearrate_seconds’ file into a new column called Date, excluded the column time, that would not be necessary for the analysis.
o	Used R instead of Excel because the file was too large to be able to clean it and modify on excel.
<img width="347" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/41b3d7c2-210b-43ae-b963-5cea826b9768">

-	Using SQL in bigquery to check the number of unique members that were being analyzed in each of the files: SleepDay, DailyActicity, DailySteps, HeartRate

o	Updated the Daily Steps file into bigquery
o	Check the number of members that were being analyzed for Daily Activity
<img width="351" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/126c9cac-cfdc-426c-9dae-4bf822de4395">



