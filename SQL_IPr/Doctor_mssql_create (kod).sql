Create DATABaSE DOCTOR
Use DOCTOR
CREATE TABLE [Client] (
	Id int NOT NULL,
	Name nvarchar(30) NOT NULL,
	Telephone nvarchar(20) NOT NULL,
	Mail nvarchar(30) NOT NULL,
  CONSTRAINT [PK_CLIENT] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Doctor's_appointment] (
	Id int NOT NULL,
	ClientId int NOT NULL,
	DocotorId int NOT NULL,
	ServicesId int NOT NULL,
	AddressId int NOT NULL,
	DataTimeId int NOT NULL,
	BusyTimeId int NOT NULL,
  CONSTRAINT [PK_DOCTOR'S_APPOINTMENT] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Doctor] (
	Id int NOT NULL,
	Name nvarchar(30) NOT NULL,
	Telephone nvarchar(20) NOT NULL,
	Mail nvarchar(20) NOT NULL,
  CONSTRAINT [PK_DOCTOR] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Services] (
	Id int NOT NULL,
	Name nvarchar NOT NULL,
  CONSTRAINT [PK_SERVICES] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Address] (
	Id int NOT NULL,
	Name nvarchar NOT NULL,
  CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [DataTime] (
	Id int NOT NULL,
	DataTime datetime NOT NULL,
  CONSTRAINT [PK_DATATIME] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [BusyTime] (
	Id int NOT NULL,
	BusyTime nvarchar(30) NOT NULL,
  CONSTRAINT [PK_BUSYTIME] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

ALTER TABLE [Doctor's_appointment] WITH CHECK ADD CONSTRAINT [Doctor's_appointment_fk0] FOREIGN KEY ([ClientId]) REFERENCES [Client]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Doctor's_appointment] CHECK CONSTRAINT [Doctor's_appointment_fk0]
GO
ALTER TABLE [Doctor's_appointment] WITH CHECK ADD CONSTRAINT [Doctor's_appointment_fk1] FOREIGN KEY ([DocotorId]) REFERENCES [Doctor]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Doctor's_appointment] CHECK CONSTRAINT [Doctor's_appointment_fk1]
GO
ALTER TABLE [Doctor's_appointment] WITH CHECK ADD CONSTRAINT [Doctor's_appointment_fk2] FOREIGN KEY ([ServicesId]) REFERENCES [Services]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Doctor's_appointment] CHECK CONSTRAINT [Doctor's_appointment_fk2]
GO
ALTER TABLE [Doctor's_appointment] WITH CHECK ADD CONSTRAINT [Doctor's_appointment_fk3] FOREIGN KEY ([AddressId]) REFERENCES [Address]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Doctor's_appointment] CHECK CONSTRAINT [Doctor's_appointment_fk3]
GO
ALTER TABLE [Doctor's_appointment] WITH CHECK ADD CONSTRAINT [Doctor's_appointment_fk4] FOREIGN KEY ([DataTimeId]) REFERENCES [DataTime]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Doctor's_appointment] CHECK CONSTRAINT [Doctor's_appointment_fk4]
GO
ALTER TABLE [Doctor's_appointment] WITH CHECK ADD CONSTRAINT [Doctor's_appointment_fk5] FOREIGN KEY ([BusyTimeId]) REFERENCES [BusyTime]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [Doctor's_appointment] CHECK CONSTRAINT [Doctor's_appointment_fk5]
GO






