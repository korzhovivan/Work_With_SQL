--create database Korzhov_Publish on primary

--(name =  Korzhov_Publish, filename = 'C:\ANOTHER\STEP\korzhov_publish.mdf',

--size = 12MB,

--maxsize=20MB,

--filegrowth = 2MB

--)

--LOG ON

--(

--name = Korzhov_Publish_Log,

--filename = 'C:\ANOTHER\STEP\korzhov_publish.ldf',

--size = 2MB,

--maxsize = 12MB,

--filegrowth = 1MB

--)

--COLLATE Latin1_General_CI_AI;



--create table Sales
--(
--ID_SALE int primary key identity(1,1),

--ID_BOOK int not null,

--DateOfSale date not null,

--Price money not null,

--Quantity int not null,

--ID_SHOP int not null

--)

--create table Shops

--(

--ID_SHOP int primary key identity(1,1),

--NameShop nvarchar(32) not null,

--ID_COUNTRY int not null

--)



--create table Books
--(

--ID_BOOK int primary key identity(1,1),

--NameBook nvarchar(32) not null,

--ID_THEME int not null,

--ID_AUTHOR int not null,

--Price money not null,

--DrawingOfBook int not null,

--DateOfPublishing date not null,

--Pages int not null

--)



--create table Country

--(

--ID_COUNTRY int primary key identity(1,1),

--NameCountry nvarchar(32)

--)



--create table Authors

--(

--ID_AUTHOR int primary key identity(1,1),

--FirstName nvarchar(32) not null,

--LastName nvarchar(32) not null,

--ID_COUNTRY int not null

--)

--create table Themes

--(

--ID_THEME int primary key identity(1,1),

--NameTheme nvarchar(32)

--)

--INSERT INTO Themes

--VALUES ('Computer science'),

-- ('Programming'),

-- ('Web Development'),

-- ('Database theory'),

-- ('Networks ans security')



-- INSERT INTO Country

--VALUES ('USA'),

-- ('France'),

-- ('Germany'),

-- ('England'),

-- ('Ukraine'),

-- ('Sweden'),

-- ('Poland'),

-- ('Italy'),

-- ('Spain'),

-- ('Greece')



--INSERT INTO Authors

--VALUES ('Patrick', 'Fluince', 2),

-- ('Mark', 'Schaize', 3),

-- ('Sam', 'Duck', 4),

-- ('Ganna', 'Lyisko', 5),

-- ('Drek', 'Frucken', 6),

-- ('Janush', 'Navak', 7),

-- ('Vlad', 'Ole', 8),

-- ('Eden', 'Speilenman', 9),

-- ('Aristotel', 'Greckiy', 10),

-- ('John', 'Nork', 1)



--INSERT INTO Shops

--VALUES ('Books for IT', 2),

-- ('ITBook', 3),

-- ('Book.com', 4),

-- ('Books.Kingdom', 5),

-- ('RidniBooks', 6),

-- ('Readers.SW', 7),

-- ('Bukwoedy', 8)



 

--INSERT INTO Books

--VALUES ('First steps on PC', 1, 10, 59.99, 10000, '2000-01-15', 345),

-- ('PC it is pro100', 1, 10, 29.99, 5000, '2002-02-22', 444),

-- ('C++ for newbies', 2, 3, 35.99, 15000, '2001-05-20', 542),

-- ('C++ for professional', 2, 3, 39.99, 25000, '2003-05-20', 245),

-- ('HTML + CSS', 3, 3, 25.99, 50000, '2005-08-01', 564),

-- ('HTML 5.0', 3, 3, 20.99, 45000, '2009-11-11', 600),

-- ('MS SQL', 4, 4, 15.95, 65000, '1999-11-21', 755),

-- ('NoSQL', 4, 4, 55.55, 85000, '2015-12-21', 350),

-- ('Theory of TCP\IP', 5, 5, 15.95, 20000, '1995-03-08', 588),

-- ('Introducing on network', 5, 5, 17.95, 22000, '1992-01-05', 754),

-- ('Newest PC', 1, 6, 95.59, 75000, '2016-12-21', 792),

-- ('Overclocking PC', 1, 6, 105.59, 97000, '2016-12-21', 379),

-- ('Java for newbies', 2, 7, 58.49, 38000, '2001-05-20', 555),

-- ('C# and WPF for professional', 2, 7, 55.99, 50000, '2003-05-20', 888),

-- ('Phyton for web', 3, 8, 76.55, 50000, '2005-07-07', 564),

-- ('JavaScript for web', 3, 8, 67.50, 45000, '2009-08-10', 600),

-- ('MS SQL 2017', 4, 9, 15.95, 95000, '2017-01-17', 755),

-- ('Introducing to NoSQL', 4, 9, 144.99, 77550, '2018-02-21', 350),

-- ('TCP\IP protocol', 5, 10, 99.95, 24000, '1999-09-09', 788),

-- ('Hacking on networks', 5, 10, 87.95, 27000, '2000-12-13', 454)



--INSERT INTO Sales

--VALUES (11,'2018-06-01', 88.75, 5, 5),

-- (6,'2018-06-02', 55.29, 3,  6),

-- (5,'2018-06-03', 43.99, 2,  7),

-- ( 6, '2018-06-04', 39.99, 4,1),

-- (6,'2018-06-05', 35.75, 1,  5),

-- (6,'2018-06-06', 30.00, 2,  6),

-- ( 7,'2018-06-07', 13.95, 1, 7),

-- (8,'2018-06-08', 115.55, 7,  1),

-- (9,'2018-06-09', 45.95, 8,  1),

-- ( 10,'2018-06-10', 37.95, 3, 2),

-- (11,'2018-06-11', 355.95, 2,  2),

-- (5,'2018-06-12', 95.49, 11,  3),

-- ( 6,'2018-06-13', 48.99, 25, 3),

-- (7,'2018-06-14', 79.99, 54,  4),

-- (5,'2018-06-15', 86.99, 14,  5),

-- (6,'2018-06-16', 97.55, 27,  6),

-- (7,'2018-06-17', 13.95, 18,  7),

-- (8,'2018-06-18', 225.00, 72,  1),

-- (9,'2018-06-19', 145.95, 48,  2),

-- (10,'2018-06-20', 137.95, 53,  3)


--select Books.NameBook, Books.DrawingOfBook from books, Authors
--where Books.ID_AUTHOR= Authors.ID_AUTHOR and Authors.FirstName in ('Vlad', 'Eden', 'John')

--select Books.NameBook, Books.DrawingOfBook, Books.Pages from books
--where Books.Pages > 500 and Books.Pages<650

--select Books.NameBook from Books
--where Books.NameBook like '[TC]%'

--select Books.NameBook from Books, Themes
--where Books.ID_THEME = Themes.ID_THEME and Themes.NameTheme = 'Programming'
--and Books.DrawingOfBook > 20000

--select Books.NameBook, Books.DrawingOfBook from Books
--where Books.Price > 30 and books.DateOfPublishing>(getdate()-7)

--select Books.NameBook, Books.DrawingOfBook from books
--where Books.NameBook like '%MS%' and Books.NameBook not like '%2017%'

--select Books.NameBook, Themes.NameTheme, Authors.FirstName + ' ' + Authors.LastName as FullName from Books,Themes,Authors
--where Books.ID_AUTHOR= Authors.ID_AUTHOR
--and Books.ID_THEME = Themes.ID_THEME
--and (Books.Price / Books.Pages) < 0.1

--select Books.NameBook, Authors.FirstName, Books.Price, Books.DateOfPublishing from books, authors
--where Books.ID_AUTHOR= Authors.ID_AUTHOR
--and books.DateOfPublishing between '2017/01/01' and getdate()


--select Books.NameBook,Authors.FirstName,Themes.NameTheme, Sales.Quantity, Shops.NameShop from Books,Authors, Sales, Shops, Country, Themes
--where Books.ID_AUTHOR = Authors.ID_AUTHOR
--and Books.ID_BOOK = Sales.ID_BOOK
--and Sales.ID_SHOP = SHOPS.ID_SHOP
--and Books.ID_THEME = Themes.ID_THEME
--and SHOPS.ID_COUNTRY = COUNTRY.ID_COUNTRY
--and Themes.NameTheme = 'Computer science'
--and Country.NameCountry not in ('Ukraine','Germany')

--select Shops.NameShop from Shops, Country
--where Shops.ID_COUNTRY = Country.ID_COUNTRY
--and Country.NameCountry = 'Ukraine'




