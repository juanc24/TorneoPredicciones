 
/****** Object:  Database [TPDB2]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE DATABASE [TPDB]
 
GO
USE [TPDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dates]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dates](
	[DateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TournamentId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Dates] PRIMARY KEY CLUSTERED 
(
	[DateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OwnerId] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupUsers]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUsers](
	[GroupUserId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[IsAccepted] [bit] NOT NULL,
	[IsBlocked] [bit] NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.GroupUsers] PRIMARY KEY CLUSTERED 
(
	[GroupUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Leagues]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leagues](
	[LeagueId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Leagues] PRIMARY KEY CLUSTERED 
(
	[LeagueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Matches]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[MatchId] [int] IDENTITY(1,1) NOT NULL,
	[DateId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[LocalId] [int] NOT NULL,
	[VisitorId] [int] NOT NULL,
	[LocalGoals] [int] NULL,
	[VisitorGoals] [int] NULL,
	[StatusId] [int] NOT NULL,
	[TournamentGroupId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Matches] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Predictions]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions](
	[PredictionId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[MatchId] [int] NOT NULL,
	[LocalGoals] [int] NOT NULL,
	[VisitorGoals] [int] NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Predictions] PRIMARY KEY CLUSTERED 
(
	[PredictionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teams]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[Initials] [nvarchar](3) NOT NULL,
	[LeagueId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Teams] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TournamentGroups]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentGroups](
	[TournamentGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TournamentId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TournamentGroups] PRIMARY KEY CLUSTERED 
(
	[TournamentGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournaments](
	[TournamentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Order] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Tournaments] PRIMARY KEY CLUSTERED 
(
	[TournamentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TournamentTeams]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentTeams](
	[TournamentTeamId] [int] IDENTITY(1,1) NOT NULL,
	[TournamentGroupId] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
	[MatchesPlayed] [int] NOT NULL,
	[MatchesWon] [int] NOT NULL,
	[MatchesLost] [int] NOT NULL,
	[MatchesTied] [int] NOT NULL,
	[FavorGoals] [int] NOT NULL,
	[AgainstGoals] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[Position] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TournamentTeams] PRIMARY KEY CLUSTERED 
(
	[TournamentTeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[Picture] [nvarchar](max) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[NickName] [nvarchar](20) NOT NULL,
	[FavoriteTeamId] [int] NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 07/11/2017 6:11:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.UserTypes] PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Dates] ON 

INSERT [dbo].[Dates] ([DateId], [Name], [TournamentId]) VALUES (1, N'Fecha 1 Test', 1)
INSERT [dbo].[Dates] ([DateId], [Name], [TournamentId]) VALUES (2, N'Fecha 2 Test', 1)
SET IDENTITY_INSERT [dbo].[Dates] OFF
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([GroupId], [Name], [OwnerId], [Logo]) VALUES (1, N'Grupo Generico TEST', 1, N'~/Content/Groups/13494865-serpiente-de-dibujos-animados-Foto-de-archivo.jpg')
SET IDENTITY_INSERT [dbo].[Groups] OFF
SET IDENTITY_INSERT [dbo].[GroupUsers] ON 

INSERT [dbo].[GroupUsers] ([GroupUserId], [GroupId], [UserId], [IsAccepted], [IsBlocked], [Points]) VALUES (1, 1, 2, 1, 0, 0)
INSERT [dbo].[GroupUsers] ([GroupUserId], [GroupId], [UserId], [IsAccepted], [IsBlocked], [Points]) VALUES (2, 1, 1, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[GroupUsers] OFF
SET IDENTITY_INSERT [dbo].[Leagues] ON 

INSERT [dbo].[Leagues] ([LeagueId], [Name], [Logo]) VALUES (1, N'Liga Test', N'~/Content/Leagues/IMG-20160621-WA0010.jpg')
SET IDENTITY_INSERT [dbo].[Leagues] OFF
SET IDENTITY_INSERT [dbo].[Matches] ON 

INSERT [dbo].[Matches] ([MatchId], [DateId], [DateTime], [LocalId], [VisitorId], [LocalGoals], [VisitorGoals], [StatusId], [TournamentGroupId]) VALUES (2, 1, CAST(N'2017-11-29T21:56:00.000' AS DateTime), 1, 2, NULL, NULL, 1, 1)
INSERT [dbo].[Matches] ([MatchId], [DateId], [DateTime], [LocalId], [VisitorId], [LocalGoals], [VisitorGoals], [StatusId], [TournamentGroupId]) VALUES (3, 1, CAST(N'2017-11-29T21:57:00.000' AS DateTime), 2, 1, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Matches] OFF
SET IDENTITY_INSERT [dbo].[Predictions] ON 

INSERT [dbo].[Predictions] ([PredictionId], [UserId], [MatchId], [LocalGoals], [VisitorGoals], [Points]) VALUES (1, 2, 2, 1, 2, 0)
INSERT [dbo].[Predictions] ([PredictionId], [UserId], [MatchId], [LocalGoals], [VisitorGoals], [Points]) VALUES (2, 2, 3, 2, 2, 0)
SET IDENTITY_INSERT [dbo].[Predictions] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (1, N'Activo')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (3, N'Cerrado')
INSERT [dbo].[Status] ([StatusId], [Name]) VALUES (2, N'Inactivo')
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([TeamId], [Name], [Logo], [Initials], [LeagueId]) VALUES (1, N'Equipo 1', N'~/Content/Teams/IMG-20151127-WA0034.jpg', N'TE1', 1)
INSERT [dbo].[Teams] ([TeamId], [Name], [Logo], [Initials], [LeagueId]) VALUES (2, N'Equipo 2', N'', N'EQ2', 1)
SET IDENTITY_INSERT [dbo].[Teams] OFF
SET IDENTITY_INSERT [dbo].[TournamentGroups] ON 

INSERT [dbo].[TournamentGroups] ([TournamentGroupId], [Name], [TournamentId]) VALUES (1, N'Todos ContraTodos Test', 1)
SET IDENTITY_INSERT [dbo].[TournamentGroups] OFF
SET IDENTITY_INSERT [dbo].[Tournaments] ON 

INSERT [dbo].[Tournaments] ([TournamentId], [Name], [Logo], [IsActive], [Order]) VALUES (1, N'Torneo Test', N'~/Content/Tournaments/xamarindo.png', 1, 0)
SET IDENTITY_INSERT [dbo].[Tournaments] OFF
SET IDENTITY_INSERT [dbo].[TournamentTeams] ON 

INSERT [dbo].[TournamentTeams] ([TournamentTeamId], [TournamentGroupId], [TeamId], [MatchesPlayed], [MatchesWon], [MatchesLost], [MatchesTied], [FavorGoals], [AgainstGoals], [Points], [Position]) VALUES (1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[TournamentTeams] ([TournamentTeamId], [TournamentGroupId], [TeamId], [MatchesPlayed], [MatchesWon], [MatchesLost], [MatchesTied], [FavorGoals], [AgainstGoals], [Points], [Position]) VALUES (2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[TournamentTeams] OFF

SET IDENTITY_INSERT [dbo].[UserTypes] ON 

INSERT [dbo].[UserTypes] ([UserTypeId], [Name]) VALUES (2, N'Facebook')
INSERT [dbo].[UserTypes] ([UserTypeId], [Name]) VALUES (1, N'Local')
SET IDENTITY_INSERT [dbo].[UserTypes] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Date_Name_TournamentId_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Date_Name_TournamentId_Index] ON [dbo].[Dates]
(
	[Name] ASC,
	[TournamentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Group_Name_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Group_Name_Index] ON [dbo].[Groups]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OwnerId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_OwnerId] ON [dbo].[Groups]
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GroupUser_GroupId_UserId_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [GroupUser_GroupId_UserId_Index] ON [dbo].[GroupUsers]
(
	[GroupId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [League_Name_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [League_Name_Index] ON [dbo].[Leagues]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DateId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_DateId] ON [dbo].[Matches]
(
	[DateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocalId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_LocalId] ON [dbo].[Matches]
(
	[LocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatusId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_StatusId] ON [dbo].[Matches]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TournamentGroupId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_TournamentGroupId] ON [dbo].[Matches]
(
	[TournamentGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VisitorId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_VisitorId] ON [dbo].[Matches]
(
	[VisitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Prediction_UserId_MatchId_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Prediction_UserId_MatchId_Index] ON [dbo].[Predictions]
(
	[UserId] ASC,
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Status_Name_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Status_Name_Index] ON [dbo].[Status]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Team_Initials_LeagueId_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Team_Initials_LeagueId_Index] ON [dbo].[Teams]
(
	[Initials] ASC,
	[LeagueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Team_Name_LeagueId_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Team_Name_LeagueId_Index] ON [dbo].[Teams]
(
	[Name] ASC,
	[LeagueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TournamentGroup_Name_TournamentId_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [TournamentGroup_Name_TournamentId_Index] ON [dbo].[TournamentGroups]
(
	[Name] ASC,
	[TournamentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Tournament_Name_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Tournament_Name_Index] ON [dbo].[Tournaments]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TournamentTeam_TournamentGroupId_TeamId_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [TournamentTeam_TournamentGroupId_TeamId_Index] ON [dbo].[TournamentTeams]
(
	[TournamentGroupId] ASC,
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FavoriteTeamId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_FavoriteTeamId] ON [dbo].[Users]
(
	[FavoriteTeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserTypeId]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_UserTypeId] ON [dbo].[Users]
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [User_Email_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [User_Email_Index] ON [dbo].[Users]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [User_NickName_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [User_NickName_Index] ON [dbo].[Users]
(
	[NickName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserType_Name_Index]    Script Date: 07/11/2017 6:11:44 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserType_Name_Index] ON [dbo].[UserTypes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Dates]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Dates_dbo.Tournaments_TournamentId] FOREIGN KEY([TournamentId])
REFERENCES [dbo].[Tournaments] ([TournamentId])
GO
ALTER TABLE [dbo].[Dates] CHECK CONSTRAINT [FK_dbo.Dates_dbo.Tournaments_TournamentId]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Groups_dbo.Users_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_dbo.Groups_dbo.Users_OwnerId]
GO
ALTER TABLE [dbo].[GroupUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GroupUsers_dbo.Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([GroupId])
GO
ALTER TABLE [dbo].[GroupUsers] CHECK CONSTRAINT [FK_dbo.GroupUsers_dbo.Groups_GroupId]
GO
ALTER TABLE [dbo].[GroupUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GroupUsers_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[GroupUsers] CHECK CONSTRAINT [FK_dbo.GroupUsers_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Matches_dbo.Dates_DateId] FOREIGN KEY([DateId])
REFERENCES [dbo].[Dates] ([DateId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_dbo.Matches_dbo.Dates_DateId]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Matches_dbo.Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_dbo.Matches_dbo.Status_StatusId]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Matches_dbo.Teams_LocalId] FOREIGN KEY([LocalId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_dbo.Matches_dbo.Teams_LocalId]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Matches_dbo.Teams_VisitorId] FOREIGN KEY([VisitorId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_dbo.Matches_dbo.Teams_VisitorId]
GO
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Matches_dbo.TournamentGroups_TournamentGroupId] FOREIGN KEY([TournamentGroupId])
REFERENCES [dbo].[TournamentGroups] ([TournamentGroupId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_dbo.Matches_dbo.TournamentGroups_TournamentGroupId]
GO
ALTER TABLE [dbo].[Predictions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Predictions_dbo.Matches_MatchId] FOREIGN KEY([MatchId])
REFERENCES [dbo].[Matches] ([MatchId])
GO
ALTER TABLE [dbo].[Predictions] CHECK CONSTRAINT [FK_dbo.Predictions_dbo.Matches_MatchId]
GO
ALTER TABLE [dbo].[Predictions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Predictions_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Predictions] CHECK CONSTRAINT [FK_dbo.Predictions_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Teams_dbo.Leagues_LeagueId] FOREIGN KEY([LeagueId])
REFERENCES [dbo].[Leagues] ([LeagueId])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_dbo.Teams_dbo.Leagues_LeagueId]
GO
ALTER TABLE [dbo].[TournamentGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TournamentGroups_dbo.Tournaments_TournamentId] FOREIGN KEY([TournamentId])
REFERENCES [dbo].[Tournaments] ([TournamentId])
GO
ALTER TABLE [dbo].[TournamentGroups] CHECK CONSTRAINT [FK_dbo.TournamentGroups_dbo.Tournaments_TournamentId]
GO
ALTER TABLE [dbo].[TournamentTeams]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TournamentTeams_dbo.Teams_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[TournamentTeams] CHECK CONSTRAINT [FK_dbo.TournamentTeams_dbo.Teams_TeamId]
GO
ALTER TABLE [dbo].[TournamentTeams]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TournamentTeams_dbo.TournamentGroups_TournamentGroupId] FOREIGN KEY([TournamentGroupId])
REFERENCES [dbo].[TournamentGroups] ([TournamentGroupId])
GO
ALTER TABLE [dbo].[TournamentTeams] CHECK CONSTRAINT [FK_dbo.TournamentTeams_dbo.TournamentGroups_TournamentGroupId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.Teams_FavoriteTeamId] FOREIGN KEY([FavoriteTeamId])
REFERENCES [dbo].[Teams] ([TeamId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.Teams_FavoriteTeamId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.UserTypes_UserTypeId] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserTypes] ([UserTypeId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.UserTypes_UserTypeId]
GO

