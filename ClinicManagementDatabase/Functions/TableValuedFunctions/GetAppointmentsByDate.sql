CREATE FUNCTION [dbo].[GetAppointmentsByDate]
(
	@Date DATETIME
)
RETURNS TABLE
AS	
RETURN 
	( 
		SELECT a.[AppointmentId]
		,a.[Status]
		,a.[StartTime]
		,a.[EndTime]
		,a.[PatientId]
		,p.FirstName
		,p.LastName
		FROM [dbo].[Appointments] a
		INNER JOIN [dbo].[Patients] p ON a.PatientId = p.PatientId
		WHERE CONVERT(VARCHAR(10), StartTime, 101) = CONVERT(VARCHAR(10), @Date, 101)
	)	
GO