CREATE PROCEDURE [dbo].[GetPatientDemographicDetails]
(
	@PatientId INT = 0
)
AS
BEGIN
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
      ,[Zipcode]
	FROM [dbo].[Patients]
	WHERE PatientId = @PatientId
END
GO