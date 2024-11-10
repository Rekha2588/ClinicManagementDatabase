CREATE TABLE [dbo].[Patients_Audit](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[ContactNumber] [varchar](100) NOT NULL,
	[EmailAddress] [varchar](150) NOT NULL,
	[Address] [varchar](500) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[Zipcode] [varchar](10) NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Patients_Audit] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Patients_Audit] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO