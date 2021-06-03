Create table Product_Details
(ProductId int identity primary key,
ProductName varchar(100),
ProductDescription varchar(max),
Price float(52),
ProductQuantity int,
ImageUrl varchar(max) );

Select * from [dbo].[Product_Details]
Insert into Product_Details(ProductName, ProductDescription, Price, ProductQuantity, ImageUrl)values
('Swasa N95 Face Mask - Pack of 5',
'An N95 filtering facepiece respirator, commonly abbreviated N95 respirator, is a particulate-filtering facepiece respirator',
489.00, 35 ,'https://m.media-amazon.com/images/I/71ZhGcb5LcS._AC_UL480_FMwebp_QL65_.jpg'),

('POCT Face Shield - Pack of 5',
'Made of lightweight material, this face shield from POCT is comfortable to wear and has anti-fogging properties',
517.73,76,
'https://cdn.shopify.com/s/files/1/0293/6432/2403/products/point-of-care-biomedical-pvt-ltd-poct-face-shield-pack-of-5-i163-16-22566506725549_540x.jpg?v=1604310369'),


('Dettol Original Germ Protection Alcohol based Hand Sanitizer Pump 200ml (Pack of 3)',
'INSTANT SANITIZER: Kills 99.9% of germs without water',
500.00,60,'https://m.media-amazon.com/images/I/612v3PzrZ1L._AC_UL480_FMwebp_QL65_.jpg'),


('Vandelay Pulse Oximeter Digital Fingertip - VPO6 - Blood Oxygen SpO2 & Pulse Monitor',
'ACCURATE AND RELIABLE – Our oximeter fingertip pulse accurately determines your SpO2 (blood oxygen saturation levels)',
1200.00, 120,'https://m.media-amazon.com/images/I/615jlRh2gtL._AC_UL320_.jpg');
Drop table  User_Details;
Create table User_Details(
UserId int identity primary key,
UserName varchar(55),
UserPassword varchar(55),
UserEmail varchar(55),
UserContact varchar(15),
UserAddress varchar(100),
RoleId int foreign key references User_Role(RoleId));
drop table  User_Role;
insert into User_Role (RoleId,RoleName) values
(1,'Costumer'),
(2,'Admin');

Create table Order_Details(
OrderId int identity primary key,
ProductId int foreign key references Product_Details(ProductId),
UserId int foreign key references User_Details(UserId),
OrderDate DATETIME,
ProductQuantity int,
TotalAmount float(52)
);
Insert into User_Details(UserName, UserPassword, UserEmail, UserContact, UserAddress,RoleId)values
('VanitaIsrani','Vanita@1998','vanitaisrai6@gmail.com',8805989252,'171/A, Matrapatiniwas Jaripatka Nagpur-440014',1),
('Blossom Sharma','Blossom@1995','bloosom.sharma@gmail.com',9890646922,'ICT  near siddhivinayak, Dadar -440005',1),
('Rishabh Sharma','Rishabh@1996','Rishabh.Sharma@gmail.com',8369909997,'192 Bhopal-440088',1),
('Umesh Bajaj','Umesh@2003','UmeshBajaj@gmail.com',9423107550,'171/A, Matrapatiniwas Jaripatka Nagpur-440014',2);

Select * from [dbo].[Product_Details]
select * from [dbo].[User_Details]
Select * from [dbo].[Order_Details]
Select * from [dbo].[User_Role]
Insert into Order_Details(ProductId,UserId,OrderDate,ProductQuantity,TotalAmount) values
(2,1,'2021/06/15',2,1035.46),
(4,3,'2019/07/30',1,1200.00),
(1,2,'2017/01/24',1,517.73),
(4,3,'2018/02/20',3,36000.00);


alter table User_Details add constraint Unique_Key unique( UserEmail );

Create table User_Role(
RoleId int primary key,
RoleName  varchar(55)
);
