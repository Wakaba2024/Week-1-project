use csv;
select * 
from table_test
;
# Find the number of times the wind speed was exactly 4 km/hr.
select *
from table_test 
where `Wind Speed_km/h` = '4'
;
# Find all records where the weather was exactly clear.
select * 
from table_test 
where Weather = 'clear'
;
# What is the mean visibility of the dataset?
select avg(Visibility_km)
from table_test tt 
;
# The mean visibility is 27.5054
#Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.
select *
from table_test;

select *
from table_test
where `Wind Speed_km/h` >24 and Visibility_km =25
;

