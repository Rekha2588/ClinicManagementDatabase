CREATE TABLE [dbo].[Physician](
	[PhysicianId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[DeptId] [int] NULL,
	[Gender] [char](1) NOT NULL,
	[ContactNumber] [varchar](10) NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[Province] [varchar](100) NOT NULL,
	[Zipcode] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhysicianId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Physician]  WITH CHECK ADD FOREIGN KEY([DeptId])
REFERENCES [dbo].[Department] ([DeptId])
GO