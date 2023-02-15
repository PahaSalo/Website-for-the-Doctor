
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Doctor_appoinmet_time
	DROP CONSTRAINT Doctor_appoinmet_time_fk0
GO
ALTER TABLE dbo.Doctor SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Busy_time ADD CONSTRAINT
	PK_Busy_time PRIMARY KEY CLUSTERED 
	(
	Doctor_appoinmet_time
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Busy_time SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Time_reserved_by_doctor ADD CONSTRAINT
	FK_Time_reserved_by_doctor_Busy_time FOREIGN KEY
	(
	Time_reserved_by_doctor
	) REFERENCES dbo.Busy_time
	(
	Doctor_appoinmet_time
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Time_reserved_by_doctor SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Server_reseved_time ADD CONSTRAINT
	FK_Server_reseved_time_Busy_time FOREIGN KEY
	(
	Server_reserved_time
	) REFERENCES dbo.Busy_time
	(
	Doctor_appoinmet_time
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Server_reseved_time SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Doctor_appoinmet_time ADD CONSTRAINT
	FK_Doctor_appoinmet_time_Doctor FOREIGN KEY
	(
	Id
	) REFERENCES dbo.Doctor
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Doctor_appoinmet_time ADD CONSTRAINT
	FK_Doctor_appoinmet_time_Busy_time FOREIGN KEY
	(
	Doctor_appoinmet_time
	) REFERENCES dbo.Busy_time
	(
	Doctor_appoinmet_time
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Doctor_appoinmet_time SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
