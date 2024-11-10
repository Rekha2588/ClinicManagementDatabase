CREATE TRIGGER [dbo].[AppointmentAudit] ON [dbo].[Appointments]
AFTER UPDATE
AS
IF (UPDATE (Status) OR UPDATE (StartTime) OR  UPDATE (EndTime) OR  UPDATE (PatientId))
BEGIN
	INSERT INTO [dbo].[Appointments_Audit]
           ([AppointmentId]
           ,[Status]
           ,[StartTime]
           ,[EndTime]
           ,[PatientId])
     SELECT [AppointmentId]
           ,[Status]
           ,[StartTime]
           ,[EndTime]
           ,[PatientId] FROM deleted
END;
GO

ALTER TABLE [dbo].[Appointments] ENABLE TRIGGER [AppointmentAudit]
GO