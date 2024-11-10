CREATE FUNCTION [dbo].[GetAppointmentIdByLastNameAndDateOfBirth]
(
	@LastName VARCHAR(100),
	@DateOfBirth DATETIME
)
RETURNS INT
AS
BEGIN
	DECLARE @AppointmentId INT = 0
	SELECT @AppointmentId = a.[AppointmentId]
	FROM [dbo].[Appointments] a
	INNER JOIN [dbo].[Patients] p
	ON a.PatientId = p.PatientId
	WHERE LOWER(p.LastName) = LOWER(@LastName)
	AND CONVERT(VARCHAR(10), p.DateOfBirth, 101) = CONVERT(VARCHAR(10), @DateOfBirth, 101)
	AND CONVERT(VARCHAR(10), a.StartTime, 101) = CONVERT(VARCHAR(10), GETDATE(), 101)
	RETURN @AppointmentId
END
GO