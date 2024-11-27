--1

SELECT staff.first_name,staff.surname
FROM restStaff staff
INNER JOIN restBill bill ON staff.staff_no = bill.waiter_no
WHERE bill.cust_name = 'Tanya Singh';

--2

SELECT room.room_date
FROM restRoom_management room
INNER JOIN restStaff staff ON room.headwaiter = staff.headwaiter
WHERE staff.first_name = 'Charles' 
AND room.room_name = 'Green'
AND room.room_date BETWEEN 160201 AND 160229;

--3

SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.headwaiter = (select headwaiter from restStaff 
where restStaff.first_name = 'Zoe' AND restStaff.surname = 'Ball');

--4

SELECT b.cust_name, b.bill_total, s.first_name AS waiter_name
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
ORDER BY b.bill_total DESC;

--5

SELECT DISTINCT s.first_name,s.surname
FROM restStaff s
JOIN restBill b ON s.staff_no = b.waiter_no
WHERE b.table_no 
IN (SELECT table_no FROM restBill WHERE bill_no IN (00014, 00017));

--6

SELECT DISTINCT s.first_name,s.surname
FROM restStaff s
WHERE s.staff_no 
IN (SELECT b.waiter_no FROM restBill b
    JOIN restRoom_management rm ON b.table_no = rm.room_name
    WHERE rm.room_name = 'Blue'
    AND rm.room_date = 160312);