CREATE PROCEDURE [dbo].[GetPhysicianDemographicDetails]
(
	@PhysicianId INT = 0
)
AS
BEGIN
	SELECT [PhysicianId]
      ,[FirstName]
      ,[LastName]
      ,[DateOfBirth]
      ,d.DeptName
      ,[Gender]
      ,[ContactNumber]
      ,[EmailAddress]
      ,[Address]
      ,[City]
      ,[Province]
      ,[Zipcode]
	FROM [dbo].[Physician] p 
	INNER JOIN [dbo].[Department] d ON p.DeptId = d.DeptId 
	WHERE PhysicianId = @PhysicianId
END
GO