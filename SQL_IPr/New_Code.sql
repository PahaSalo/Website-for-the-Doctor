Create database DOCTOR
use doctor

CREATE TABLE [Client] (
	Id int Primary key identity,
	Client_Name nvarchar(30) NOT NULL,
	Telephone nvarchar(30) NOT NULL,
	Client_city nvarchar(30) NOT NULL,
)
GO
CREATE TABLE [Timetable] (
	Id int Primary key identity,
	ClientId int,
	DoctorId int NOT NULL,
	AddressId int NOT NULL,
	ServicesId int NOT NULL,
	Data datetime NOT NULL,
	Time datetime NOT NULL,
)
GO
CREATE TABLE [Doctor] (
	Id int Primary key identity,
	Doctor_Name nvarchar(30) NOT NULL,
	Telephone nvarchar(30) NOT NULL,
)
GO
CREATE TABLE [Services] (
	Id int Primary key identity,
	Services_Name nvarchar(30) NOT NULL,
)
GO
CREATE TABLE [Address] (
	Id int Primary key identity,
	Address_Name nvarchar(30) NOT NULL,
	Address_city nvarchar(30) NOT NULL,
)
GO

ALTER TABLE [Timetable] WITH CHECK ADD CONSTRAINT [Timetable_fk0] FOREIGN KEY ([ClientId]) REFERENCES [Client]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Timetable] CHECK CONSTRAINT [Timetable_fk0]


GO
ALTER TABLE [Timetable] WITH CHECK ADD CONSTRAINT [Timetable_fk1] FOREIGN KEY ([DoctorId]) REFERENCES [Doctor]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Timetable] CHECK CONSTRAINT [Timetable_fk1]
GO


ALTER TABLE [Timetable] WITH CHECK ADD CONSTRAINT [Timetable_fk2] FOREIGN KEY ([AddressId]) REFERENCES [Address]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Timetable] CHECK CONSTRAINT [Timetable_fk2]
GO
ALTER TABLE [Timetable] WITH CHECK ADD CONSTRAINT [Timetable_fk3] FOREIGN KEY ([ServicesId]) REFERENCES [Services]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Timetable] CHECK CONSTRAINT [Timetable_fk3]
GO



