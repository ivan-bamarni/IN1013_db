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
JOIN restStaff z ON s.headwaiter = z.staff_no
WHERE (select headwaiter from restStaff 
where restStaff.first_name = 'Zoe' AND restStaff.surname = 'Ball')
AND s.staff_no != z.staff_no;

--4



--5



--6