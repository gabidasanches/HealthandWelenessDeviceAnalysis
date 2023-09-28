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

 

-	Using SQL in bigquery to check the number of unique members that were being analyzed in each of the files: SleepDay, DailyActicity, DailySteps, HeartRate

o	Updated the Daily Steps file into bigquery
o	Check the number of members that were being analyzed for Daily Activity
 

o	Check the number of members that were being analyzed for Daily Steps

 

o	Check the number of members that were being analyzed for Sleep Day
 

o	Check the number of member that were being analyzed for Heart Rate
 
-	Checked if there are NULL data using the “IS NULL” function:

o	Daily Activity: No null values

 


o	Daily steps: No null values

 





o	Sleep Day: No null values

 


o	Heart Rate: No null values

 













Analysis and Visualization


o	Daily Activity: 

•	number of users by day of the week:

R code:
 



 


This chart shows that  most of the users, averaging 149 users, are using their Fitbit to track their daily activity from Tuesday to Thursday. Monday and Sunday are the days that the least number of users are using their Fitbit to track daily activities.

•	Activity levels:


R Code:

 


 

 

This pie charts shows that the majority of users (81%) are sedentary; only 2% are very active and 1% are fairly active.


o	Daily Steps:

•	Average of Daily steps by ID:

R Code:

 


Result:

 

•	Correlation between Daily Steps and Activity Level:


SQL Query:

 


Result:

 


The users that had a lower average of steps daily, had higher sum of sedentary levels than the users that took more steps a day.

o	Heart Rate:

•	Average heart rate by Id

R Code:

 

		Result:

		 

Visualize the heart rate by user Id (transformed used Id of 10 digits into simple 1,2,… for better visualization and keeping data anonymous)


 



 


Heart Rate is an important metric to keep track of. It can teel the customers a lot about their overall health, important for the Bellabeat customers.


o	Sleep Day:

•	Average minutes that a user (ID) sleep by day 

R code:

 

Results:

 


•	Burned calories vs. Sleep Time

SQL Query:

 


Result:
 


On excel:

1.	Created a new column that shows only the day of the week.
2.	Created a pivot table that group the Average Calories and the Total Minutes Asleep by day of the week.
3.	Created a graph with that information.


 

The least Average amount of calories burnt is on Monday, which corresponds to the day that the Sleep Time was the lowest; Tuesday, Wednesday and Thursday were the days that the most calories were burnt, and the days that the users had the highest average sleep time.




Act/Share

The Bellabeat Product that we could apply the following insights from the presentation is the Bellabeat App. This app provides users with health-related data, and we can improve this data by offering special promotions, better analysis, deeper analysis, user-friendly app, and better device that is connected to this app.
•	Bellabeat can offer a special promotion to its users in which they are encouraged to use the device on the other days of the week, giving Bellabeat an advantage over its rival. The majority of FitBit subscribers use their gadget between Tuesdays and Thursdays.
•	Activity Levels  Bellabeat device should focus on giving weekly data of activity level for its clients, FitBit data analysis shows that 83% of its users are in the sedentary activity level for most days, which is not optimal for health. Seeing that Bellabeat wants to focus on health and wellness of its customers, we should give a weekly analysis of their activity level and include tips on how to improve their activity level.
o	If we want to focus on women health and cycle tracking, activity level is also a very important factor to keep track of.
•	Tracking of Daily Steps -> the competitor tracks its user daily step, which contributes as well to activity levels. For a more personalized experience, Bellabeat could add a personalized step goal that its customers could set, according to personal goals.
•	Tracking heart rate is important for many aspects of health and wellness, such as: cardiovascular health, exercise and fitness, stress management, sleep quality, recovery monitor, and more. This is a very important feature that Bellabeat should keep in mind for its customers.
•	Sleep Data on this competitor is not in the best format and easy to read; Bellabeat could use that as an advantage, we could:
o	Track the sleep in hours, easy for customers to analyze;
o	Track each phase of sleep for deeper analyze;
o	Track the average sleep each week to see progress.
o	Shows customer, the relation between quality of sleep, time of sleep, and calories burnt.

