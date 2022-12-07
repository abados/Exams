----------------1----------------
select * from Products where UnitPrice between 30 and 40


----------------2-----------------condiment is represent by number 2
select * from Products where CategoryID=2

----------------3-----------------
select *
from Products inner join Categories on Products.CategoryID=Categories.CategoryID
where Categories.Description like '%s%' order by ProductName
----------------4-----------------

select distinct ProductName
from [dbo].[Customers] 
inner join [dbo].[Orders]
on Customers.CustomerID = Orders.CustomerID 
inner join [dbo].[Order Details] 
on Orders.OrderID = [dbo].[Order Details].OrderID
inner join [dbo].[Products] 
on [dbo].[Order Details].ProductID = [dbo].[Products].ProductID
where Customers.CustomerID  like 'ALFKI'

----------------5-----------------

select * from [dbo].[Orders] where [ShipCountry] like 'Brazil' or [ShipCity] like 'London'

----------------6-----------------

select distinct Customers.[ContactName]
from [dbo].[Shippers]
inner join [dbo].[Orders]
on Shippers.[ShipperID] = Orders.ShipVia
inner join [dbo].[Customers]
on Orders.CustomerID = [dbo].[Customers].CustomerID
where Shippers.CompanyName like 'Federal Shipping'


----------------7--------------------

create procedure orderIDS @var1 int
as 
begin 
select [ProductName] from [dbo].[Products]
inner join [dbo].[Order Details] 
on Products.ProductID = [dbo].[Order Details].ProductID
where [dbo].[Order Details].OrderID = @var1 

select sum(UnitPrice) as totalPrice from [dbo].[Order Details]
where [dbo].[Order Details].OrderID = @var1 
end 

exec orderIDS @var1 = 10248

drop procedure orderIDS

----------------8---------------------

select [CustomerID],[EmployeeID],[ShipVia],[Freight],[ShipName],[ShipCity],[ShipRegion],[ShipPostalCode],[ShipCountry]
from Orders
where CustomerID like 'B%' and [dbo].[Orders].ShipVia=1 and ([dbo].[Orders].EmployeeID =2 or [dbo].[Orders].EmployeeID =5)


---------------9------------------

select [dbo].[Order Details].[OrderID],[ProductID],[UnitPrice],[Quantity],[Discount],OrderDate,[EmployeeID],[CustomerID]
--select *
from [dbo].[Order Details]
inner join [dbo].[Orders]
on [dbo].[Order Details].[OrderID] = [dbo].[Orders].[OrderID] or [dbo].[Order Details].[OrderID] != [dbo].[Orders].[OrderID]
where [dbo].[Order Details].OrderID=10248 and CustomerID like 'VINET'   
order by UnitPrice,EmployeeID

----------------10---------------

select [CustomerID],[Region],[Country]
from [dbo].[Customers]
where Country LIKE 'France' or Country LIKE 'Canada'
order by CustomerID