show databases;
create database Blinkit;
use Blinkit;
show tables;

select * from blinkit_project bp ;#1 

select item_identifier from blinkit_project bp ;#2

select count(item_identifier) from blinkit_project bp ;#3

select max(item_weight) from blinkit_project bp ;#4

select min(item_weight) from blinkit_project bp ;#5

select avg(item_weight) from blinkit_project bp ;#6

select count(item_fat_content) from blinkit_project bp where item_fat_content = 'Low Fat';#7

select count(item_fat_content) from blinkit_project bp where Item_Fat_Content = 'Regular';#8

select max(item_mrp) from blinkit_project bp ;#9

select min(item_mrp) from blinkit_project bp ;#10

select item_identifier, item_fat_content, item_type, item_mrp from blinkit_project bp where item_mrp>200;#11

select max(item_mrp) from blinkit_project bp where item_fat_content = 'Low Fat';#12

select min(item_mrp) from blinkit_project bp where Item_Fat_Content = 'Low Fat';#13

select * from blinkit_project bp where item_mrp between 50 and 100; #14

select distinct(item_fat_content) from blinkit_project bp ; #15

select distinct(item_type) from blinkit_project bp ;#16

select * from blinkit_project bp order by item_mrp desc; #17

select * from blinkit_project bp order by Item_Outlet_Sales ;#18

select * from blinkit_project bp order by item_type;#19

select * from blinkit_project bp where item_type in ('diary','meat');#20

select distinct(outlet_size) from blinkit_project bp ;#21

select distinct(outlet_location_type) from blinkit_project bp ;#22

select distinct(outlet_type) from blinkit_project bp ;#23

select item_type, count(item_type) number_of_item from blinkit_project bp group by item_type order by number_of_item desc;#24

select outlet_type, count(outlet_type) number_of_item from blinkit_project bp group by Outlet_Type order by number_of_item; #25

select outlet_type, count(outlet_type) number_of_item from blinkit_project bp group by Outlet_Type order by number_of_item desc; #26

select outlet_location_type, count(outlet_location_type) number_of_outlet_location from blinkit_project bp  group by Outlet_Location_Type order by number_of_outlet_location desc;#27

select max(item_mrp) from blinkit_project bp ;
select item_type, item_mrp from blinkit_project bp where item_mrp= (select max(item_mrp) from blinkit_project bp2 );#28

select item_type, item_mrp from blinkit_project bp where item_mrp= (select min(item_mrp) from blinkit_project bp2 );#29

select outlet_establishment_year , min(item_mrp) min_mrp from blinkit_project bp group by Outlet_Establishment_Year order by min_mrp desc; #30

select outlet_establishment_year , max(item_mrp) max_mrp from blinkit_project bp group by Outlet_Establishment_Year order by max_mrp desc; #31

select outlet_size, avg(item_mrp) avg_mrp from blinkit_project bp group by Outlet_Size  order by avg_mrp desc;#32

select outlet_size, avg(item_mrp) avg_mrp from blinkit_project bp group by Outlet_Size  order by avg_mrp;#33

select outlet_type, max(item_mrp) from blinkit_project bp group by Outlet_Type ;#34

select item_type, max(item_weight) from blinkit_project bp group by item_type;#35

select outlet_establishment_year, max(item_weight) from blinkit_project bp group by Outlet_Establishment_Year ;#36

select outlet_type, min(item_weight) from blinkit_project bp group by outlet_type;#37

select outlet_location_type, avg(item_weight) avg_weight from blinkit_project bp group by Outlet_Location_Type order by avg_weight;#38

select item_type, max(item_outlet_sales) from blinkit_project bp group by Item_Type ; #39

select item_type, min(item_outlet_sales) from blinkit_project bp group by Item_Type ; #40

select Outlet_Establishment_Year , min(item_outlet_sales) from blinkit_project bp group by Outlet_Establishment_Year; #41

select Outlet_Establishment_Year , max(item_outlet_sales) max_sales from blinkit_project bp group by Outlet_Establishment_Year order by max_sales desc; #42

select outlet_size , avg(item_outlet_sales) avg_sales from blinkit_project bp group by Outlet_size order by avg_sales desc; #43

select outlet_type,avg(item_outlet_sales) from blinkit_project bp group by Outlet_Type ; #44

select outlet_type, max(item_outlet_sales) from blinkit_project bp group by Outlet_Type ;#45

select item_type, sum(item_outlet_sales) from blinkit_project bp group by item_type; #46

select item_fat_content, sum(item_outlet_sales) from blinkit_project bp group by Item_Fat_Content;#47

select item_type, max(item_visibility) from blinkit_project bp group by item_type; #48

select item_type, min(item_visibility) from blinkit_project bp group by item_type; #49

select item_type, sum(item_outlet_sales) Total_sales from blinkit_project bp where Outlet_Location_Type = 'Tier 1' group by item_type;#50

select item_type, sum(item_outlet_sales) from blinkit_project bp where Item_Fat_Content = 'Low fat' group by Item_Type ;#51





