/* Answer the following Analytical Question */

--1. Evaluate the Average severity value of accidents caused by various Motorcycles.

select t.label as motorcycle, avg(a.accident_severity) as `Average severity` from vehicle_type t 
join  vehicle v on t.code = v.vehicle_type 
join accident a on a.accident_index = v.accident_index group by t.label;

--2. Evaluate Accident Severity and Total Accidents per Vehicle Type

select v.vehicle_type as `vehicle type`, avg(a.accident_severity) as `average severity` , count(v.vehicle_type) as `total accident` from accident a 
join  vehicle v on t.code = v.vehicle_type group by v.vehicle_type;

--3. Calculate the Average Severity by vehicle type.

select v.vehicle_type as `vehicle type`, avg(a.accident_severity) as `average severity` from accident a 
join  vehicle v on t.code = v.vehicle_type group by v.vehicle_type;

--4. Calculate the Average Severity and Total Accidents by Motorcycle.

select t.label as motorcycle, avg(a.accident_severity) as `Average severity` , count(v.vehicle_type) as `total accident` from vehicle_type t 
join  vehicle v on t.code = v.vehicle_type 
join accident a on a.accident_index = v.accident_index group by t.label;

