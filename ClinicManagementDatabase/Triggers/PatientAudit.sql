CREATE TRIGGER [dbo].[PatientAudit] ON [dbo].[Patients]
AFTER UPDATE
AS
IF (UPDATE (FirstName) OR UPDATE (LastName) OR  UPDATE (DateOfBirth) OR UPDATE (Gender) OR  UPDATE (ContactNumber) OR UPDATE (EmailAddress)
OR UPDATE (Address) OR  UPDATE (City) OR UPDATE (Province) OR  UPDATE (Zipcode))
BEGIN
	INSERT INTO [dbo].[Patients_Audit]
           ([PatientId]
           ,[FirstName]
           ,[LastName]
           ,[DateOfBirth]
           ,[Gender]
           ,[ContactNumber]
           ,[EmailAddress]
           ,[Address]
           ,[City]
           ,[Province]
           ,[Zipcode])
     SELECT [PatientId]
           ,[FirstName]
           ,[LastName]
           ,[DateOfBirth]
           ,[Gender]
           ,[ContactNumber]
           ,[EmailAddress]
           ,[Address]
           ,[City]
           ,[Province]
           ,[Zipcode] FROM deleted
END;
GO

ALTER TABLE [dbo].[Patients] ENABLE TRIGGER [PatientAudit]
GO