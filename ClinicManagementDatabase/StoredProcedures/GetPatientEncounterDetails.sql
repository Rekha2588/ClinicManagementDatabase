CREATE PROCEDURE [dbo].[GetPatientEncounterDetails]
(
	@PatientId INT = 0
)
AS
BEGIN
	SELECT p.[PatientId]
      ,p.[FirstName]
      ,p.[LastName]
      ,p.[DateOfBirth]
      ,p.[Gender]
      ,p.[ContactNumber]
      ,p.[EmailAddress]
      ,p.[Address]
      ,p.[City]
      ,p.[Province]
      ,p.[Zipcode]
	  ,a.AppointmentId
	  ,a.StartTime
	  ,a.EndTime
	  ,al.Allergen
	  ,al.Reaction
	  ,i.VaccineName
	  ,i.AdministrationDate
	  ,l.TestName
	  ,l.TestDate
	  ,l.Result
	  ,m.MedicationName
	  ,m.Dosage
	  ,m.Frequency
	  ,pr.PrescriptionDate
	  ,pr.Refills
	  ,ph.PhysicianId
	  ,ph.FirstName + ' ' + ph.LastName AS PhysicianName
	FROM [dbo].[Patients] p
	INNER JOIN [dbo].[Appointments] a ON p.PatientId = a.PatientId
	LEFT JOIN [dbo].[Immunizations] i ON p.PatientId = i.PatientID
	LEFT JOIN [dbo].[Allergies] al ON p.PatientId = al.PatientID
	LEFT JOIN [dbo].[LabResults] l ON p.PatientId = l.PatientID
	LEFT JOIN [dbo].[Prescriptions] pr ON p.PatientId = pr.PatientID
	LEFT JOIN [dbo].[Medications] m ON m.MedicationId = pr.MedicationID
	LEFT JOIN [dbo].[Physician] ph ON pr.PhysicianId = ph.PhysicianId
	WHERE p.PatientId = @PatientId AND a.[Status] = 2 AND CONVERT(VARCHAR(10), a.StartTime, 101) = CONVERT(VARCHAR(10), GETDATE(), 101)
END
GO