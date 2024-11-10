CREATE PROCEDURE [dbo].[RescheduleAppointment]
(
	@AppointmentId INT,
	@StartTime DATETIME,
	@EndTime DATETIME
)
AS
BEGIN
	UPDATE [dbo].[Appointments]
	SET [Status] = 2
	  ,[StartTime] = @StartTime
      ,[EndTime] = @EndTime   
	WHERE AppointmentId = @AppointmentId
END

GO