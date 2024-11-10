﻿CREATE TABLE [dbo].[Allergies](
	[AllergyID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NULL,
	[Allergen] [varchar](50) NOT NULL,
	[Reaction] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AllergyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Allergies]  WITH CHECK ADD FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientId])
GO