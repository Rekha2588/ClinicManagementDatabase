CREATE TABLE [dbo].[Prescriptions](
	[PrescriptionID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NULL,
	[PhysicianId] [int] NULL,
	[MedicationID] [int] NULL,
	[PrescriptionDate] [datetime] NOT NULL,
	[Refills] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PrescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Prescriptions]  WITH CHECK ADD FOREIGN KEY([MedicationID])
REFERENCES [dbo].[Medications] ([MedicationId])
GO

ALTER TABLE [dbo].[Prescriptions]  WITH CHECK ADD FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientId])
GO

ALTER TABLE [dbo].[Prescriptions]  WITH CHECK ADD FOREIGN KEY([PhysicianId])
REFERENCES [dbo].[Physician] ([PhysicianId])
GO