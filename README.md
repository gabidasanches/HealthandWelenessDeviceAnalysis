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

<img width="347" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/c16e7109-1fde-441b-ad9a-189dcfecfe70">

 

-	Using SQL in bigquery to check the number of unique members that were being analyzed in each of the files: SleepDay, DailyActicity, DailySteps, HeartRate

o	Updated the Daily Steps file into bigquery
o	Check the number of members that were being analyzed for Daily Activity

 <img width="351" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/95a57911-001f-4d06-9712-83571a897080">


o	Check the number of members that were being analyzed for Daily Steps

 <img width="353" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/1e6991ef-2a6e-4ce6-a2ed-0ffecfcaf3f3">


o	Check the number of members that were being analyzed for Sleep Day

 <img width="358" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/da6e2cb8-4b6c-42f4-ae12-2e6e9c08d69a">


o	Check the number of member that were being analyzed for Heart Rate

<img width="380" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/8bcc3a66-72e1-4f05-bcc7-009e1f62ea67">

 
-	Checked if there are NULL data using the “IS NULL” function:

o	Daily Activity: No null values

 <img width="265" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/94ea5790-9880-406c-9cef-adca382be83e">



o	Daily steps: No null values

<img width="261" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/e742b1b9-9bce-48f3-974f-3f91ae730dca">


o	Sleep Day: No null values

 <img width="230" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/e492a128-842b-4804-af68-f6126907ce74">


o	Heart Rate: No null values

 <img width="282" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/746070ad-a0b1-45c5-aec9-347e340af0b0">



Analysis and Visualization


o	Daily Activity: 

•	number of users by day of the week:

R code:

<img width="429" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/5cf34e02-4521-47c2-a1a7-641118dda3c9">

 <img width="392" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/6e34c79e-2e27-4c12-ae19-3e9c0693180d">


This chart shows that  most of the users, averaging 149 users, are using their Fitbit to track their daily activity from Tuesday to Thursday. Monday and Sunday are the days that the least number of users are using their Fitbit to track daily activities.

•	Activity levels:


R Code:

 <img width="338" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/56e783ac-63ba-4084-8db7-05a2ae5355da">

<img width="447" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/f610acbe-6b9e-4127-b8bf-4dedcc398c24">

<img width="458" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/f0be6dfd-f6b2-4894-9c91-085914993d1c">


This pie charts shows that the majority of users (81%) are sedentary; only 2% are very active and 1% are fairly active.


o	Daily Steps:

•	Average of Daily steps by ID:

R Code:

<img width="328" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/b7fc364a-1a1f-4952-94f9-8109a682c2f8">


Result:

<img width="127" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/d9b8ab48-c090-4efe-9d3c-d7056b378e13">



•	Correlation between Daily Steps and Activity Level:


SQL Query:

 <img width="281" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/5f4bd598-de97-4727-8c34-76183d595ea9">


Result:

 <img width="225" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/0458c70a-318f-4f94-8ee5-c0ed836611a9">


The users that had a lower average of steps daily, had higher sum of sedentary levels than the users that took more steps a day.

o	Heart Rate:

•	Average heart rate by Id

R Code:

<img width="291" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/12ddc78f-0375-4a87-92f9-fdcadc60f417">


Result:

<img width="134" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/d42c4d05-866a-4220-8c70-4bffb7bb398f">

		 
Visualize the heart rate by user Id (transformed used Id of 10 digits into simple 1,2,… for better visualization and keeping data anonymous)


 <img width="335" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/b30f0e76-ee96-4539-a622-7c18c556e9ee">


<img width="321" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/321f8a67-0ccf-48bc-9330-9979fd7936f9">



Heart Rate is an important metric to keep track of. It can teel the customers a lot about their overall health, important for the Bellabeat customers.


o	Sleep Day:

•	Average minutes that a user (ID) sleep by day 

R code:

 <img width="285" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/71623606-f567-4539-8cce-35bf594ec51c">


Results:

 <img width="116" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/23564689-f1ba-48a1-947e-90eb84ed368d">


•	Burned calories vs. Sleep Time

SQL Query:

 <img width="408" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/95385543-eb02-4d2f-9f36-1382c76d8622">


Result:
 
<img width="85" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/04c86ac4-9682-4aed-a6ca-1ae38416fb17">


On excel:

1.	Created a new column that shows only the day of the week.
2.	Created a pivot table that group the Average Calories and the Total Minutes Asleep by day of the week.
3.	Created a graph with that information.


 <img width="401" alt="image" src="https://github.com/gabidasanches/HealthandWelenessDeviceAnalysis/assets/123784158/a277e2ed-92e6-459d-ae4e-34d75aff4ffc">


The least Average amount of calories burnt is on Monday, which corresponds to the day that the Sleep Time was the lowest; Tuesday, Wednesday and Thursday were the days that the most calories were burnt, and the days that the users had the highest average sleep time.




Act/Share

The Bellabeat Product that we could apply the following insights from the presentation is the Bellabeat App. This app provides users with health-related data, and we can improve this data by offering special promotions, better analysis, deeper analysis, user-friendly app, and better device that is connected to this app.
•	Bellabeat can offer a special promotion to its users in which they are encouraged to use the device on the other days of the week, giving Bellabeat an advantage over its rival. The majority of FitBit subscribers use their gadget between Tuesdays and Thursdays.
•	Activity Levels -> Bellabeat device should focus on giving weekly data of activity level for its clients, FitBit data analysis shows that 83% of its users are in the sedentary activity level for most days, which is not optimal for health. Seeing that Bellabeat wants to focus on health and wellness of its customers, we should give a weekly analysis of their activity level and include tips on how to improve their activity level.
o	If we want to focus on women health and cycle tracking, activity level is also a very important factor to keep track of.
•	Tracking of Daily Steps -> the competitor tracks its user daily step, which contributes as well to activity levels. For a more personalized experience, Bellabeat could add a personalized step goal that its customers could set, according to personal goals.
•	Tracking heart rate is important for many aspects of health and wellness, such as: cardiovascular health, exercise and fitness, stress management, sleep quality, recovery monitor, and more. This is a very important feature that Bellabeat should keep in mind for its customers.
•	Sleep Data on this competitor is not in the best format and easy to read; Bellabeat could use that as an advantage, we could:
o	Track the sleep in hours, easy for customers to analyze;
o	Track each phase of sleep for deeper analyze;
o	Track the average sleep each week to see progress.
o	Shows customer, the relation between quality of sleep, time of sleep, and calories burnt.

