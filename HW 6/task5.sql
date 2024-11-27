--1

SELECT s.first_name, s.surname, b.bill_date, COUNT(*) AS num_bills
FROM restStaff s
JOIN restBill b ON s.staff_no = b.waiter_no
GROUP BY s.staff_no, s.first_name, s.surname, b.bill_date
HAVING COUNT(*) >= 2;

--2

SELECT room_name, COUNT(*) AS num_large_tables
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;

--3

SELECT rt.room_name, SUM(b.bill_total) AS total_bill_amount
FROM restBill b
JOIN restRest_table rt ON b.table_no = rt.table_no
GROUP BY rt.room_name;

--4

SELECT s1.first_name, s1.surname, SUM(b.bill_total) AS total_bill_amount
FROM restStaff s1
JOIN restStaff s2 ON s1.staff_no = s2.headwaiter
JOIN restBill b ON s2.staff_no = b.waiter_no
GROUP BY s1.staff_no, s1.first_name, s1.surname
ORDER BY total_bill_amount DESC;

--5

SELECT cust_name, AVG(bill_total) AS avg_bill_amount
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

--6