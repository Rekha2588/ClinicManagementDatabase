CREATE PROCEDURE [dbo].[CreateNewPatient]
(
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
	INSERT INTO [dbo].[Patients]
           ([FirstName]
           ,[LastName]
           ,[DateOfBirth]
           ,[Gender]
           ,[ContactNumber]
           ,[EmailAddress]
           ,[Address]
           ,[City]
           ,[Province]
           ,[Zipcode])
     VALUES
           (@FirstName
           ,@LastName
           ,@DateOfBirth
           ,@Gender
           ,@ContactNumber
           ,@EmailAddress
           ,@Address
           ,@City
           ,@Province
           ,@Zipcode)
END

GO