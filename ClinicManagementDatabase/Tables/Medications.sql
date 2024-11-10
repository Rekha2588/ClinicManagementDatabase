﻿CREATE TABLE [dbo].[Medications](
	[MedicationId] [int] IDENTITY(1,1) NOT NULL,
	[MedicationName] [varchar](100) NOT NULL,
	[Dosage] [varchar](50) NOT NULL,
	[Frequency] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MedicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO