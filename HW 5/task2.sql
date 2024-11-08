-- 1

select sum(bill_total) as Income from restBill;

-- 2

select sum(bill_total) as 'Feb Income' from restBill where bill_date between 160201 and 160229;

-- 3

select avg(bill_total) from restBill where table_no = 2;

-- 4

select 	min(no_of_seats) as Min,
	max(no_of_seats) as Max,
	avg(no_of_seats) as Avg 
from restRest_table where room_name = 'Blue';

-- 5

select count(distinct table_no) from restBill where waiter_no = 4 or waiter_no = 2;