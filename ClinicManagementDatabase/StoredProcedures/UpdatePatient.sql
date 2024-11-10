CREATE PROCEDURE [dbo].[UpdatePatient]
(
	@PatientId INT,
	@FirstName VARCHAR(100),
	@LastName VARCHAR(100),
	@DateOfBirth DATETIME,
	@Gender CHAR(2),
	@ContactNumber VARCHAR(20),
	@EmailAddress VARCHAR(100),
	@Address VARCHAR(200),
	@City VARCHAR(100),
	@Province VARCHAR(100),
	@Zipcode VARCHAR(10)
)
AS
BEGIN
	UPDATE [dbo].[Patients]
	SET [FirstName] = @FirstName
      ,[LastName] = @LastName
      ,[DateOfBirth] = @DateOfBirth
      ,[Gender] = @Gender
      ,[ContactNumber] = @ContactNumber
      ,[EmailAddress] = @EmailAddress
      ,[Address] = @Address
      ,[City] = @City
      ,[Province] = @Province
      ,[Zipcode] = @Zipcode
	WHERE PatientId = @PatientId
END

GO