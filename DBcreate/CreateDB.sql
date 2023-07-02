/********* CREATE DATABASE *********/
CREATE DATABASE GamingGearEcommerce
go
use GamingGearEcommerce
go

/********* CREATE TABLE *********/
create table [Account](
	[account_id] int not null identity(1,1) primary key,
	[username] varchar(32) ,
	[password] varchar(32) ,
	[email] varchar(150),
	[role] int
);

create table [User](
	[user_id] int not null  primary key,	
	[fullname] nvarchar(255) ,
	[address] nvarchar(255),
	[phonenumber] varchar(20),
	[country] nvarchar(255),
	[DOB] datetime,
	[deleted] int, 
	FOREIGN KEY (user_id) REFERENCES [Account](account_id)
);

create table [Brand](
	[brand_id] int not null identity(1,1) primary key,
	[name] nvarchar(100),
	[description] nvarchar(2000),
	[imageUrl] varchar(900)
);


create table [Order](
	[Order_id] int not null identity(1,1) primary key,
	[user_id] int ,
	[fullname] nvarchar(255) ,
	[address] nvarchar(255),
	[email] varchar(255),
	[phonenumber] varchar(20),
	[note] nvarchar(1000) ,
	[oderdate] DATETIME ,
	[status] int ,
	[total] float ,
	FOREIGN KEY (user_id) REFERENCES [User](user_id) 
);

create table [Category](
	[category_id] int not null identity(1,1) primary key,	
	[name] nvarchar(255) 
);

create table [Product](
	[product_id] int not null identity(1,1) primary key,
	[name] varchar(255) ,
	[category_id] int ,
	[brand_id] int,
	[price] float ,
	[discount] float ,
	[imageUrl] varchar(900),
	[createtime] DATETIME ,
	FOREIGN KEY (category_id) REFERENCES [Category](category_id) ,
	FOREIGN KEY (brand_id) REFERENCES [Brand](brand_id)	 
);

create table [OrderDetail](
	[od_id] int not null identity(1,1) primary key,
	[order_id]  int  ,
	[product_id] int ,
	[price] int ,
	[quantity] int ,
	[total] float ,
	FOREIGN KEY (order_id) REFERENCES [Order](order_id),
	FOREIGN KEY (product_id) REFERENCES [Product](product_id), 
);

create table [Info](
	[info_id] int not null  primary key,
	[warranty] int ,
	[imageUrl1] varchar(900),
	[imageUrl2] varchar(900),
	[imageUrl3] varchar(900),
	[description] nvarchar(2000) ,
	FOREIGN KEY (info_id) REFERENCES [Product](product_id) 
);

create table [Feedback](
	[feedback_id] int not null identity(1,1) primary key,
	[user_id] int,
	[product_id] int,
	[note] nvarchar(1000),
	[create_time] DATETIME ,
	[update_time] DATETIME ,
	FOREIGN KEY (user_id) REFERENCES [User](user_id),
	FOREIGN KEY (product_id) REFERENCES [Product](product_id)
);
