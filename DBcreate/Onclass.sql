use GamingGearEcommerce
go

Alter table Product
Add [status] int

select * from Product

UPDATE Product
SET status = 5
WHERE product_id = 6 
UPDATE Product
SET status = 4
WHERE product_id = 7 
UPDATE Product
SET status = 3
WHERE product_id = 8 

select * from Account
select * from [User]

select * from [OrderDetail] where order_id in (select Order_id from [Order] where [user_id] = 4)

--where [od_id] in (select Order_id from [Order] where [user_id] = 4)


select Order_id from [Order] where [user_id] = 4



delete from [OrderDetail]
where order_id in (select Order_id from [Order] where [user_id] = 4)
delete from [Order]
where [user_id] = 4
delete from [User]
where [user_id] = 4
delete from Account
where account_id = 4


UPDATE [Account]
SET [username] = 'HungGH',
	[password] = 'HungGH',
	[email] = 'Hung@gmail.com',
	[role] = 0
	Where account_id = 2

select * from Account
where username = 'HungGH'
and [password] = 'admin'
select * from Account where [role] = 1



