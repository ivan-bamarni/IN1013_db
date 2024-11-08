-- 1

Select bill_date, bill_total from restBill where cust_name = "Bob Crow";

-- 2

select distinct cust_name from restBill where cust_name like '% Smith' order by cust_name desc;

-- 3

Select distinct cust_name from restBill where cust_name like '% C%';

-- 4

Select first_name, surname from restStaff where headwaiter is not NULL;

-- 5

select * from restBill where bill_date between 160201 and 160229;

-- 6

Select distinct bill_date from restBill where bill_date like '%15%' order by bill_date;