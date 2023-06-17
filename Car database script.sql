select*from car_details
select*from car_makers
select* from car_names
select*from continents
select*from countries
select*from model_details

--No of rows into dataset
select count(*) from car_details
select count(*) from model_details

--Dataset for chevrolet & ford
select* from car_names
where Model in ('ford','chevrolet')

--Total weight of car
select sum(weight) Total_weight from car_details

--Average of the weight
select avg(weight)/100 from car_details
select accel, round ((avg(weight)/100),0) from car_details group by accel
having round ((avg(weight)/100),0) > 35 order by accel desc

--top 3 model by weight
Select WEIGHT, MODEL from car_details A
inner join car_names B
on A.ID = B.ID
order by weight desc
limit 3

--Bottom 3 model by weight
Select WEIGHT, MODEL from car_details A
inner join car_names B
on A.ID = B.ID
order by weight asc
limit 3

create table Car_accel
(accel nvarchar(50), Car_accel float)

insert into Car_accel
select accel, round ((avg(weight)/100),0) avg_weight from car_details group by accel order by avg_weight desc;

Select*from Car_accel