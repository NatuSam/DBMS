use car_rental_mgt
Insert into Company
(Co_Name, Co_City, Co_Sub_City, Co_Wereda, Co_est_date)
values
('marathon','A.A','akaki','11','1985'),
('belay','A.A','bole','09','1969'),
('nyala','A.A','yeka','04','1877'),
('amce','A.A','arada','08','1970'),
('Haylu','Dere dawa','hek','10','1980'),
('melaku','bahr dar','tana','19','1967'),
('tesfa','A.A','yeka','10','1897'),
('amro','A.A','arada','08','1970'),
('leul','A.A','yeka','10','1897'),
('alemayehu','A.A','arada','08','1970')

Insert into Supplier
(Su_Fname, S_Id ,S_Country ,S_Date ,S_Quantity, C_Name)
values
('Abebe','S001','Ethiopia','1983' ,'10', 'Tucsun'),
('mola','S002','Ethiopia','1968', '8', 'vitz'),
('kebe','S003','Ethiopia','1873', '5', 'F150'),
('kadija','S004','Ethiopia','1977','6', 'Ch-R'),
('Balcha','S005','Ethiopia','1986' ,'5','Ch-R'),
('ayele','S006','Ethiopia','1961', '3', 'Tucsun'),
('fetsum','S007','Ethiopia','1897', '5', 'vitz'),
('jemal','S009','Ethiopia','1974','9', 'F150'),
('yerga','S010','Ethiopia','1879', '8', 'Ch-R'),
('asfaw','S011','Ethiopia','1973','9', 'Tucsun')

insert into Customer
(cu_Id, cu_Fname, Cu_Mname, Cu_Lname, cu_Age, cu_Sex, Cu_City, Cu_Sub_city, Cu_Wereda, Cu_country, Cu_CellPhone1, Cu_CellPhone2, Cu_HomePhone, Cu_WorkPhone, C_Plate_no)
values
('C001', 'Samuel', 'Tesfaye', 'Gebrekidan', 21, 'M', 'A.A', 'Bole', 'W07', 'Ethiopia', 0928290469,  0924567469,0118672815, 0924143527, '0001'),
('C002', 'Robel', 'Araya', 'Ayalew', 21, 'M', 'A.A', 'Bole', 'W04', 'Ethiopia', 0943294321,  0975320469,0110012233, 0969696969, '0002'),
('C003', 'Bereket', 'seyoum', 'Gebrekidan', 22, 'M', 'A.A', 'Bole', 'W07', 'Ethiopia', 0928290469,  0924567469,0118672815, 0924143527, '0003'),
('C004', 'Kesus', 'Birhanu', 'Ayalew', 20, 'M', 'A.A', 'Bole', 'W04', 'Ethiopia', 0943294321,  0975320469,0110012233, 0969696969, '0004'),
('C005', 'Natnael', 'Samson', 'Gebrekidan', 20, 'M', 'A.A', 'Bole', 'W07', 'Ethiopia', 0928290469,  0924567469,0118672815, 0924143527, '0005'),
('C006', 'eyerusalem', 'tesfaye', 'Ayalew', 19, 'F', 'A.A', 'Bole', 'W04', 'Ethiopia', 0943294321,  0975320469,0110012233, 0969696969, '0006'),
('C007', 'Bereket', 'seyoum', 'Gebrekidan', 24, 'M', 'A.A', 'Bole', 'W07', 'Ethiopia', 0928290469,  0924567469,0118672815, 0924143527, '0007'),
('C008', 'Kesus', 'Birhanu', 'Ayalew', 22, 'M', 'A.A', 'Bole', 'W04', 'Ethiopia', 0943294321,  0975320469,0110012233, 0969696969, '0008'),
('C009', 'Robel', 'Samuel', 'Gebrekidan', 24, 'M', 'A.A', 'Bole', 'W07', 'Ethiopia', 0928290469,  0924567469,0118672815, 0924143527, '0009'),
('C010', 'Solomon', 'Takele', 'Ayalew', 22, 'M', 'A.A', 'Bole', 'W04', 'Ethiopia', 0943294321,  0975320469,0110012233, 0969696969, '0010')

insert into Order_T
(O_Num, O_Name, O_Date, P_no)
values
(0001,'abebe' , '6/9/2022', 009),
(0002,'kebe' , '9/6/2022', 008),
(0003,'mola' , '6/9/2022', 007),
(0004,'andargee' , '9/6/2022', 006),
(0005,'Eyerusalem' , '6/9/2022', 005),
(0006,'kidus' , '9/6/2022', 010),
(0007,'Natnael' , '6/9/2022', 004),
(0008,'Bereket' , '9/6/2022', 003),
(0009,'Samuel' , '6/9/2022', 002),
(0010,'Robel' , '9/6/2022', 001)

Insert into Car
(C_Plate_no, C_Name, C_type, C_Model, C_Color, C_manf_date, Co_Name)
values
('0001', 'Tucsun', 'Family', 'Hyundia', 'Black', '2021', 'Marathon'),
('0002', 'F150', '4WD',  'Ford', 'Blue', '2020', 'Belay'),
('0003', 'Vitz', 'Family', 'Toyota','gray', '2004', 'Marathon'),
('0004', 'CH-R', 'Family', 'Toyota','Brown', '2020','Nyala'),
('0005', 'Tucsun', 'Family', 'Hyundia', 'Black', '2021', 'Haylu'),
('0006', 'F150', '4WD',  'Ford', 'Blue', '2020', 'melaku'),
('0007', 'Vitz', 'Family', 'Toyota','gray', '2004', 'tesfa'),
('0008', 'CH-R', 'Family', 'Toyota','Brown', '2020','amro'),
('0009', 'Vitz', 'Family', 'Toyota','gray', '2004', 'leul'),
('0010', 'CH-R', 'Family', 'Toyota','Brown', '2020','alemayehu')
Insert into Payment
(P_no, P_amount, P_date, P_description, Cu_Id)
values
(001, 500, '2021', 'for a day', 'C007'),
(002, 1000, '2022', 'for 2 days', 'C008'),
(003, 2000, '2020', 'for a day', 'C009'),
(004, 2500, '2021', 'for 3 days', 'C010'),
(005, 500, '2022', 'for a day', 'C006'),
(006, 1000, '2021', 'for 2 days', 'C005'),
(007, 2000, '2022', 'for a day', 'C004'),
(008, 2500, '2019', 'for 3 days', 'C003'),
(009, 2000, '2022', 'for a day', 'C002'),
(010, 2500, '2019', 'for 3 days', 'C001')

update Supplier
Set S_Country = 'Japan'
where Su_Fname = 'Abebe'

update Company
Set Su_Fname = 'asfaw'
where Co_Name = 'alemayehu'

update Customer
Set Cu_FName = 'Almaz'
where Cu_Id = 'C007'

update Customer
Set Cu_Sub_City = 'yeka'
where Cu_Id = 'C007'

update Customer
Set Cu_Age = 30
where Cu_Id = 'C007'
select *
from car

select *
from Company

select *
from Customer

select *
from Order_T

select *
from Payment

select *
from Supplier



select *
from car
where C_Model = 'Toyota' AND C_manf_date between  '2010-01-01' and '2022-01-01'

select *
from car
where C_Color = 'Gray'

select Cu_FName, Cu_LName
from Customer
where Cu_Sex = 'F' AND (Cu_Age>25 AND Cu_age < 30)

select *
from Customer
where Cu_Sub_City = 'Bole' OR Cu_Sub_City = 'Yeka'

select *
from Order_T
where O_Date between '2022-06-08' and '2022-10-01'

select *
from Supplier
where S_Country = 'Japan'

select DISTINCT Cu_FName, Cu_LName,C_Name, C_Color, O_date 
from Customer, Car, Order_T
where O_Date> '2022/06/09'

select *
from Supplier
where S_Country = 'Japan'

select cu_Sex, Cu_Age
from Customer
where Cu_Age>'20'
group by Cu_Sex, Cu_Age

select AVG(cu_age)
from Customer

Select Min(Cu_Age) AS smallestage,  Max(Cu_Age) AS Largestage
from Customer

Select Distinct MAX(P_amount) AS P_Amount
from Payment

Select Distinct Su_Fname, S.C_Name, C.C_type
from Supplier S, Car C
where S.C_Name=C.C_Name

Select  Distinct c.C_Name, c.C_type, u.Cu_FName, u.Cu_LName,P_amount
from Car c, Payment p, Customer U
where P_amount >1500 AND U.Cu_Id=p.Cu_Id AND u.C_Plate_no=c.C_Plate_no

Select sum(P_amount) AS SumOFPayment
from Payment


