-- Veri tabanı oluştur

-- DDL Create
CREATE DATABASE blog;
GO

-- Database Chooise
USE  blog;
GO

-- Yeni bir SQL Server login ve kullanıcı oluşturma
CREATE LOGIN [HamitMizrak] WITH PASSWORD = 'HamitMizrak';
GO

CREATE USER [HamitMizrak] FOR LOGIN [HamitMizrak];
GO

-- Kullanıcıya gerekli yetkileri verme
ALTER ROLE db_owner ADD MEMBER [HamitMizrak];
GO


--  Student Table
if not exists (select * from sysobjects where name='notes' and xtype='U')
    CREATE TABLE Student (
	StudentId INT PRIMARY KEY IDENTITY  NOT NULL,
	studentName nvarchar(50)  NOT NULL,
	studentSurname nvarchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	Phone_Number varchar(20) UNIQUE NOT NULL,
	studentVizeNotes int NOT NULL,
	studentFinalNotes int NOT NULL,
	Registration_Date date,
	created_at DATETIME NOT NULL  DEFAULT CURRENT_TIMESTAMP,
);
go

insert into 
Student(studentName,studentSurname,city,Phone_Number,studentVizeNotes,studentFinalNotes,Registration_Date) 
values
('Adı-1','Soyadı-1','Elazığ','11122233',75,80,'2024-03-28');

insert into 
Student(studentName,studentSurname,city,Phone_Number,studentVizeNotes,studentFinalNotes,Registration_Date) 
values
('Adı-2','Soyadı-2','Malatya','11122233',80,90,'2024-03-28');

-- Kategori Table
if not exists (select * from sysobjects where name='notes' and xtype='U')
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY NOT NULL,
    CategoryName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX)
);
go

-- Ürünler tablosu
if not exists (select * from sysobjects where name='notes' and xtype='U')
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY NOT NULL, -- PK: Primary Key
    ProductName NVARCHAR(100) NOT NULL,
    CategoryID INT, -- FK: Foreign Key
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Description NVARCHAR(MAX),
    CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
go