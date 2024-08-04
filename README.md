#Python Week One Project
#Importing the Libraries
import pandas as pd
import numpy as np
#Load the CSV Dataset
df=pd.read_csv(r"C:\Users\Reddb\Downloads\1. Weather Data.csv")
#The total number of rows and columns in the dataset
df.shape
#Showing the first ten rows
df.head(10)
#Showing the last ten rows
df.tail(10)
#Getting all information concerning the dataframe
df.info()
#Showing the names of all columns 
df.columns
#Q1. Find all records where the weather was exactly clear.
#The first step is to show the count of all unique values in the given index (Weather)
df.Weather.value_counts()
# Filter where the weather is clear
df[df.Weather== 'Clear']
2: Find the number of times the wind speed was exactly 4 km/hr.
#First we filter when the wind speed is equal to 4km/hr
df[df['Wind Speed_km/h']==4]
#Now we count the number of times the wind speed was exactly 4km/hr
df[df['Wind Speed_km/h']==4].count()
3: Check if there are any NULL values present in the dataset.
#We use the use the isnull() method to check for any null values then add values of each column
df.isnull().sum()
4: Rename the column "Weather" to "Weather_Condition."
#Rename the column head
df.rename(columns={'Weather Condition':'Weather_Condition'})
# We  rename the weather column to weather condition permanently
df.rename(columns={'Weather Condition':'Weather_condition'},inplace=True)
df.head(1)
# 5: What is the mean visibility of the dataset?
#We return the mean of the visibility column
df.Visibility_km.mean()
# 6: Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.
# In this scenario I will use the greater than (>) sign and the (==) equal to sign.
df[(df['Wind Speed_km/h'] > 24) & (df['Visibility_km']==25)]
# 7. What is the mean value of each column for each weather condition?
df.groupby('Weather Condition').mean()
8. Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.
# In this Quest I will use the equal to sign for the (weather is clear) scenario and the greater than sign for the (relative humidity and the visibility scenaio)
df[(df['Weather_condition']=='Clear') & (df['Rel Hum_%']>50) | (df['Visibility_km']>40)]
9. Find the number of weather conditions that include snow.
# In this scenario I will use the .str.contains() to test if the snow pattern is contained within the string of the DataFrame
df[df['Weather_condition'].str.contains('Snow')]
















