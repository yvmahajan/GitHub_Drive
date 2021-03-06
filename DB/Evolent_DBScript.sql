USE [evolent]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 06-07-2018 23:41:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](16) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Contact_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Contact_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactId], [FirstName], [LastName], [Email], [PhoneNumber], [IsActive], [IsDeleted]) VALUES (1, N'Aaryan', N'Mahajan', N'Aaryan@gmail.com', N'1234567990', 1, 0)
INSERT [dbo].[Contact] ([ContactId], [FirstName], [LastName], [Email], [PhoneNumber], [IsActive], [IsDeleted]) VALUES (2, N'Yogesh', N'Mahajan', N'yvmahajan@gmail.com', N'9823634433', 1, 0)
INSERT [dbo].[Contact] ([ContactId], [FirstName], [LastName], [Email], [PhoneNumber], [IsActive], [IsDeleted]) VALUES (3, N'Yogesh', N'Mahajan', N'yvmahajan@gmail.com', N'9823634433', 1, 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
