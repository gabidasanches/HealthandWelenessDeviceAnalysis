library(dplyr)

##clean the heart rate data
  #Read the CSV file
data <- read.csv("heartrate_seconds.csv")

  #Extract the date portion from the 'Time' column and create a new 'Date' column
data <- data %>%
  mutate(Date = as.Date(Time, format = '%m/%d/%Y'))

  #Delete the original 'Time' Column
data <- data %>%
  select(-Time)
  #View the resulting DataFrame
head(data)

  #Save the modifications into the csv file
write.csv(data, 'heartrate_seconds_CLEAN.csv', row.names = FALSE)


## Analyze the Daily Activity File
library(dplyr)

  #Number of users by day of the week
df_daily_activity <- read.csv('dailyActivity_merged.csv')

result <- df_daily_activity %>%
  mutate(ActivityDate = as.Date(ActivityDate, format = "%A, %B %d, %Y")) %>%
  group_by(ActivityDate) %>%
  summarize(Number_OF_users = n()) %>%
  mutate(
    Day = factor(weekdays(ActivityDate), levels = c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')),
    Day = forcats::fct_reorder(Day, as.integer(Day))
  ) %>%
  arrange(Day)

print(result)

  #Visualization of number of users by day of the week
library(ggplot2)

ggplot(result, aes(x = Day, y = Number_OF_users)) +
  geom_bar(stat = "identity", fill = "pink") +
  labs(
    title = "Number of Users by Day of the Week",
    x = "Day of the Week",
    y = "Number of Users"
  ) +
  theme_minimal()

  #Find the sum of activity levels 
VeryActiveSum <- sum(df_daily_activity$VeryActiveMinutes)
FairlyActiveSum <- sum(df_daily_activity$FairlyActiveMinutes)
LightlyActiveSum <- sum(df_daily_activity$LightlyActiveMinutes)
SedentarySum <- sum(df_daily_activity$SedentaryMinutes)

  #store the sums into a dataframe
sums_df <- data.frame(
  VeryActive = VeryActiveSum,
  FairlyActive = FairlyActiveSum,
  LightlyActive = LightlyActiveSum,
  Sedentary = SedentarySum
)

  #Print the sums
print(sums_df)

  #create a visualization that shows the % of each activity level 

total_sum <- sum(sums_df$VeryActive, sums_df$FairlyActive, sums_df$LightlyActive, sums_df$Sedentary)

    #Calculate the percentages for each activity type
sums_df$Percentage_VeryActive <- (sums_df$VeryActive / total_sum) * 100
sums_df$Percentage_FairlyActive <- (sums_df$FairlyActive / total_sum) * 100
sums_df$Percentage_LightlyActive <- (sums_df$LightlyActive / total_sum) * 100
sums_df$Percentage_Sedentary <- (sums_df$Sedentary / total_sum) * 100

plot_df <- data.frame(
  Activity_Type = c("VeryActive", "FairlyActive", "LightlyActive", "Sedentary"),
  Percentage = c(
    sums_df$Percentage_VeryActive,
    sums_df$Percentage_FairlyActive,
    sums_df$Percentage_LightlyActive,
    sums_df$Percentage_Sedentary
  )
)
    #Create the pie chart
ggplot(plot_df, aes(x = "", y = Percentage, fill = Activity_Type)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(label = paste0(round(Percentage), "%")), position = position_stack(vjust = 0.5)) +  # Add labels
  labs(
    title = "Percentage of Activity Types",
    x = NULL,
    y = NULL,
    fill = "Activity Type"
  ) +
  scale_fill_manual(values = c("VeryActive" = "green", "FairlyActive" = "blue", "LightlyActive" = "orange", "Sedentary" = "red")) +
  theme_minimal()


##Analyze Daily Steps File

  #Find the average daily steps by member Id
dailySteps <- read.csv('dailySteps.csv')

average_steps_by_id <- dailySteps %>%
  group_by(Id) %>%
  summarise(Average_StepTotal = mean(StepTotal, na.rm = TRUE))

print(n =33, average_steps_by_id)


## Analyze Heart Rate File
  #Find the average heart rate for each member ID
heartrate_data <- read.csv('heartrate_seconds_CLEAN.csv')

average_values <- heartrate_data %>%
  group_by(Id) %>%
  summarise(Average_Value = mean(Value, na.rm = TRUE))

print(average_values)

  #Average heart rate by User Id
average_values <- average_values %>%
  group_by(Id) %>%
  mutate(Id_Sequential = group_indices())

bar_plot_heart <- ggplot(average_values, aes(x = Id_Sequential, y = Average_Value)) +
  geom_bar(stat = "identity", fill = "yellow") +
  labs(x = "Sequential ID", y = "Average Heart Rate") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

print(bar_plot_heart)


##Analyze Sleep Day

  #Average of Sleep Time by Id
sleepday_data <- read.csv('sleepDay_merged.csv')
daily_activity_data <- read.csv("dailyActivity_merged.csv")

average_sleep <- sleepday_data %>%
  group_by(Id) %>%
  summarise(Average_minutes = mean(TotalMinutesAsleep, na.rm = TRUE)) 

print(n = 24, average_sleep)

scatter_matrix <- ggplot(data, aes(x = AvgCalories, y = avergae_)) +
  geom_point() +
  labs(x = "Avg Calories Burned", y = "Avg Minutes Asleep") +
  theme_minimal()
