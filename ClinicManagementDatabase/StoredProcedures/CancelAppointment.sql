CREATE PROCEDURE [dbo].[CancelAppointment]
(
	@AppointmentId INT
)
AS
BEGIN
	UPDATE [dbo].[Appointments]
	SET [Status] = 3	    
	WHERE AppointmentId = @AppointmentId
END

GO