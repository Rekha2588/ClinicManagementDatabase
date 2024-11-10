CREATE PROCEDURE [dbo].[GetPatientByLastNameAndDateOfBirth]
(
	@LastName VARCHAR(100),
	@DateOfBirth DATETIME
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
	WHERE LOWER(LastName) = LOWER(@LastName)
	AND CONVERT(VARCHAR(10), [DateOfBirth], 101) = CONVERT(VARCHAR(10), @DateOfBirth, 101)
END
GO