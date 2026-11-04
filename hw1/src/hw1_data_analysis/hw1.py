import pandas as pd
import matplotlib.pyplot as plt

#load the data
data_bicycle=pd.read_csv('bicycle_data.csv',thousands=",")
print(data_bicycle.head())

#check the information
data_bicycle.info()
#Fremont Bridge Sidewalks, south of N 34th St Total is the combined count on both sidewalks during that hour
#Fremont Bridge Sidewalks, south of N 34th St Cyclist West Sidewalk is the hourly bicycle count on the west side
#Fremont Bridge Sidewalks, south of N 34th St Cyclist East Sidewalk is the hourly bicycle count on the east side
#Total, West sidewalk and east sidewalk are float64, but they should be Int64
#Date is object
#Date records the date and hour of the observation. It should be a datetime.
data_bicycle["Date"]=pd.to_datetime(data_bicycle["Date"], format="%m/%d/%Y %I:%M:%S %p")
#Total should be Int64
data_bicycle["Fremont Bridge Sidewalks, south of N 34th St Total"]=data_bicycle["Fremont Bridge Sidewalks, south of N 34th St Total"].astype("Int64")
#West sidewalk and east sidewalk also should be Int64
data_bicycle["Fremont Bridge Sidewalks, south of N 34th St Cyclist West Sidewalk"]=data_bicycle["Fremont Bridge Sidewalks, south of N 34th St Cyclist West Sidewalk"].astype("Int64")
data_bicycle["Fremont Bridge Sidewalks, south of N 34th St Cyclist East Sidewalk"]=data_bicycle["Fremont Bridge Sidewalks, south of N 34th St Cyclist East Sidewalk"].astype("Int64")

west="Fremont Bridge Sidewalks, south of N 34th St Cyclist West Sidewalk"
east="Fremont Bridge Sidewalks, south of N 34th St Cyclist East Sidewalk"
#add columns
data_bicycle["Total_bicycle_count"]=data_bicycle[west]+data_bicycle[east]
data_bicycle["hour"]=data_bicycle["Date"].dt.hour
data_bicycle["year"]=data_bicycle["Date"].dt.year
#check the outcomes
print(data_bicycle[["Date","Total_bicycle_count","hour","year"]].head())
#create a new dataframe containing data from 2016
data_2016=data_bicycle.loc[data_bicycle["year"]==2016].copy()
#check if there are any missing data in 2016
missing_data=data_2016.isna().any(axis=1)
print("Number of time points with missing data:", missing_data.sum())
print(data_2016.loc[missing_data, ["Date", "Total_bicycle_count"]])
#1 time point had missing data, 2016-03-13 02:00:00
# Exclude the missing data from the analyses
data_2016_clean=data_2016.loc[~missing_data].copy()

#plot total bicycle crossings by hour in 2016
counts_by_hour=data_2016_clean.groupby("hour")["Total_bicycle_count"].sum()
counts_by_hour.plot(kind="bar", rot=0)
plt.title("Fremont Bridge Bicycle Crossings by Hour in 2016")
plt.xlabel("Hour of the day")
plt.ylabel("Total bicycle crossings")
plt.tight_layout()
plt.savefig("counts_by_hour.png")

#find out the busiest hour
average_by_hour=data_2016_clean.groupby("hour")["Total_bicycle_count"].mean()
busiest_hour=average_by_hour.idxmax()
print("Busiest hour is",busiest_hour)
print("Average bicycle count is",round(average_by_hour.max(), 2))
#The busiest hour in 2016 was 5pm to 6pm, and the average bicycle count is 399.03

