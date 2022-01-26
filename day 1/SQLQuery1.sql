--1
select ProductID, Name, Color, ListPrice
from Production.Product
--2
select ProductID, Name, Color, ListPrice
from Production.Product
where ListPrice != 0
--3
select ProductID, Name, Color, ListPrice
from Production.Product
where Color is null
--4
select ProductID, Name, Color, ListPrice
from Production.Product
where Color is not null
--5
select ProductID, Name, Color, ListPrice
from Production.Product
where Color is not null and ListPrice > 0
--6
select Name, Color
from Production.Product
where Color is not null
--7
select top 6 Name, Color
from Production.Product
where Color is not null
--8
select ProductID, Name
from Production.Product
where ProductID between 400 and 500
--9
select ProductID, Name, Color
from Production.product
where color in ('black', 'blue')
--10 TODO: what is result set?
select distinct name
from Production.Product
where name like 'S%'
--11
select distinct name, listprice
from Production.Product
where name like 'S%'
order by name asc
--12
select distinct name, listprice
from Production.Product
where name like 'S%' or name like 'A%'
order by name asc
--13
select *
from production.product
where name like 'SPO[^K]%'
order by name asc
--14
select distinct Color
from production.product
order by color desc
--15
select ProductSubcategoryID, Color
from production.product
where ProductSubcategoryID is not null and Color is not null
group by ProductSubcategoryID, Color
having count(ProductSubcategoryID) = 1
order by ProductSubcategoryID asc