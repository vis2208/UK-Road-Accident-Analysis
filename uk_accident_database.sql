create  DATABASE  uk_road_accident;
use uk_road_accident;

--CREATE TABLE ACCIDENT

create table accident(Accident_Index varchar(100),Location_Easting_OSGR int,Location_Northing_OSGR int,	Longitude FLOAT,
Latitude FLOAT, Police_Force int,Accident_Severity int,	Number_of_Vehicles int,	Number_of_Casualties int,	
`Date` date, Day_of_Week int,`Time` TIME,`Local_Authority_(District)` int, `Local_Authority_(Highway)` varchar(30),
1st_Road_Class int,	1st_Road_Number int,Road_Type int,Speed_limit int,Junction_Detail int,Junction_Control int,
2nd_Road_Class int,	2nd_Road_Number int, `Pedestrian_Crossing-Human_Control` int, `Pedestrian_Crossing-Physical_Facilities` int,
Light_Conditions int, Weather_Conditions int,Road_Surface_Conditions int,	Special_Conditions_at_Site int,	Carriageway_Hazards	int,
Urban_or_Rural_Area int, Did_Police_Officer_Attend_Scene_of_Accident int,LSOA_of_Accident_Location varchar(50))

alter table accident modify column`date` varchar(30);
SET SESSION sql_mode = ' '

load data infile
"E:/datasets/Accidents_2015.csv"
into table accident 
fields enclosed by '"'
terminated by ','
lines terminated by '\n'
ignore 1 rows;

select count(*) from accident;

--CREATE TABLE VEHICLE
create table vehicle(Accident_Index varchar(100),Vehicle_Reference int,	Vehicle_Type int,Towing_and_Articulation int,
	Vehicle_Manoeuvre int,`Vehicle_Location-Restricted_Lane` int,	Junction_Location int,	Skidding_and_Overturning int,
	Hit_Object_in_Carriageway int,Vehicle_Leaving_Carriageway int,	Hit_Object_off_Carriageway int,	`1st_Point_of_Impact` int,
	`Was_Vehicle_Left_Hand_Drive?` int,Journey_Purpose_of_Driver int,	Sex_of_Driver int,	Age_of_Driver int,
	Age_Band_of_Driver int,	`Engine_Capacity_(CC)` int,Propulsion_Code int,	Age_of_Vehicle int,	Driver_IMD_Decile int,
	Driver_Home_Area_Type int,	Vehicle_IMD_Decile int)
    
SET SESSION sql_mode = ' '

load data infile
"E:/datasets/Vehicles_2015.csv"
into table vehicle 
fields enclosed by '"'
terminated by ','
lines terminated by '\n'
ignore 1 rows;

--CREATE TABLE VEHICLE TYPE
create table vehicle_type(`code` int, label varchar(200))

SET SESSION sql_mode = ' '

load data infile
"E:/datasets/vehicle_types.csv"
into table vehicle_type
fields enclosed by '"'
terminated by ','
lines terminated by '\n'
ignore 1 rows;
    


