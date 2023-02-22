
USE DOCTOR
CREATE TABLE [Client] (
	Id int Primary key identity,
	Name nvarchar(30) NOT NULL,
	Telephone nvarchar(20) NOT NULL,
	Mail nvarchar(30) NOT NULL,  
)
GO
CREATE TABLE [Timetable] (
	Id int Primary key identity,
	ClientId int,
	DocotorId int NOT NULL,
	AddressId int NOT NULL,
	Data datetime NOT NULL,
	Time datetime NOT NULL,
)
GO
CREATE TABLE [Doctor] (
	Id int Primary key identity,
	Name nvarchar(30) NOT NULL,
	Telephone nvarchar(20) NOT NULL,
	Mail nvarchar(20) NOT NULL,

)
GO
CREATE TABLE [Services] (
	Id int Primary key identity,
	Name nvarchar (30),
)
GO
CREATE TABLE [Address] (
	Id int Primary key identity,
	Name nvarchar (30),
)
GO
CREATE TABLE [Appointment_Services] (
	AppointmentId int NOT NULL,
	ServiceId int NOT NULL
)
GO

ALTER TABLE [Timetable] WITH CHECK ADD CONSTRAINT [Timetable_fk0] FOREIGN KEY ([ClientId]) REFERENCES [Client]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Timetable] CHECK CONSTRAINT [Timetable_fk0]
GO
ALTER TABLE [Timetable] WITH CHECK ADD CONSTRAINT [Timetable_fk1] FOREIGN KEY ([DocotorId]) REFERENCES [Doctor]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Timetable] CHECK CONSTRAINT [Timetable_fk1]
GO
ALTER TABLE [Timetable] WITH CHECK ADD CONSTRAINT [Timetable_fk2] FOREIGN KEY ([AddressId]) REFERENCES [Address]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Timetable] CHECK CONSTRAINT [Timetable_fk2]
GO




ALTER TABLE [Appointment_Services] WITH CHECK ADD CONSTRAINT [Appointment_Services_fk0] FOREIGN KEY ([AppointmentId]) REFERENCES [Timetable]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Appointment_Services] CHECK CONSTRAINT [Appointment_Services_fk0]
GO
ALTER TABLE [Appointment_Services] WITH CHECK ADD CONSTRAINT [Appointment_Services_fk1] FOREIGN KEY ([ServiceId]) REFERENCES [Services]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Appointment_Services] CHECK CONSTRAINT [Appointment_Services_fk1]
GO

INSERT CLIENT VALUES ('Вася', '3897978378932789', 'ajgasjdj@mail.ru')
select * from client 