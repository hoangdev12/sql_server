CREATE TABLE KhachHang (
      CustomerID nchar(5) PRIMARY KEY NOT NULL,
	  CompanyName nvarchar(40) NOT NULL,
	  ContactName nvarchar(30) NULL,
	  ContactTitle nvarchar(30) NULL,
	  AddressKH nvarchar(60) NULL,
	  City nvarchar(15) NULL,
	  Region nvarchar(15) NULL,
	  Country nvarchar(15) NULL,
	  Phone nvarchar(24) NULL,
	  Fax nvarchar(24) NULL,
);

BULK INSERT KhachHang
FROM 'C:\Quan ly database\KH1.txt'
WITH (
    FIELDTERMINATOR = '\t', 
    ROWTERMINATOR = '\n'    
);

SELECT *
FROM [dbo].[KhachHang]

CREATE TABLE TheLoai (
      Category INT PRIMARY KEY NOT NULL,
	  CategoryName nvarchar(15) NOT NULL,
	  Description ntext NULL
);

BULK INSERT TheLoai
FROM 'C:\Quan ly database\TL.txt'
WITH (
    FIELDTERMINATOR = '\t', 
    ROWTERMINATOR = '\n'    
);

SELECT *
FROM [dbo].[TheLoai]

CREATE TABLE NV (
      EmployeeID INT PRIMARY KEY NOT NULL,
	  LastName nvarchar(20) NOT NULL,
	  FirstName nvarchar(10) NOT NULL,
	  Title nvarchar(30) NULL,
	  TitleOfCourtesy nvarchar(25) NULL,
	  BirthDate datetime NULL,
	  HireDate datetime NULL,
	  AddressKH nvarchar(60) NULL,
	  City nvarchar(15) NULL,
	  Country nvarchar(15) NULL,
	  Phone nvarchar(24) NULL
);

BULK INSERT NV
FROM 'C:\Quan ly database\NV.txt'
WITH (
    FIELDTERMINATOR = '\t', 
    ROWTERMINATOR = '\n'    
);

SELECT *
FROM [dbo].[NV]
