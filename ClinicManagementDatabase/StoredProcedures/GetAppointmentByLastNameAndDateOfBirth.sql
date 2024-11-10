CREATE PROCEDURE [dbo].[GetAppointmentByLastNameAndDateOfBirth]
(
	@LastName VARCHAR(100),
	@DateOfBirth DATETIME
)
AS
BEGIN
	SELECT a.[AppointmentId]
	  ,p.[PatientId]
	  ,p.FirstName
	  ,p.LastName
	  ,p.DateOfBirth
	  ,p.Gender
	  ,p.ContactNumber
	  ,p.EmailAddress
	  ,p.[Address]
	  ,p.City
	  ,p.Province
	  ,p.Zipcode
      ,a.[Status]
      ,a.[StartTime]
      ,a.[EndTime]
	FROM [dbo].[Appointments] a
	INNER JOIN [dbo].[Patients] p
	ON a.PatientId = p.PatientId
	WHERE LOWER(p.LastName) = LOWER(@LastName)
	AND CONVERT(VARCHAR(10), p.DateOfBirth, 101) = CONVERT(VARCHAR(10), @DateOfBirth, 101)
END
GO
