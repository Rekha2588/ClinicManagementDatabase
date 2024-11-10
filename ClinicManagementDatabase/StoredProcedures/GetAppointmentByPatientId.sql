CREATE PROCEDURE [dbo].[GetAppointmentByPatientId]
(
	@PatientId INT = 0
)
AS
BEGIN
	SELECT [AppointmentId]      
      ,[StartTime]
      ,[EndTime]      
	FROM [dbo].[Appointments]
	WHERE [PatientId] = @PatientId
	AND Status = 2
END

GO