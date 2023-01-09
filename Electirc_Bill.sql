create database Electric_B_M

create table Admin
(A_Id char(5) primary key not null,
A_Pword char(10) not null,
A_Name  varchar(25) not null,
A_Sex char(1) not null,
A_Pno varchar(15) not null,
)
 

create table Consumer
(C_Id char(5) primary key not null,
C_Name varchar(25) not null,
C_Sex char(1) not null,
C_Pno varchar(15) not null,
Last_Pdate date not null,
C_type varchar(25) not null,
C_City	varchar(12) Default 'A.A' not null,
C_Wereda varchar(10)	not null,
H_no varchar(10)	not null,
)
create table Employee
(E_Id	char(5)	Primary Key not null,
E_Name	varchar(25)	not null,
E_Sex char(1) not null,
E_Pno	varchar(15)	not null,
A_Id	char(5) Foreign Key references Admin(A_Id)	null
)
create table Electric_Bill
(EB_Id	char(10) primary key Not null,
EB_P_date	date Not null,
Birr_Per_Kwatt	money	Not null,
Kwatt_Consumed	float	Not null,
Price AS ([Birr_Per_Kwatt]*[Kwatt_Consumed]),
E_Id char(5) Foreign key references Employee(E_Id) null,
C_Id char(5) Foreign key references Consumer(C_Id) null
)


Insert into Admin
(A_Id,A_Pword,A_Name, A_Sex, A_Pno)
values
('AA001','A12345678','Bereket Seyoum','M', '0987654321'),
('AA002','A12345876','Kidus Berhanu','M', '0923748922'),
('AA003','A12543678','Natnael Samson','M', '0972852923'),
('AA004','A22345678','Robel Araya','M', '0929753224'),
('AA005','A12345487','Samuel Tesfaye', 'M','0919826525')

Insert into Consumer
(C_Id,C_Name, C_Sex, C_Pno,Last_Pdate, C_type,C_Wereda,H_no,C_City)
values
('CC001','Abebe Kendu','M','0923454231','09/12/2022','Home','03','1234','A.A'),
('CC002','Belachew damte','M','0931422345','12/21/2022','Business','05','3412', 'A.A'),
('CC003','Chala tole','M','0945314223','11/12/2022','Home','07','4123','Jima'),
('CC004','Teklebirhan Ambaye','M','0988987454','12/20/2022','Business','08','1112','Bahir Dar'),
('CC005','Eid Seid','M','0931428888','12/18/2022','Business','06','5412', 'Debre Markos'),
('CC006','Nigatu Abraham','M','0911544223','11/12/2022','Home','10','423','Gonder'),
('CC007','Gebremedhin Kiros','M','0944254231','10/12/2022','Home','11','234','Dire Dawa'),
('CC008','Mohammed Hussien','M','0994982345','07/12/2022','Business','02','341', 'A.A'),
('CC009','Mengistu Hailemariam','M','0909124223','08/22/2022','Home','12','413','Hawassa'),
('CC010','Michael Belayneh','M','0923452122','10/22/2022','Home','14','124','Adama'),
('CC011','Hanan Tarq','F','0931874345','01/12/2022','Business','07','3454', 'A.A'),
('CC012','Selam Tesfaye','F','0944563223','05/12/2022','Business','07','4823','Dire Dawa'),
('CC013','Ruta Mengstab','F','0924521781','08/12/2022','Home','03','2234','Mekele'),
('CC014','Fenan Hidru','F','0932354781','08/12/2022','Business','05','2112', 'Dire Dawa'),
('CC015','Sayat Demissie','F','0945312233','12/12/2022','Home','09','4113','A.A'),
('CC016','Mariamawit Abate','F','0951244231','04/12/2022','Home','08','2234','Mekele'),
('CC017','Mahider Assefa','F','0938794651','09/12/2022','Busniess','05','3512', 'A.A'),
('CC018','Freyat Yemane','F','0945355323','06/12/2022','Business','04','4193','Mekele'),
('CC019','Meaza Kendu','F','0923454214','10/12/2022','Home','03','1544','A.A'),
('CC020','Hewan Gebrewold','F','0933362345','11/12/2022','Busniess','10','1232', 'Mekele')


Insert into Employee
(E_Id,E_Name,E_Sex, E_Pno,A_Id)
values
('EE001','Robel Samuel','M','0945892237','AA001'),
('EE002','Abdelah Kamil','M','0988542694','AA005'),
('EE003','Eden Mnwyelet','F','0948845543','AA002'),
('EE004','Epherata Teshome','F','091221573','AA004'),
('EE005','Solomon Takele','M','0944581624','AA003'),
('EE006','Abdulrezak Jemil','M','0948987437','AA001'),
('EE007','Feven Kassaw','F','0941236547','AA005'),
('EE008','Mikiyas Negash','M','0945665843','AA002'),
('EE009','Beza Alemayeu','F','0927894563','AA004'),
('EE010','Adonyas Atsebha','M','0909871624','AA003')

Insert into Electric_Bill
(EB_Id,EB_P_date,Birr_Per_Kwatt,Kwatt_Consumed,E_Id,C_Id)
values
('EB001','10/8/2022',0.3, 40,'EE001','CC001'),
('EB002','5/4/2022',0.3, 90,'EE010','CC003'),
('EB003','10/8/2022',1.2, 150,'EE002','CC002'),
('EB004','6/4/2022',1.2, 56,'EE009','CC004'),
('EB005','11/7/2021',1.2, 33,'EE003','CC005'),
('EB006','1/5/2021',0.3, 130,'EE008','CC006'),
('EB007','1/1/2022',1.2, 16,'EE004','CC008'),
('EB008','2/7/2021',0.3, 160,'EE007','CC009'),
('EB009','7/4/2022',0.3, 20,'EE005','CC007'),
('EB010','10/2/2022',1.2, 70,'EE006','CC011'),
('EB011','9/4/2022',0.3, 80,'EE006','CC013'),
('EB012','11/8/2022',1.2, 180,'EE005','CC012'),
('EB013','12/4/2022',0.3, 69,'EE007','CC010'),
('EB014','11/7/2021',0.3, 43,'EE004','CC015'),
('EB015','10/5/2021',1.2, 200,'EE008','CC014'),
('EB016','02/11/2022',0.3, 15,'EE003','CC016'),
('EB017','02/9/2021',1.2, 140,'EE009','CC020'),
('EB018','8/8/2022',1.2, 10,'EE002','CC018'),
('EB019','09/7/2021',0.3, 145,'EE010','CC019'),
('EB020','07/12/2021',1.2, 8,'EE001','CC017'),
('EB021','10/5/2022',0.3, 30,'EE010','CC013'),
('EB022','12/9/2022',1.2, 160,'EE001','CC012'),
('EB023','12/30/2022',0.3, 120,'EE009','CC010'),
('EB024','12/20/2021',0.3, 140,'EE002','CC015'),
('EB025','11/2/2021',1.2, 100,'EE008','CC014'),
('EB026','04/12/2022',0.3, 45,'EE003','CC016'),
('EB027','03/11/2021',1.2, 190,'EE007','CC020'),
('EB028','10/9/2022',1.2, 100,'EE004','CC018'),
('EB029','10/11/2021',0.3, 245,'EE006','CC019'),
('EB030','08/2/2022',1.2, 190,'EE005','CC017')


Select *
from Admin

Select *
from Consumer

Select *
from Employee

Select *
from Electric_Bill


Select DISTINCT c.C_Id, c.C_Name, b.EB_Id, b.Kwatt_Consumed, b.EB_P_date
from Consumer c, Electric_Bill b
where c.C_type = 'Home' And c.C_Id=b.C_Id
order by c.C_Id
