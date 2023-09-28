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

o	Check the number of members that were being analyzed for Daily Steps
<img width="353" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/b13b3e01-86ca-49c7-9f39-bcbf6e220a07">

o	Check the number of members that were being analyzed for Sleep Day
<img width="358" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/a6c1daf3-ab3a-4aa2-81a2-4c4924e9739f">

o	Check the number of member that were being analyzed for Heart Rate]
<img width="380" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/cfab72b6-32f1-4fd3-829d-293d3b8f0e53">


-	Checked if there are NULL data using the “IS NULL” function:


o	Daily Activity: No null values

<img width="205" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/8ea4b0f8-ef84-41cf-8044-e075b030a690">


o	Daily steps: No null values

<img width="226" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/38a7cd58-82a2-4b41-9179-cbfa840a5000">


o	Sleep Day: No null values
<img width="230" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/fe19a7db-b3b8-4f5a-b55b-5ef2b86826b0">


o	Heart Rate: No null values
<img width="282" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/aa360403-99e5-4e90-a5b7-a7647045e959">




Analysis and Visualization


o	Daily Activity: 
	number of users by day of the week:
	R Code:
 <img width="429" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/431a5a0f-7a2f-4909-9d94-13e84e8e7d81">
 <img width="392" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/8e971345-2fcf-4888-95d3-12bc6d802fb4">

This chart shows that  most of the users, averaging 149 users, are using their Fitbit to track their daily activity from Tuesday to Thursday. Monday and Sunday are the days that the least number of users are using their Fitbit to track daily activities.

 	Activity levels:
	R Code:
<img width="338" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/d8311e36-dbfb-46bc-b9ae-3f526667fae8">

<img width="420" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/23ac1f73-71f1-4ded-a0e2-f36ac8514256">

<img width="445" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/c7e080d1-9edf-440f-8706-cab51b07af7d">

This pie charts shows that the majority of users (81%) are sedentary; only 2% are very active and 1% are fairly active.


o	Daily Steps:
	Average of Daily steps by ID
	R Code:
<img width="328" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/8ceac7e6-f440-4326-bd54-e9da2e236747">

 	Result:
  <img width="127" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/43ca5498-1cc9-4e78-871c-03c7f6802bea">
  

	Correlation between Daily Steps and Activity Level:
	SQL Query:
 <img width="281" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/e7f65ec0-7f5c-489a-8a0c-85d6aa6d0dec">

 	Result:
  <img width="225" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/ca72add3-b33f-4ffa-9d3b-a3241de959a4">
 The users that had a lower average of steps daily, had higher sum of sedentary levels than the users that took more steps a day.


















