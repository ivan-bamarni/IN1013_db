--1

SELECT b.cust_name
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
WHERE s.headwaiter = 
	(SELECT s2.staff_no 
	FROM restStaff s2 
	WHERE s2.first_name = 'Charles' 
	AND s2.surname = 'Watson')
 
AND b.bill_total > 450;

--2

SELECT s.first_name, s.surname
FROM restStaff s
JOIN restRoom_management r ON s.staff_no = r.headwaiter
WHERE r.room_date = 160111;

--3

SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);

--4

SELECT s.first_name, s.surname
FROM restStaff s
LEFT JOIN restBill b ON s.staff_no = b.waiter_no
WHERE b.bill_no IS NULL;

--5

SELECT b.cust_name, s.first_name, s.surname, rt.room_name
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
JOIN restRest_table rt ON b.table_no = rt.table_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);