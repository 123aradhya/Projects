create schema cars;
use cars;
select * from cars.car_dekho;
-- read cars data
select* from car_dekho;
-- total cars: to get acount of total records

select count(name) from car_dekho;
-- the manager ask the employee how many cars available in 2023
select count(*)  from car_dekho where year = 2023;
-- the manager asked the employee cars available in 2020,2021,2022?
select count(*) from car_dekho where year = 2020;#74
 select count(*) from car_dekho where year = 2021;
 select count(*) from car_dekho where year = 2022 ;
 select count(*) from car_dekho where year in (2020,2021,2022) group by year;
 -- cleint asked me to print the total of all cars by year. i don't see the details
 select year, count(name) from car_dekho group by year;
--  cleint asked to car dealer agent how many diesel cars will be there in 2020? 
select count(*) from car_dekho where year = 2020 and fuel = "diesel";
-- cleint requested a car dealer agent ho many petrol cars will be there in 2020?
select count(*) from car_dekho where year = 2020 and fuel = "petrol";
-- the manager told the employee to give a print of all fuel cars(petrol, deisel, cng) come by all year
select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
-- manager said there were more than 100 cars in a given , which year has more than 100 cars?
select year, count(*) from car_dekho group by year having count(*) > 100;
-- manager said to the employee all cars count details betweeen 2015 and 20223 we need a list?
select count(*) from car_dekho where year between 2015 and 2023;
-- manager said to the employee all cars details between 2015 to 2025 need a complete details
select * from car_dekho where year between 2015 and 2025;

-- end