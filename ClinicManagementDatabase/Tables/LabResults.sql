﻿CREATE TABLE [dbo].[LabResults](
	[LabResultID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NULL,
	[TestName] [varchar](100) NOT NULL,
	[TestDate] [datetime] NOT NULL,
	[Result] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LabResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[LabResults]  WITH CHECK ADD FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientId])
GO