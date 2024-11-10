CREATE PROCEDURE [dbo].[DeletePatient]
(
	@PatientId INT
)
AS
BEGIN
	DELETE FROM [dbo].[Patients]
    WHERE PatientId = @PatientId
END

GO