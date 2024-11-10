CREATE PROCEDURE [dbo].[GetAppointmentByAppointmentId]
(
	@AppointmentId INT = 0
)
AS
BEGIN
	SELECT [AppointmentId]
      ,[Status]
      ,[StartTime]
      ,[EndTime]
      ,[PatientId]
	FROM [dbo].[Appointments]
	WHERE [AppointmentId] = @AppointmentId
END

GO