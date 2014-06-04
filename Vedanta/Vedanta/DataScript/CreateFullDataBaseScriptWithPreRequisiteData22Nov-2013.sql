

/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 11/22/2013 16:55:45 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 11/22/2013 16:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'vedanta')
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 11/22/2013 16:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[Admissions]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RollNumber] [int] NULL,
	[CourseId] [int] NULL,
	[StudentId] [int] NULL,
	[AdmissionDate] [datetime] NULL,
	[BatchId] [int] NULL,
	[BatchStartDate] [datetime] NULL,
	[BatchEndDate] [datetime] NULL,
	[DownPayment] [money] NULL,
	[NextPaymentDueDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[MaximumDiscountAmount] [money] NULL,
	[RegistrationNumber] [nvarchar](50) NULL,
	[IsComputerKnown] [bit] NULL,
	[ComputerKnowledgeLevelId] [int] NULL,
	[ComputerInterestId] [int] NULL,
	[HowToKnowAboutUsId] [int] NULL,
	[NeedJobAssistance] [bit] NULL,
	[AssociateId] [int] NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Students]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [int] NOT NULL,
	[DOB] [datetime] NULL,
	[Age] [int] NULL,
	[MaritalStatusId] [int] NOT NULL,
	[FatherName] [nvarchar](100) NULL,
	[MotherName] [nvarchar](100) NULL,
	[Street] [nvarchar](100) NULL,
	[Street2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[Zip] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
	[Phone] [nvarchar](15) NULL,
	[Cell] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[Image] [image] NULL,
	[ImageType] [nvarchar](4) NULL,
	[LeavingDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
	[NationalityId] [int] NULL,
	[ReligionId] [int] NULL,
	[Mothertoungue] [nvarchar](50) NULL,
	[PassportNo] [nvarchar](50) NULL,
	[PAN] [nvarchar](50) NULL,
	[UIDNo] [nvarchar](50) NULL,
	[OccupationId] [int] NULL,
	[FamilyIncomeSlotId] [int] NULL,
	[QualificationId] [int] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[States]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [nvarchar](10) NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[States] ON
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1, 14, N'Victoria', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2, 14, N'Tasmania', N'TS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3, 14, N'Queensland', N'QL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4, 14, N'New South Wales', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5, 14, N'South Australia', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (6, 14, N'Western Australia', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (7, 14, N'Northern Territory', N'NT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (8, 33, N'Acre', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (10, 33, N'Amap', N'AP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (11, 33, N'Bahia', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (12, 33, N'Gois', N'GO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (13, 33, N'Piau', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (14, 33, N'Cear', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (15, 33, N'Paran', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (16, 33, N'Alagoas', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (17, 33, N'Paraba', N'PB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (18, 33, N'Roraima', N'RR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (19, 33, N'Sergipe', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (20, 33, N'Amazonas', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (21, 33, N'Maranho', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (22, 33, N'Rondnia', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (24, 33, N'So Paulo', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (25, 33, N'Tocantins', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (26, 33, N'Mato Grosso', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (27, 33, N'Minas Gerais', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (28, 33, N'Esprito Santo', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (29, 33, N'Rio de Janeiro', N'RJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (30, 33, N'Santa Catarina', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (32, 33, N'Rio Grande do Sul', N'RS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (33, 33, N'Mato Grosso do Sul', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (34, 33, N'Rio Grande do Norte', N'RN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (35, 43, N'Quebec', N'QC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (36, 43, N'Alberta', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (37, 43, N'Ontario', N'ON')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (38, 43, N'Manitoba', N'MB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (39, 43, N'Nova Scotia', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (40, 43, N'Saskatchewan', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (41, 43, N'Newfoundland and Labrador', N'NF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (42, 43, N'New Brunswick', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (43, 43, N'British Columbia', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (45, 43, N'Prince Edward Island', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (46, 43, N'Northwest Territories', N'NT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (49, 114, N'Bali', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (56, 159, N'Sonora', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (59, 159, N'Jalisco', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (60, 159, N'Hidalgo', N'HI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (61, 159, N'Morelos', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (62, 159, N'Chiapas', N'CP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (63, 159, N'Tabasco', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (66, 159, N'Guerrero', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (69, 159, N'Nuevo Leon', N'NL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (70, 159, N'Tamaulipas', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (71, 159, N'Guanajuato', N'GJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (72, 159, N'Quintana Roo', N'QR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (73, 159, N'Baja California', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (74, 159, N'Baja California Sur', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (75, 165, N'Tov', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (76, 165, N'Uvs', N'UV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (80, 165, N'Dornod', N'DD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (81, 165, N'Hovsgol', N'HG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (82, 165, N'Selenge', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (86, 165, N'Suhbaatar', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (91, 203, N'Komi', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (105, 203, N'Dagestan', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (106, 203, N'Mariy-El', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (110, 203, N'Tatarstan', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (122, 254, N'Alabama', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (123, 254, N'Alaska', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (124, 254, N'Arizona', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (125, 254, N'Arkansas', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (126, 254, N'California', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (127, 254, N'Colorado', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (128, 254, N'Connecticut', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (129, 254, N'Delaware', N'DE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (130, 254, N'District of Columbia', N'DC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (131, 254, N'Florida', N'FL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (132, 254, N'Georgia', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (133, 254, N'Hawaii', N'HI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (134, 254, N'Idaho', N'ID')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (135, 254, N'Illinois', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (136, 254, N'Indiana', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (137, 254, N'Iowa', N'IA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (138, 254, N'Kansas', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (139, 254, N'Kentucky', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (140, 254, N'Louisiana', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (141, 254, N'Maine', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (142, 254, N'Maryland', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (143, 254, N'Massachusetts', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (144, 254, N'Michigan', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (145, 254, N'Minnesota', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (146, 254, N'Mississippi', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (147, 254, N'Missouri', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (148, 254, N'Montana', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (149, 254, N'Nebraska', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (150, 254, N'Nevada', N'NV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (151, 254, N'New Hampshire', N'NH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (152, 254, N'New Jersey', N'NJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (153, 254, N'New Mexico', N'NM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (154, 254, N'New York', N'NY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (155, 254, N'North Carolina', N'NC')
GO
print 'Processed 100 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (156, 254, N'North Dakota', N'ND')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (157, 254, N'Ohio', N'OH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (158, 254, N'Oklahoma', N'OK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (159, 254, N'Oregon', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (160, 254, N'Pennsylvania', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (161, 254, N'Rhode Island', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (162, 254, N'South Carolina', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (163, 254, N'South Dakota', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (164, 254, N'Tennessee', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (165, 254, N'Texas', N'TX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (166, 254, N'Utah', N'UT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (167, 254, N'Virginia', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (168, 254, N'Washington', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (169, 254, N'West Virginia', N'WV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (170, 254, N'Wisconsin', N'WI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (171, 254, N'Wyoming', N'WY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (172, 254, N'Vermont', N'VT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (174, 14, N'Australian Capital Territory', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (189, 114, N'Papua', N'IJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (193, 165, N'Bulgan', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (194, 165, N'Hovd', N'HD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (196, 159, N'Chihuahua', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (197, 159, N'Colima', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (198, 159, N'Durango', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (201, 159, N'Oaxaca', N'OA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (203, 159, N'San Luis Potosi', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (204, 159, N'Tlaxcala', N'TL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (206, 159, N'Zacatecas', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (268, 269, N'World', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (539, 2, N'Albania', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (540, 3, N'Algeria', N'DZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (541, 4, N'American Samoa', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (542, 5, N'Andorra', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (543, 6, N'Angola', N'AO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (544, 7, N'Anguilla', N'AI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (545, 8, N'Antarctica', N'AQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (546, 9, N'Antigua and Barbuda', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (547, 10, N'Argentina', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (548, 11, N'Armenia', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (549, 12, N'Aruba', N'AW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (550, 13, N'Ashmore and Cartier', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (551, 14, N'Australia', N'AU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (552, 15, N'Austria', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (553, 16, N'Azerbaijan', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (554, 17, N'The Bahamas', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (555, 18, N'Bahrain', N'BH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (556, 19, N'Baker Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (557, 20, N'Bangladesh', N'BD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (558, 21, N'Barbados', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (559, 22, N'Bassas da India', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (560, 23, N'Belarus', N'BY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (561, 24, N'Belgium', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (563, 26, N'Benin', N'BJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (564, 27, N'Bermuda', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (565, 28, N'Bhutan', N'BT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (566, 29, N'Bolivia', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (567, 30, N'Bosnia and Herzegovina', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (568, 31, N'Botswana', N'BW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (569, 32, N'Bouvet Island', N'BV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (570, 33, N'Brazil', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (571, 34, N'British Indian Ocean Territory', N'IO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (572, 35, N'British Virgin Islands', N'VG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (573, 36, N'Brunei Darussalam', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (574, 37, N'Bulgaria', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (575, 38, N'Burkina Faso', N'BF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (576, 39, N'Burma', N'MM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (577, 40, N'Burundi', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (578, 41, N'Cambodia', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (579, 42, N'Cameroon', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (580, 43, N'Canada', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (581, 44, N'Cape Verde', N'CV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (582, 45, N'Cayman Islands', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (583, 46, N'Central African Republic', N'CF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (584, 47, N'Chad', N'TD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (585, 48, N'Chile', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (586, 49, N'China', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (587, 50, N'Christmas Island', N'CX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (588, 51, N'Clipperton Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (589, 52, N'Cocos (Keeling) Islands', N'CC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (590, 53, N'Colombia', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (591, 54, N'Comoros', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (592, 55, N'Democratic Republic of the Congo', N'CD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (593, 56, N'Republic of the Congo', N'CG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (594, 57, N'Cook Islands', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (595, 58, N'Coral Sea Islands', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (596, 59, N'Costa Rica', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (597, 60, N'Cote d''Ivoire', N'CI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (598, 61, N'Croatia', N'HR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (599, 62, N'Cuba', N'CU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (600, 63, N'Cyprus', N'CY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (601, 64, N'Czech Republic', N'CZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (602, 65, N'Denmark', N'DK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (604, 67, N'Dominica', N'DM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (605, 68, N'Dominican Republic', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (606, 69, N'East Timor', N'TP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (607, 70, N'Ecuador', N'EC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (608, 71, N'Egypt', N'EG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (609, 72, N'El Salvador', N'SV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (610, 73, N'Equatorial Guinea', N'GQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (611, 74, N'Eritrea', N'ER')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (612, 75, N'Estonia', N'EE')
GO
print 'Processed 200 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (613, 76, N'Ethiopia', N'ET')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (614, 77, N'Europa Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (615, 78, N'Falkland Islands (Islas Malvinas)', N'FK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (616, 79, N'Faroe Islands', N'FO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (617, 80, N'Fiji', N'FJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (618, 81, N'Finland', N'FI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (619, 82, N'France', N'FR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (620, 83, N'Metropolitan France', N'FX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (621, 84, N'French Guiana', N'GF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (622, 85, N'French Polynesia', N'PF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (623, 86, N'French Southern and Antarctic Lands', N'TF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (624, 87, N'Gabon', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (625, 88, N'The Gambia', N'GM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (626, 89, N'Gaza Strip', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (627, 90, N'Georgia', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (628, 91, N'Germany', N'DE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (629, 92, N'Ghana', N'GH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (630, 93, N'Gibraltar', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (631, 94, N'Glorioso Islands', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (632, 95, N'Greece', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (633, 96, N'Greenland', N'GL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (634, 97, N'Grenada', N'GD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (635, 98, N'Guadeloupe', N'GP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (636, 99, N'Guam', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (638, 101, N'Guernsey', N'GG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (639, 102, N'Guinea', N'GN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (640, 103, N'Guinea-Bissau', N'GW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (641, 104, N'Guyana', N'GY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (642, 105, N'Haiti', N'HT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (643, 106, N'Heard Island and McDonald Islands', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (644, 107, N'Holy See (Vatican City)', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (645, 108, N'Honduras', N'HN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (646, 109, N'Hong Kong (SAR)', N'HK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (647, 110, N'Howland Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (648, 111, N'Hungary', N'HU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (649, 112, N'Iceland', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (650, 113, N'India', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (651, 114, N'Indonesia', N'ID')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (652, 115, N'Iran', N'IR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (653, 116, N'Iraq', N'IQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (654, 117, N'Ireland', N'IE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (655, 118, N'Israel', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (656, 119, N'Italy', N'IT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (657, 120, N'Jamaica', N'JM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (658, 121, N'Jan Mayen', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (659, 122, N'Japan', N'JP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (660, 123, N'Jarvis Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (661, 124, N'Jersey', N'JE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (662, 125, N'Johnston Atoll', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (663, 126, N'Jordan', N'JO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (664, 127, N'Juan de Nova Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (665, 128, N'Kazakhstan', N'KZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (666, 129, N'Kenya', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (667, 130, N'Kingman Reef', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (668, 131, N'Kiribati', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (669, 132, N'North Korea', N'KP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (670, 133, N'South Korea', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (671, 134, N'Kuwait', N'KW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (672, 135, N'Kyrgyzstan', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (673, 136, N'Laos', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (674, 137, N'Latvia', N'LV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (675, 138, N'Lebanon', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (676, 139, N'Lesotho', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (677, 140, N'Liberia', N'LR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (678, 141, N'Libya', N'LY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (679, 142, N'Liechtenstein', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (680, 143, N'Lithuania', N'LT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (682, 145, N'Macao', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (683, 146, N'The Former Yugoslav Republic of Macedonia', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (684, 147, N'Madagascar', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (685, 148, N'Malawi', N'MW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (686, 149, N'Malaysia', N'MY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (687, 150, N'Maldives', N'MV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (688, 151, N'Mali', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (689, 152, N'Malta', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (690, 153, N'Isle of Man', N'IM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (691, 154, N'Marshall Islands', N'MH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (692, 155, N'Martinique', N'MQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (693, 156, N'Mauritania', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (694, 157, N'Mauritius', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (695, 158, N'Mayotte', N'YT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (697, 160, N'Federated States of Micronesia', N'FM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (698, 161, N'Midway Islands', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (699, 162, N'Miscellaneous (French)', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (700, 163, N'Moldova', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (701, 164, N'Monaco', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (702, 165, N'Mongolia', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (703, 166, N'Montenegro', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (704, 167, N'Montserrat', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (705, 168, N'Morocco', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (706, 169, N'Mozambique', N'MZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (707, 170, N'Myanmar', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (708, 171, N'Namibia', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (709, 172, N'Nauru', N'NR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (710, 173, N'Navassa Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (711, 174, N'Nepal', N'NP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (712, 175, N'The Netherlands', N'NL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (713, 176, N'Netherlands Antilles', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (714, 177, N'New Caledonia', N'NC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (715, 178, N'New Zealand', N'NZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (716, 179, N'Nicaragua', N'NI')
GO
print 'Processed 300 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (717, 180, N'Niger', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (718, 181, N'Nigeria', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (719, 182, N'Niue', N'NU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (720, 183, N'Norfolk Island', N'NF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (721, 184, N'Northern Mariana Islands', N'MP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (722, 185, N'Norway', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (723, 186, N'Oman', N'OM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (724, 187, N'Pakistan', N'PK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (725, 188, N'Palau', N'PW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (726, 189, N'Palmyra Atoll', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (728, 191, N'Papua New Guinea', N'PG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (729, 192, N'Paracel Islands', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (730, 193, N'Paraguay', N'PY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (731, 194, N'Peru', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (732, 195, N'Philippines', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (733, 196, N'Pitcairn Islands', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (734, 197, N'Poland', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (735, 198, N'Portugal', N'PT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (736, 199, N'Puerto Rico', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (737, 200, N'Qatar', N'QA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (738, 201, N'Runion', N'RE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (739, 202, N'Romania', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (740, 203, N'Russia', N'RU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (741, 204, N'Rwanda', N'RW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (743, 206, N'Saint Kitts and Nevis', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (744, 207, N'Saint Lucia', N'LC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (745, 208, N'Saint Pierre and Miquelon', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (746, 209, N'Saint Vincent and the Grenadines', N'VC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (747, 210, N'Samoa', N'WS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (750, 213, N'Saudi Arabia', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (751, 214, N'Senegal', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (752, 215, N'Serbia', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (753, 216, N'Serbia and Montenegro', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (754, 217, N'Seychelles', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (755, 218, N'Sierra Leone', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (756, 219, N'Singapore', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (757, 220, N'Slovakia', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (758, 221, N'Slovenia', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (759, 222, N'Solomon Islands', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (760, 223, N'Somalia', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (761, 224, N'South Africa', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (762, 225, N'South Georgia and the South Sandwich Islands', N'GS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (763, 226, N'Spain', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (764, 227, N'Spratly Islands', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (765, 228, N'Sri Lanka', N'LK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (766, 229, N'Sudan', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (767, 230, N'Suriname', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (768, 231, N'Svalbard', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (769, 232, N'Swaziland', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (770, 233, N'Sweden', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (771, 234, N'Switzerland', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (772, 235, N'Syria', N'SY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (773, 236, N'Taiwan', N'TW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (774, 237, N'Tajikistan', N'TJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (775, 238, N'Tanzania', N'TZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (776, 239, N'Thailand', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (777, 240, N'Togo', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (778, 241, N'Tokelau', N'TK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (779, 242, N'Tonga', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (780, 243, N'Trinidad and Tobago', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (781, 244, N'Tromelin Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (782, 245, N'Tunisia', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (783, 246, N'Turkey', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (784, 247, N'Turkmenistan', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (785, 248, N'Turks and Caicos Islands', N'TC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (786, 249, N'Tuvalu', N'TV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (787, 250, N'Uganda', N'UG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (788, 251, N'Ukraine', N'UA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (789, 252, N'United Arab Emirates', N'AE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (790, 253, N'United Kingdom', N'UK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (791, 254, N'United States', N'US')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (792, 255, N'United States Minor Outlying Islands', N'UM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (793, 256, N'Uruguay', N'UY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (794, 257, N'Uzbekistan', N'UZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (795, 258, N'Vanuatu', N'VU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (796, 259, N'Venezuela', N'VE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (797, 260, N'Vietnam', N'VN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (798, 261, N'Virgin Islands', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (799, 262, N'Virgin Islands (UK)', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (800, 263, N'Virgin Islands (US)', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (801, 264, N'Wake Island', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (802, 265, N'Wallis and Futuna', N'WF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (803, 266, N'West Bank', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (804, 267, N'Western Sahara', N'EH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (805, 268, N'Western Samoa', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (806, 270, N'Yemen', N'YE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (808, 272, N'Zaire', N'--')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (809, 273, N'Zambia', N'ZM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (810, 274, N'Zimbabwe', N'ZW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (815, 43, N'Yukon Territory', N'YT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (816, 9, N'Barbuda', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (817, 9, N'Saint George', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (818, 9, N'Saint John', N'JO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (819, 9, N'Saint Mary', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (820, 9, N'Saint Paul', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (821, 9, N'Saint Peter', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (822, 9, N'Saint Philip', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (823, 1, N'Badakhshan', N'BD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (824, 1, N'Badghis', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (825, 1, N'Baghlan', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (827, 1, N'Bamian', N'BM')
GO
print 'Processed 400 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (828, 1, N'Farah', N'FH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (829, 1, N'Faryab', N'FB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (830, 1, N'Ghazni', N'GZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (831, 1, N'Ghowr', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (832, 1, N'Helmand', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (833, 1, N'Herat', N'HR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (835, 1, N'Kabol', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (836, 1, N'Kapisa', N'KP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (837, 1, N'Konar', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (838, 1, N'Laghman', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (839, 1, N'Lowgar', N'LW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (840, 1, N'Nangarhar', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (841, 1, N'Nimruz', N'NM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (842, 1, N'Oruzgan', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (843, 1, N'Paktia', N'PT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (844, 1, N'Parvan', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (845, 1, N'Kandahar', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (846, 1, N'Kondoz', N'KZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (848, 1, N'Takhar', N'TK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (849, 1, N'Vardak', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (850, 1, N'Zabol', N'ZB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (851, 1, N'Paktika', N'PK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (852, 1, N'Balkh', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (853, 1, N'Jowzjan', N'JW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (854, 1, N'Samangan', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (855, 1, N'Sare Pol', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (856, 3, N'Alger', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (857, 3, N'Batna', N'BT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (858, 3, N'Constantine', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (859, 3, N'Medea', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (860, 3, N'Mostaganem', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (861, 3, N'Oran', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (862, 3, N'Saida', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (863, 3, N'Setif', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (864, 3, N'Tiaret', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (865, 3, N'Tizi Ouzou', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (866, 3, N'Tlemcen', N'TL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (867, 3, N'Bejaia', N'BJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (868, 3, N'Biskra', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (869, 3, N'Blida', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (870, 3, N'Bouira', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (871, 3, N'Djelfa', N'DJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (872, 3, N'Guelma', N'GL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (873, 3, N'Jijel', N'JJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (874, 3, N'Laghouat', N'LG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (875, 3, N'Mascara', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (876, 3, N'M''Sila', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (877, 3, N'Oum el Bouaghi', N'OB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (878, 3, N'Sidi Bel Abbes', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (879, 3, N'Skikda', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (880, 3, N'Tebessa', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (881, 3, N'Adrar', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (882, 3, N'Ain Defla', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (883, 3, N'Ain Temouchent', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (884, 3, N'Annaba', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (885, 3, N'Bechar', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (886, 3, N'Bordj Bou Arreridj', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (887, 3, N'Boumerdes', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (888, 3, N'Chlef', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (889, 3, N'El Bayadh', N'EB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (890, 3, N'El Oued', N'EO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (891, 3, N'El Tarf', N'ET')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (892, 3, N'Ghardaia', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (893, 3, N'Illizi', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (894, 3, N'Khenchela', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (895, 3, N'Mila', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (896, 3, N'Naama', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (897, 3, N'Ouargla', N'OG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (898, 3, N'Relizane', N'RE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (899, 3, N'Souk Ahras', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (900, 3, N'Tamanghasset', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (901, 3, N'Tindouf', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (902, 3, N'Tipaza', N'TP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (903, 3, N'Tissemsilt', N'TS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (904, 16, N'Abseron', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (905, 16, N'Agcabadi', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (906, 16, N'Agdam', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (907, 16, N'Agdas', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (908, 16, N'Agstafa', N'AF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (909, 16, N'Agsu', N'AU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (910, 16, N'Ali Bayramli', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (911, 16, N'Astara', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (912, 16, N'Baki', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (913, 16, N'Balakan', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (914, 16, N'Barda', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (915, 16, N'Beylaqan', N'BQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (916, 16, N'Bilasuvar', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (917, 16, N'Cabrayil', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (918, 16, N'Calilabad', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (919, 16, N'Daskasan', N'DS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (920, 16, N'Davaci', N'DV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (921, 16, N'Fuzuli', N'FU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (922, 16, N'Gadabay', N'GD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (923, 16, N'Ganca', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (924, 16, N'Goranboy', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (925, 16, N'Goycay', N'GY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (926, 16, N'Haciqabul', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (927, 16, N'Imisli', N'IM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (928, 16, N'Ismayilli', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (929, 16, N'Kalbacar', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (930, 16, N'Kurdamir', N'KU')
GO
print 'Processed 500 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (931, 16, N'Lacin', N'LC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (932, 16, N'Lankaran', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (934, 16, N'Lerik', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (935, 16, N'Masalli', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (936, 16, N'Mingacevir', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (937, 16, N'Naftalan', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (938, 16, N'Naxcivan', N'NX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (939, 16, N'Neftcala', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (940, 16, N'Oguz', N'OG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (941, 16, N'Qabala', N'QA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (942, 16, N'Qax', N'QX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (943, 16, N'Qazax', N'QZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (944, 16, N'Qobustan', N'QO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (945, 16, N'Quba', N'QB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (946, 16, N'Qubadli', N'QD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (947, 16, N'Qusar', N'QR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (948, 16, N'Saatli', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (949, 16, N'Sabirabad', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (950, 16, N'Saki', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (952, 16, N'Salyan', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (953, 16, N'Samaxi', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (954, 16, N'Samkir', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (955, 16, N'Samux', N'SX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (956, 16, N'Siyazan', N'SY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (957, 16, N'Sumqayit', N'SQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (958, 16, N'Susa', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (960, 16, N'Tartar', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (961, 16, N'Tovuz', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (962, 16, N'Ucar', N'UC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (963, 16, N'Xacmaz', N'XZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (964, 16, N'Xankandi', N'XA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (965, 16, N'Xanlar', N'XR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (966, 16, N'Xizi', N'XI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (967, 16, N'Xocali', N'XC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (968, 16, N'Xocavand', N'XD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (969, 16, N'Yardimli', N'YR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (970, 16, N'Yevlax', N'YE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (972, 16, N'Zangilan', N'ZG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (973, 16, N'Zaqatala', N'ZQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (974, 16, N'Zardab', N'ZR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (975, 2, N'Berat', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (976, 2, N'Diber', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (977, 2, N'Durres', N'DR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (978, 2, N'Elbasan', N'EL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (979, 2, N'Fier', N'FR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (980, 2, N'Gjirokaster', N'GJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (981, 2, N'Gramsh', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (982, 2, N'Kolonje', N'ER')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (983, 2, N'Korce', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (984, 2, N'Kruje', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (985, 2, N'Kukes', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (986, 2, N'Lezhe', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (987, 2, N'Librazhd', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (988, 2, N'Lushnje', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (989, 2, N'Mat', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (990, 2, N'Mirdite', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (991, 2, N'Permet', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (992, 2, N'Pogradec', N'PG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (993, 2, N'Puke', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (994, 2, N'Sarande', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (995, 2, N'Shkoder', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (996, 2, N'Skrapar', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (997, 2, N'Tepelene', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (998, 2, N'Tropoje', N'TP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (999, 2, N'Vlore', N'VL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1000, 2, N'Tiran', N'TI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1001, 2, N'Bulqize', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1002, 2, N'Delvine', N'DL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1003, 2, N'Devoll', N'DV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1004, 2, N'Has', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1005, 2, N'Kavaje', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1006, 2, N'Kucove', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1007, 2, N'Kurbin', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1008, 2, N'Malesi e Madhe', N'MM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1009, 2, N'Mallakaster', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1010, 2, N'Peqin', N'PQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1011, 2, N'Tirane', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1012, 11, N'Aragatsotn', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1013, 11, N'Ararat', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1014, 11, N'Armavir', N'AV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1015, 11, N'Geghark''unik''', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1016, 11, N'Kotayk''', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1017, 11, N'Lorri', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1018, 11, N'Shirak', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1019, 11, N'Syunik''', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1020, 11, N'Tavush', N'TV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1021, 11, N'Vayots'' Dzor', N'VD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1022, 11, N'Yerevan', N'ER')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1023, 5, N'Andorra la Vella', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1024, 5, N'Canillo', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1025, 5, N'Encamp', N'EN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1026, 5, N'La Massana', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1027, 5, N'Ordino', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1028, 5, N'Sant Julia de Loria', N'JL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1029, 6, N'Benguela', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1030, 6, N'Bie', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1031, 6, N'Cabinda', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1032, 6, N'Cuando Cubango', N'CC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1033, 6, N'Cuanza Norte', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1034, 6, N'Cuanza Sul', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1035, 6, N'Cunene', N'CU')
GO
print 'Processed 600 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1036, 6, N'Huambo', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1037, 6, N'Huila', N'HL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1038, 6, N'Luanda', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1039, 6, N'Malanje', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1040, 6, N'Namibe', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1041, 6, N'Moxico', N'MX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1046, 6, N'Uige', N'UI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1047, 6, N'Zaire', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1048, 6, N'Lunda Norte', N'LN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1049, 6, N'Lunda Sul', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1050, 6, N'Bengo', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1051, 10, N'Buenos Aires', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1052, 10, N'Catamarca', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1053, 10, N'Chaco', N'CC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1054, 10, N'Chubut', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1055, 10, N'Cordoba', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1056, 10, N'Corrientes', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1057, 10, N'Distrito Federal', N'DF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1058, 10, N'Entre Rios', N'ER')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1059, 10, N'Formosa', N'FM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1060, 10, N'Jujuy', N'JY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1061, 10, N'La Pampa', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1062, 10, N'La Rioja', N'LR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1063, 10, N'Mendoza', N'MZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1064, 10, N'Misiones', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1065, 10, N'Neuquen', N'NQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1066, 10, N'Rio Negro', N'RN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1067, 10, N'Salta', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1068, 10, N'San Juan', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1069, 10, N'San Luis', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1070, 10, N'Santa Cruz', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1071, 10, N'Santa Fe', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1072, 10, N'Santiago del Estero', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1073, 10, N'Antartida e Islas del Atlan Tierra del Fuego', N'TF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1074, 10, N'Tucuman', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1075, 15, N'Burgenland', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1076, 15, N'Karnten', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1077, 15, N'Niederosterreich', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1078, 15, N'Oberosterreich', N'OO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1079, 15, N'Salzburg', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1080, 15, N'Steiermark', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1081, 15, N'Tirol', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1082, 15, N'Vorarlberg', N'VO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1083, 15, N'Wien', N'WI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1084, 18, N'Al Hadd', N'HD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1085, 18, N'Al Manamah', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1086, 18, N'Al Muharraq', N'MQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1087, 18, N'Jidd Hafs', N'JH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1088, 18, N'Sitrah', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1090, 18, N'Al Mintaqah al Gharbiyah', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1091, 18, N'Mintaqat Juzur Hawar', N'MJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1092, 18, N'Al Mintaqah ash Shamaliyah', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1093, 18, N'Al Mintaqah al Wusta', N'MW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1094, 18, N'Madinat Isa', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1096, 18, N'Madinat Hamad', N'MH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1097, 21, N'Christ Church', N'CC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1098, 21, N'Saint Andrew', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1099, 21, N'Saint George', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1100, 21, N'Saint James', N'JM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1101, 21, N'Saint John', N'JN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1102, 21, N'Saint Joseph', N'JS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1103, 21, N'Saint Lucy', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1104, 21, N'Saint Michael', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1105, 21, N'Saint Peter', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1106, 21, N'Saint Philip', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1107, 21, N'Saint Thomas', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1108, 31, N'Central', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1109, 31, N'Chobe', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1110, 31, N'Ghanzi', N'GH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1111, 31, N'Kgalagadi', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1112, 31, N'Kgatleng', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1113, 31, N'Kweneng', N'KW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1114, 31, N'Ngamiland', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1115, 31, N'NorthEast', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1116, 31, N'SouthEast', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1117, 31, N'Southern', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1118, 27, N'Devonshire', N'DE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1119, 27, N'Hamilton Municipality', N'HC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1121, 27, N'Paget', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1122, 27, N'Pembroke', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1123, 27, N'Saint George', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1124, 27, N'Saint George''s', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1125, 27, N'Sandys', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1126, 27, N'Smiths', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1127, 27, N'Southampton', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1128, 27, N'Warwick', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1129, 24, N'Antwerpen', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1131, 24, N'Hainaut', N'HT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1132, 24, N'Liege', N'LG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1133, 24, N'Limburg', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1134, 24, N'Luxembourg', N'LX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1135, 24, N'Namur', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1136, 24, N'Oost-Vlaanderen', N'OV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1137, 24, N'West-Vlaanderen', N'WV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1138, 17, N'Bimini', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1139, 17, N'Cat Island', N'CI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1140, 17, N'Exuma', N'EX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1143, 17, N'Inagua', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1144, 17, N'Long Island', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1145, 17, N'Mayaguana', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1146, 17, N'Ragged Island', N'RI')
GO
print 'Processed 700 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1147, 17, N'Harbour Island', N'HI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1148, 17, N'New Providence', N'NP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1149, 17, N'Acklins and Crooked Islands', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1150, 17, N'Freeport', N'FP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1151, 17, N'Fresh Creek', N'FC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1152, 17, N'Governor''s Harbour', N'GH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1153, 17, N'Green Turtle Cay', N'GT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1154, 17, N'High Rock', N'HR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1155, 17, N'Kemps Bay', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1156, 17, N'Marsh Harbour', N'MH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1157, 17, N'Nichollstown and Berry Islands', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1158, 17, N'Rock Sound', N'RS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1159, 17, N'Sandy Point', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1160, 17, N'San Salvador and Rum Cay', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1161, 20, N'Chittagong', N'CG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1162, 20, N'Dhaka', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1163, 20, N'Khulna', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1164, 20, N'Rajshahi', N'RJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1165, 25, N'Belize', N'BZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1166, 25, N'Cayo', N'CY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1167, 25, N'Corozal', N'CZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1168, 25, N'Orange Walk', N'OW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1169, 25, N'Stann Creek', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1170, 25, N'Toledo', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1171, 29, N'Chuquisaca', N'CQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1172, 29, N'Cochabamba', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1173, 29, N'El Beni', N'EB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1174, 29, N'La Paz', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1175, 29, N'Oruro', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1176, 29, N'Pando', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1177, 29, N'Potosi', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1178, 29, N'Santa Cruz', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1179, 29, N'Tarija', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1180, 39, N'Rakhine State', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1181, 39, N'Chin State', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1182, 39, N'Ayeyarwady', N'AY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1183, 39, N'Kachin State', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1184, 39, N'Kayin State', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1185, 39, N'Kayah State', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1187, 39, N'Mandalay', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1189, 39, N'Sagaing', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1190, 39, N'Shan State', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1191, 39, N'Tanintharyi', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1192, 39, N'Mon State', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1194, 39, N'Magway', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1195, 39, N'Bago', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1196, 39, N'Yangon', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1197, 26, N'Atakora', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1198, 26, N'Atlantique', N'AQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1199, 26, N'Borgou', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1200, 26, N'Mono', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1201, 26, N'Oueme', N'OU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1202, 26, N'Zou', N'ZO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1203, 23, N'Brestskaya Voblasts''', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1204, 23, N'Homyel''skaya Voblasts''', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1205, 23, N'Hrodzyenskaya Voblasts''', N'HR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1206, 23, N'Minsk', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1207, 23, N'Minskaya Voblasts''', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1208, 23, N'Mahilyowskaya Voblasts''', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1209, 23, N'Vitsyebskaya Voblasts''', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1210, 222, N'Malaita', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1211, 222, N'Western', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1212, 222, N'Central', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1213, 222, N'Guadalcanal', N'GC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1214, 222, N'Isabel', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1215, 222, N'Makira', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1216, 222, N'Temotu', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1217, 33, N'Distrito Federal', N'DF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1219, 33, N'Paro', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1220, 33, N'Pernambuco', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1221, 28, N'Bumthang', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1222, 28, N'Chhukha', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1223, 28, N'Chirang', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1224, 28, N'Daga', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1225, 28, N'Geylegphug', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1226, 28, N'Ha', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1227, 28, N'Lhuntshi', N'LH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1228, 28, N'Mongar', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1229, 28, N'Paro', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1230, 28, N'Pemagatsel', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1231, 28, N'Punakha', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1232, 28, N'Samchi', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1233, 28, N'Samdrup', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1234, 28, N'Shemgang', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1235, 28, N'Tashigang', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1236, 28, N'Thimphu', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1237, 28, N'Tongsa', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1238, 28, N'Wangdi Phodrang', N'WP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1239, 37, N'Burgas', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1240, 37, N'Sofiya-Grad', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1241, 37, N'Khaskovo', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1242, 37, N'Lovech', N'LV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1243, 37, N'Montana', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1244, 37, N'Plovdiv', N'PD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1245, 37, N'Razgrad', N'RG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1246, 37, N'Sofiya', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1247, 37, N'Varna', N'VN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1248, 36, N'Belait', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1249, 36, N'Brunei and Muara', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1250, 36, N'Temburong', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1251, 36, N'Tutong', N'TU')
GO
print 'Processed 800 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1252, 40, N'Bujumbura', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1253, 40, N'Muramvya', N'MV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1254, 40, N'Bubanza', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1255, 40, N'Bururi', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1256, 40, N'Cankuzo', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1257, 40, N'Cibitoke', N'CI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1258, 40, N'Gitega', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1259, 40, N'Karuzi', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1260, 40, N'Kayanza', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1261, 40, N'Kirundo', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1262, 40, N'Makamba', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1263, 40, N'Muyinga', N'MY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1264, 40, N'Ngozi', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1265, 40, N'Rutana', N'RT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1266, 40, N'Ruyigi', N'RY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1267, 41, N'Batdambang', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1268, 41, N'Kampong Cham', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1269, 41, N'Kampong Chhnang', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1270, 41, N'Kampong Spoe', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1271, 41, N'Kampong Thum', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1272, 41, N'Kampot', N'KP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1273, 41, N'Kandal', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1274, 41, N'Kaoh Kong', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1275, 41, N'Krachen', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1276, 41, N'Mondol Kiri', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1277, 41, N'Phnum Penh', N'PP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1278, 41, N'Pouthisat', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1279, 41, N'Preah Vihear', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1280, 41, N'Prey Veng', N'PY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1283, 41, N'Stoeng Treng', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1284, 41, N'Svay Rieng', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1285, 41, N'Takev', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1286, 41, N'Rotanah Kiri', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1287, 41, N'Siem Reab', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1288, 41, N'Banteay Mean Cheay', N'OM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1289, 41, N'Keb', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1290, 41, N'Otdar Mean Cheay', N'OC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1291, 41, N'Preah Seihanu', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1292, 47, N'Batha', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1293, 47, N'Biltine', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1294, 47, N'Borkou-Ennedi-Tibesti', N'BT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1295, 47, N'ChariBaguirmi', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1296, 47, N'Guera', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1297, 47, N'Kanem', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1298, 47, N'Lac', N'LC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1299, 47, N'Logone Occidental', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1300, 47, N'Logone Oriental', N'LR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1301, 47, N'Mayo-Kebbi', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1302, 47, N'Moyen-Chari', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1303, 47, N'Ouaddai', N'OD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1304, 47, N'Salamat', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1305, 47, N'Tandjile', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1306, 228, N'Central', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1307, 228, N'North Central', N'NC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1308, 228, N'North Eastern', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1309, 228, N'North Western', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1310, 228, N'Sabaragamuwa', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1311, 228, N'Southern', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1312, 228, N'Uva', N'UV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1313, 228, N'Western', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1314, 56, N'Bouenza', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1315, 56, N'Cuvette', N'CU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1316, 56, N'Kouilou', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1317, 56, N'Lekoumou', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1318, 56, N'Likouala', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1319, 56, N'Niari', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1320, 56, N'Plateaux', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1321, 56, N'Sangha', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1322, 56, N'Pool', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1323, 56, N'Brazzaville', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1324, 55, N'Bandundu', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1325, 55, N'Equateur', N'EQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1326, 55, N'Kasai-Occidental', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1327, 55, N'Kasai-Oriental', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1328, 55, N'Katanga', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1329, 55, N'Kinshasa', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1331, 55, N'Bas-Congo', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1332, 55, N'Orientale', N'HC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1333, 49, N'Anhui', N'AH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1334, 49, N'Zhejiang', N'ZJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1335, 49, N'Jiangxi', N'JX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1336, 49, N'Jiangsu', N'JS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1337, 49, N'Jilin', N'JL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1338, 49, N'Qinghai', N'QH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1339, 49, N'Fujian', N'FJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1340, 49, N'Heilongjiang', N'HL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1341, 49, N'Henan', N'HE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1342, 49, N'Hebei', N'HB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1343, 49, N'Hunan', N'HN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1344, 49, N'Hubei', N'HU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1345, 49, N'Xinjiang', N'XJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1346, 49, N'Xizang', N'XZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1347, 49, N'Gansu', N'GS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1348, 49, N'Guangxi', N'GX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1349, 49, N'Guizhou', N'GZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1350, 49, N'Liaoning', N'LN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1351, 49, N'Nei Mongol', N'NM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1352, 49, N'Ningxia', N'NX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1353, 49, N'Beijing', N'BJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1354, 49, N'Shanghai', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1355, 49, N'Shanxi', N'SX')
GO
print 'Processed 900 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1356, 49, N'Shandong', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1357, 49, N'Shaanxi', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1358, 49, N'Sichuan', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1359, 49, N'Tianjin', N'TJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1360, 49, N'Yunnan', N'YN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1361, 49, N'Guangdong', N'GD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1362, 49, N'Hainan', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1363, 49, N'Chongqing', N'CQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1364, 48, N'Valparaiso', N'VS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1365, 48, N'Aisen del General Carlos Ibanez del Campo', N'AI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1366, 48, N'Antofagasta', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1367, 48, N'Araucania', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1368, 48, N'Atacama', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1369, 48, N'Bio-Bio', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1370, 48, N'Coquimbo', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1371, 48, N'Libertador General Bernardo O''Higgins', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1372, 48, N'Los Lagos', N'LL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1373, 48, N'Magallanes y de la Antartica Chilena', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1374, 48, N'Maule', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1375, 48, N'Region Metropolitana', N'RM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1376, 48, N'Tarapaca', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1377, 45, N'Creek', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1378, 45, N'Eastern', N'EA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1379, 45, N'Midland', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1380, 45, N'South Town', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1381, 45, N'Spot Bay', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1382, 45, N'Stake Bay', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1383, 45, N'West End', N'WD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1384, 45, N'Western', N'WN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1385, 42, N'Est', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1386, 42, N'Littoral', N'LT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1387, 42, N'NordOuest', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1388, 42, N'Ouest', N'OU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1389, 42, N'SudOuest', N'SW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1390, 42, N'Adamaoua', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1391, 42, N'Centre', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1392, 42, N'ExtremeNord', N'EN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1393, 42, N'Nord', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1394, 42, N'Sud', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1395, 54, N'Anjouan', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1396, 54, N'Grande Comore', N'GC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1397, 54, N'Moheli', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1398, 53, N'Amazonas', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1399, 53, N'Antioquia', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1400, 53, N'Arauca', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1401, 53, N'Atlantico', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1402, 53, N'Caqueta', N'CQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1403, 53, N'Cauca', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1404, 53, N'Cesar', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1405, 53, N'Choco', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1406, 53, N'Cordoba', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1408, 53, N'Guaviare', N'GV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1409, 53, N'Guainia', N'GN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1410, 53, N'Huila', N'HU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1411, 53, N'La Guajira', N'LG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1412, 53, N'Meta', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1413, 53, N'Narino', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1414, 53, N'Norte de Santander', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1415, 53, N'Putumayo', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1416, 53, N'Quindio', N'QD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1417, 53, N'Risaralda', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1418, 53, N'San Andres y Providencia', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1419, 53, N'Santander', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1420, 53, N'Sucre', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1421, 53, N'Tolima', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1422, 53, N'Valle del Cauca', N'VC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1423, 53, N'Vaupes', N'VP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1424, 53, N'Vichada', N'VD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1425, 53, N'Casanare', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1426, 53, N'Cundinamarca', N'CU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1427, 53, N'Distrito Capital', N'DC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1428, 53, N'Bolivar', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1429, 53, N'Boyaca', N'BY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1430, 53, N'Caldas', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1431, 53, N'Magdalena', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1432, 59, N'Alajuela', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1433, 59, N'Cartago', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1434, 59, N'Guanacaste', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1435, 59, N'Heredia', N'HE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1436, 59, N'Limon', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1437, 59, N'Puntarenas', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1438, 59, N'San Jose', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1439, 46, N'Bamingui-Bangoran', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1440, 46, N'Basse-Kotto', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1441, 46, N'Haute-Kotto', N'HK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1442, 46, N'Haute-Sangha', N'HS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1443, 46, N'Haut-Mbomou', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1444, 46, N'Kemo-Gribingui', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1445, 46, N'Lobaye', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1446, 46, N'Mbomou', N'MB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1447, 46, N'Nana-Mambere', N'NM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1448, 46, N'Ouaka', N'UK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1449, 46, N'Ouham', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1450, 46, N'Ouham-Pende', N'OP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1451, 46, N'Vakaga', N'VK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1452, 46, N'Gribingui', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1453, 46, N'Sangha', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1454, 46, N'Ombella-Mpoko', N'MP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1455, 46, N'Bangui', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1456, 62, N'Pinar del Rio', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1457, 62, N'Ciudad de La Habana', N'CH')
GO
print 'Processed 1000 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1458, 62, N'Matanzas', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1459, 62, N'Isla de la Juventud', N'IJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1460, 62, N'Camaguey', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1461, 62, N'Ciego de Avila', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1462, 62, N'Cienfuegos', N'CF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1463, 62, N'Granma', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1464, 62, N'Guantanamo', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1465, 62, N'La Habana', N'LH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1466, 62, N'Holguin', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1467, 62, N'Las Tunas', N'LT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1468, 62, N'Sancti Spiritus', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1469, 62, N'Santiago de Cuba', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1470, 62, N'Villa Clara', N'VC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1471, 44, N'Boa Vista', N'BV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1472, 44, N'Brava', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1473, 44, N'Calheta de So Miguel', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1474, 44, N'Maio', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1475, 44, N'Paul', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1476, 44, N'Praia', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1477, 44, N'Ribeira Grande', N'RG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1478, 44, N'Sal', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1479, 44, N'Santa Catarina', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1480, 44, N'Sao Nicolau', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1481, 44, N'Sao Vicente', N'SV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1482, 44, N'Tarrafal', N'TF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1483, 63, N'Famagusta', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1484, 63, N'Kyrenia', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1485, 63, N'Larnaca', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1486, 63, N'Nicosia', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1487, 63, N'Limassol', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1488, 63, N'Paphos', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1489, 65, N'Arhus', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1490, 65, N'Bornholm', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1491, 65, N'Frederiksborg', N'FR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1492, 65, N'Fyn', N'FY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1493, 65, N'Kobenhavn', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1494, 65, N'Nordjylland', N'NJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1495, 65, N'Ribe', N'RB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1496, 65, N'Ringkobing', N'RK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1497, 65, N'Roskilde', N'RS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1498, 65, N'Sonderjylland', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1499, 65, N'Storstrom', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1500, 65, N'Vejle', N'VJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1501, 65, N'Vestsjalland', N'VS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1502, 65, N'Viborg', N'VB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1503, 65, N'Fredericksberg', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1504, 66, N'''Ali Sabih', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1505, 66, N'Dikhil', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1506, 66, N'Djibouti', N'DJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1507, 66, N'Obock', N'OB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1508, 66, N'Tadjoura', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1509, 67, N'Saint Andrew', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1510, 67, N'Saint David', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1511, 67, N'Saint George', N'GO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1512, 67, N'Saint John', N'JN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1513, 67, N'Saint Joseph', N'JH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1514, 67, N'Saint Luke', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1515, 67, N'Saint Mark', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1516, 67, N'Saint Patrick', N'PK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1517, 67, N'Saint Paul', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1518, 67, N'Saint Peter', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1519, 68, N'Azua', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1520, 68, N'Baoruco', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1521, 68, N'Barahona', N'BH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1522, 68, N'Dajabon', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1523, 68, N'Distrito Nacional', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1524, 68, N'Duarte', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1525, 68, N'Espaillat', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1526, 68, N'Independencia', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1527, 68, N'La Altagracia', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1528, 68, N'Elias Pina', N'EP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1529, 68, N'La Romana', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1530, 68, N'Maria Trinidad Sanchez', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1531, 68, N'Monte Cristi', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1532, 68, N'Pedernales', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1533, 68, N'Peravia', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1534, 68, N'Puerto Plata', N'PP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1535, 68, N'Salcedo', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1536, 68, N'Samana', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1537, 68, N'Sanchez Ramirez', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1538, 68, N'San Juan', N'JU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1539, 68, N'San Pedro de Macoris', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1540, 68, N'Santiago', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1541, 68, N'Santiago Rodriguez', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1542, 68, N'Valverde', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1543, 68, N'El Seibo', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1544, 68, N'Hato Mayor', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1545, 68, N'La Vega', N'VE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1546, 68, N'Monsenor Nouel', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1547, 68, N'Monte Plata', N'MP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1548, 68, N'San Cristobal', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1549, 70, N'Galapagos', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1550, 70, N'Azuay', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1551, 70, N'Bolivar', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1552, 70, N'Canar', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1553, 70, N'Carchi', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1554, 70, N'Chimborazo', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1555, 70, N'Cotopaxi', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1556, 70, N'El Oro', N'EO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1557, 70, N'Esmeraldas', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1558, 70, N'Guayas', N'GU')
GO
print 'Processed 1100 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1559, 70, N'Imbabura', N'IM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1560, 70, N'Loja', N'LJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1561, 70, N'Los Rios', N'LR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1562, 70, N'Manabi', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1563, 70, N'Morona-Santiago', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1564, 70, N'Pastaza', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1565, 70, N'Pichincha', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1566, 70, N'Tungurahua', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1567, 70, N'Zamora-Chinchipe', N'ZC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1568, 70, N'Napo', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1569, 70, N'Sucumbios', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1570, 71, N'Ad Daqahliyah', N'DQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1571, 71, N'Al Bahr al Ahmar', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1572, 71, N'Al Buhayrah', N'BH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1573, 71, N'Al Fayyum', N'FY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1574, 71, N'Al Gharbiyah', N'GH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1575, 71, N'Al Iskandariyah', N'IK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1576, 71, N'Al Isma''iliyah', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1577, 71, N'Al Jizah', N'JZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1578, 71, N'Al Minufiyah', N'MF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1579, 71, N'Al Minya', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1580, 71, N'Al Qahirah', N'QH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1581, 71, N'Al Qalybiyah', N'QL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1582, 71, N'Al Wadi al Jadid', N'WJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1583, 71, N'Ash Sharqiyah', N'SQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1584, 71, N'As Suways', N'SW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1585, 71, N'Aswan', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1586, 71, N'Asyut', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1587, 71, N'Bani Suwayf', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1588, 71, N'Bur Sa''id', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1589, 71, N'Dumyat', N'DT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1590, 71, N'Kafr ash Shaykh', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1591, 71, N'Matruh', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1592, 71, N'Qina', N'QN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1593, 71, N'Suhaj', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1594, 71, N'Janub Sina''', N'JS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1595, 71, N'Shamal Sina''', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1596, 117, N'Carlow', N'CW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1597, 117, N'Cavan', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1598, 117, N'Clare', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1599, 117, N'Cork', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1600, 117, N'Donegal', N'DL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1601, 117, N'Dublin', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1602, 117, N'Galway', N'GY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1603, 117, N'Kerry', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1604, 117, N'Kildare', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1605, 117, N'Kilkenny', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1606, 117, N'Leitrim', N'LM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1607, 117, N'Laois', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1608, 117, N'Limerick', N'LK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1609, 117, N'Longford', N'LD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1610, 117, N'Louth', N'LH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1611, 117, N'Mayo', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1612, 117, N'Meath', N'MH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1613, 117, N'Monaghan', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1614, 117, N'Offaly', N'OY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1615, 117, N'Roscommon', N'RN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1616, 117, N'Sligo', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1617, 117, N'Tipperary', N'TY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1618, 117, N'Waterford', N'WD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1619, 117, N'Westmeath', N'WH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1620, 117, N'Wexford', N'WX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1621, 117, N'Wicklow', N'WW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1622, 73, N'Annobon', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1623, 73, N'Bioko Norte', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1624, 73, N'Bioko Sur', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1625, 73, N'Centro Sur', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1626, 73, N'Kie-Ntem', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1627, 73, N'Litoral', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1628, 73, N'Wele-Nzas', N'WN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1629, 75, N'Harjumaa', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1630, 75, N'Hiiumaa', N'HI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1631, 75, N'Ida-Virumaa', N'IV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1632, 75, N'Jarvamaa', N'JR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1633, 75, N'Jogevamaa', N'JN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1634, 75, N'Laanemaa', N'LN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1635, 75, N'Laane-Virumaa', N'LV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1636, 75, N'Parnumaa', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1637, 75, N'Polvamaa', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1638, 75, N'Raplamaa', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1639, 75, N'Saaremaa', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1640, 75, N'Tartumaa', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1641, 75, N'Valgamaa', N'VG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1642, 75, N'Viljandimaa', N'VD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1643, 75, N'Vorumaa', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1644, 72, N'Ahuachapan', N'AH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1645, 72, N'Cabanas', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1646, 72, N'Chalatenango', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1647, 72, N'Cuscatlan', N'CU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1648, 72, N'La Libertad', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1649, 72, N'La Paz', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1650, 72, N'La Union', N'UN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1651, 72, N'Morazan', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1652, 72, N'San Miguel', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1653, 72, N'San Salvador', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1654, 72, N'Santa Ana', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1655, 72, N'San Vicente', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1656, 72, N'Sonsonate', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1657, 72, N'Usulutan', N'US')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1687, 76, N'Harari People', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1688, 76, N'Gambela Peoples', N'GA')
GO
print 'Processed 1200 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1690, 76, N'Benshangul-Gumaz', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1691, 76, N'Tigray', N'TI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1692, 76, N'Amhara', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1693, 76, N'Afar', N'AF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1694, 76, N'Oromia', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1695, 76, N'Somali', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1696, 76, N'Addis Ababa', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1697, 76, N'Southern Nations', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1746, 64, N'Hlavni Mesto Praha', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1772, 81, N'Ahvenanmaa', N'AV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1777, 81, N'Lappi', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1779, 81, N'Oulu Laani', N'OU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1784, 80, N'Central', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1785, 80, N'Eastern', N'EA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1786, 80, N'Northern', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1787, 80, N'Rotuma', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1788, 80, N'Western', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1789, 160, N'Kosrae', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1790, 160, N'Pohnpei', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1791, 160, N'Chuuk', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1792, 160, N'Yap', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1793, 82, N'Aquitaine', N'AQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1794, 82, N'Auvergne', N'AU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1795, 82, N'Basse-Normandie', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1796, 82, N'Bourgogne', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1797, 82, N'Bretagne', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1798, 82, N'Centre', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1799, 82, N'Champagne-Ardenne', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1800, 82, N'Corse', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1801, 82, N'Franche-Comte', N'FC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1802, 82, N'Haute-Normandie', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1803, 82, N'Ile-De-France', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1804, 82, N'Languedoc-Roussillon', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1805, 82, N'Limousin', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1806, 82, N'Lorraine', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1807, 82, N'Midi-Pyrenees', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1808, 82, N'Nord-Pas-de-Calais', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1809, 82, N'Pays de la Loire', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1810, 82, N'Picardie', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1811, 82, N'Poitou-Charentes', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1812, 82, N'Provence-Alpes-Cote d''Azur', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1813, 82, N'Rhone-Alpes', N'RH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1814, 82, N'Alsace', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1815, 88, N'Banjul', N'BJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1816, 88, N'Lower River', N'LR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1817, 88, N'MacCarthy Island', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1818, 88, N'Upper River', N'UR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1819, 88, N'Western', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1820, 88, N'North Bank', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1821, 87, N'Estuaire', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1822, 87, N'Haut-Ogooue', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1823, 87, N'Moyen-Ogooue', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1824, 87, N'Ngounie', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1825, 87, N'Nyanga', N'NY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1826, 87, N'Ogooue-Ivindo', N'OI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1827, 87, N'Ogooue-Lolo', N'OL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1828, 87, N'Ogooue-Maritime', N'OM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1829, 87, N'Woleu-Ntem', N'WN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1831, 90, N'Abkhazia', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1833, 90, N'Ajaria', N'AJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1879, 90, N'T''bilisi', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1893, 92, N'Greater Accra', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1894, 92, N'Ashanti', N'AH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1895, 92, N'Brong-Ahafo', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1896, 92, N'Central', N'CP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1897, 92, N'Eastern', N'EP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1898, 92, N'Northern', N'NP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1899, 92, N'Volta', N'TV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1900, 92, N'Western', N'WP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1901, 92, N'Upper East', N'UE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1902, 92, N'Upper West', N'UW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1903, 97, N'Saint Andrew', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1904, 97, N'Saint David', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1905, 97, N'Saint George', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1906, 97, N'Saint John', N'JO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1907, 97, N'Saint Mark', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1908, 97, N'Saint Patrick', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1909, 96, N'Nordgronland', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1910, 96, N'Ostgronland', N'EG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1911, 96, N'Vestgronland', N'VG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1912, 91, N'Baden-Wurttemberg', N'BW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1913, 91, N'Bayern', N'BY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1914, 91, N'Bremen', N'HB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1915, 91, N'Hamburg', N'HH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1916, 91, N'Hessen', N'HE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1917, 91, N'Niedersachsen', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1918, 91, N'Nordrhein-Westfalen', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1919, 91, N'Rheinland-Pfalz', N'RP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1920, 91, N'Saarland', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1921, 91, N'Schleswig-Holstein', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1922, 91, N'Brandenburg', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1923, 91, N'Mecklenburg-Vorpommern', N'MY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1924, 91, N'Sachsen', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1925, 91, N'Sachsen-Anhalt', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1926, 91, N'Thuringen', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1927, 91, N'Berlin', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1928, 95, N'Evros', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1929, 95, N'Rodhopi', N'RD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1930, 95, N'Xanthi', N'XN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1931, 95, N'Drama', N'DR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1932, 95, N'Serrai', N'SR')
GO
print 'Processed 1300 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1933, 95, N'Kilkis', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1934, 95, N'Pella', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1935, 95, N'Florina', N'FL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1936, 95, N'Kastoria', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1937, 95, N'Grevena', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1938, 95, N'Kozani', N'KZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1939, 95, N'Imathia', N'IM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1940, 95, N'Thessaloniki', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1941, 95, N'Kavala', N'KV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1942, 95, N'Khalkidhiki', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1943, 95, N'Pieria', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1944, 95, N'Ioannina', N'IO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1945, 95, N'Thesprotia', N'TP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1946, 95, N'Preveza', N'PV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1947, 95, N'Arta', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1948, 95, N'Larisa', N'LR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1949, 95, N'Trikala', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1950, 95, N'Kardhitsa', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1951, 95, N'Magnisia', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1952, 95, N'Kerkira', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1953, 95, N'Levkas', N'LV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1954, 95, N'Kefallinia', N'KF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1955, 95, N'Zakinthos', N'ZK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1956, 95, N'Fthiotis', N'FT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1957, 95, N'Evritania', N'ET')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1958, 95, N'Aitolia kai Akarnania', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1959, 95, N'Fokis', N'FK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1960, 95, N'Voiotia', N'VT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1961, 95, N'Evvoia', N'EV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1962, 95, N'Attiki', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1963, 95, N'Argolis', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1964, 95, N'Korinthia', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1965, 95, N'Akhaia', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1966, 95, N'Ilia', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1967, 95, N'Messinia', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1968, 95, N'Arkadhia', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1969, 95, N'Lakonia', N'LC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1970, 95, N'Khania', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1971, 95, N'Rethimni', N'RT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1972, 95, N'Iraklion (Crete)', N'IR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1973, 95, N'Lasithi', N'LT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1974, 95, N'Dhodhekanisos', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1975, 95, N'Samos', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1976, 95, N'Kikladhes', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1977, 95, N'Khios', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1978, 95, N'Lesvos', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1979, 100, N'Alta Verapaz', N'AV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1980, 100, N'Baja Verapaz', N'BV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1981, 100, N'Chimaltenango', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1982, 100, N'Chiquimula', N'CQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1983, 100, N'El Progreso', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1984, 100, N'Escuintla', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1985, 100, N'Guatemala', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1986, 100, N'Huehuetenango', N'HU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1987, 100, N'Izabal', N'IZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1988, 100, N'Jalapa', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1989, 100, N'Jutiapa', N'JU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1990, 100, N'Peten', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1991, 100, N'Quetzaltenango', N'QZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1992, 100, N'Quiche', N'QC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1993, 100, N'Retalhuleu', N'RE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1994, 100, N'Sacatepequez', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1995, 100, N'San Marcos', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1996, 100, N'Santa Rosa', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1997, 100, N'Solola', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1998, 100, N'Suchitepequez', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (1999, 100, N'Totonicapan', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2000, 100, N'Zacapa', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2001, 102, N'Beyla', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2002, 102, N'Boffa', N'BF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2003, 102, N'Boke', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2004, 102, N'Conakry', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2005, 102, N'Dabola', N'DB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2006, 102, N'Dalaba', N'DL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2007, 102, N'Dinguiraye', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2008, 102, N'Dubreka', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2009, 102, N'Faranah', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2010, 102, N'Forecariah', N'FO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2011, 102, N'Fria', N'FR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2012, 102, N'Gaoual', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2013, 102, N'Gueckedou', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2014, 102, N'Kankan', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2015, 102, N'Kerouane', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2016, 102, N'Kindia', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2017, 102, N'Kissidougou', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2018, 102, N'Koundara', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2019, 102, N'Kouroussa', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2020, 102, N'Labe', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2021, 102, N'Macenta', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2022, 102, N'Mali', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2023, 102, N'Mamou', N'MM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2024, 102, N'Nzerekore', N'NZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2025, 102, N'Pita', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2026, 102, N'Siguiri', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2027, 102, N'Telimele', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2028, 102, N'Tougue', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2029, 102, N'Yomou', N'YO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2030, 104, N'Barima-Waini', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2031, 104, N'Cuyuni-Mazaruni', N'CU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2032, 104, N'Demerara-Mahaica', N'DE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2033, 104, N'East Berbice-Corentyne', N'EB')
GO
print 'Processed 1400 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2034, 104, N'Essequibo Islands-West Demerara', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2035, 104, N'Mahaica-Berbice', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2036, 104, N'Pomeroon-Supenaam', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2037, 104, N'Potaro-Siparuni', N'PT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2038, 104, N'Upper Demerara-Berbice', N'UD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2039, 104, N'Upper Takutu-Upper Essequibo', N'UT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2040, 105, N'Nord-Ouest', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2041, 105, N'Artibonite', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2042, 105, N'Centre', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2043, 105, N'Grand''Anse', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2044, 105, N'Nord', N'ND')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2045, 105, N'Nord-Est', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2046, 105, N'Ouest', N'OU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2047, 105, N'Sud', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2048, 105, N'Sud-Est', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2049, 108, N'Atlantida', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2050, 108, N'Choluteca', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2051, 108, N'Colon', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2052, 108, N'Comayagua', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2053, 108, N'Copan', N'CP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2054, 108, N'Cortes', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2055, 108, N'El Paraiso', N'EP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2056, 108, N'Francisco Morazan', N'FM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2057, 108, N'Gracias a Dios', N'GD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2058, 108, N'Intibuca', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2059, 108, N'Islas de la Bahia', N'IB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2060, 108, N'La Paz', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2061, 108, N'Lempira', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2062, 108, N'Ocotepeque', N'OC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2063, 108, N'Olancho', N'OL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2064, 108, N'Santa Barbara', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2065, 108, N'Valle', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2066, 108, N'Yoro', N'YO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2067, 111, N'Bacs-Kiskun', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2068, 111, N'Baranya', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2069, 111, N'Bekes', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2070, 111, N'Borsod-Abauj-Zemplen', N'BZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2071, 111, N'Budapest', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2072, 111, N'Csongrad', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2073, 111, N'Debrecen', N'DE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2074, 111, N'Fejer', N'FE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2075, 111, N'Gyor-Moson-Sopron', N'GS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2076, 111, N'Hajdu-Bihar', N'HB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2077, 111, N'Heves', N'HE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2078, 111, N'Komarom-Esztergom', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2079, 111, N'Miskolc', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2080, 111, N'Nograd', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2081, 111, N'Pees', N'PS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2082, 111, N'Pest', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2083, 111, N'Somogy', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2084, 111, N'Szabolcs-Szatmar-Bereg', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2085, 111, N'Szeged', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2086, 111, N'Jasz-Nagykun-Szolnok', N'JN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2087, 111, N'Tolna', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2088, 111, N'Vas', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2089, 111, N'Veszprem', N'VM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2090, 111, N'Zala', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2091, 111, N'Gyor', N'GY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2092, 111, N'Bekescsaba', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2093, 111, N'Dunaujvaros', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2094, 111, N'Eger', N'EG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2095, 111, N'Hodmezovasarhely', N'HV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2096, 111, N'Kaposvar', N'KV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2097, 111, N'Kecskemet', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2098, 111, N'Nagykanizsa', N'NK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2099, 111, N'Nyiregyhaza', N'NY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2100, 111, N'Sopron', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2101, 111, N'Szekesfehervar', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2102, 111, N'Szolnok', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2103, 111, N'Szombathely', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2104, 111, N'Tatabanya', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2105, 111, N'Zalaegerszeg', N'ZE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2106, 112, N'Akranes', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2107, 112, N'Akureyri', N'AU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2108, 112, N'Arnessysla', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2109, 112, N'Austur-Bardastrandarsysla', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2110, 112, N'Austur-Hunavatnssysla', N'AH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2111, 112, N'Austur-Skaftafellssysla', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2112, 112, N'Borgarfjardarsysla', N'BF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2113, 112, N'Dalasysla', N'DS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2114, 112, N'Eyjafjardarsysla', N'EY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2115, 112, N'Gullbringusysla', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2116, 112, N'Hafnarfjordur', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2117, 112, N'Husavik', N'HU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2118, 112, N'Isafjordur', N'IA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2119, 112, N'Keflavik', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2120, 112, N'Kjosarsysla', N'KJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2121, 112, N'Kopavogur', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2122, 112, N'Myrasysla', N'MY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2123, 112, N'Neskaupstadur', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2124, 112, N'Nordur-Isafjardarsysla', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2125, 112, N'Nordur-Mulasysla', N'NM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2126, 112, N'Nordur-Tingeyjarsysla', N'NT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2127, 112, N'Olafsfjordur', N'OL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2128, 112, N'Rangrvallasysla', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2129, 112, N'Reykjavik', N'RE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2130, 112, N'Saudarkrokur', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2131, 112, N'Seydisfjordur', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2132, 112, N'Siglufjordur', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2133, 112, N'Skagafjardarsysla', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2134, 112, N'Snafellsnes-og Hnappadalssysla', N'SH')
GO
print 'Processed 1500 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2135, 112, N'Strandasysla', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2136, 112, N'Sudur-Mulasysla', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2137, 112, N'Sudur-Tingeyjarsysla', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2138, 112, N'Vestmannaeyjar', N'VE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2139, 112, N'Vestur-Bardastrandarsysla', N'VB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2140, 112, N'Vestur-Hunavatnssysla', N'VH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2141, 112, N'Vestur-Isafjardarsysla', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2142, 112, N'Vestur-Skaftafellssysla', N'VS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2143, 114, N'Aceh (Atjeh)', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2144, 114, N'Bengkulu', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2145, 114, N'Jakarta Raya (Djakarta Raya)', N'JK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2146, 114, N'Jambi (Djambi)', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2147, 114, N'Jawa Barat (Djawa Barat)', N'JR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2148, 114, N'Jawa Tengah (Djawa Tengah)', N'JT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2149, 114, N'Jawa Timur (Djawa Timur)', N'JI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2150, 114, N'Yogyakarta (Jogjakarta)', N'YO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2151, 114, N'Kalimantan Barat', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2152, 114, N'Kalimantan Selatan', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2153, 114, N'Kalimantan Tengah', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2154, 114, N'Kalimantan Timur', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2155, 114, N'Lampung', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2156, 114, N'Maluku', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2157, 114, N'Nusa Tenggara Barat', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2158, 114, N'Nusa Tenggara Timur', N'NT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2159, 114, N'Riau', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2160, 114, N'Sulawesi Selatan', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2161, 114, N'Sulawesi Tengah', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2162, 114, N'Sulawesi Tenggara', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2163, 114, N'Sulawesi Utara', N'SW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2164, 114, N'Sumatera Barat', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2165, 114, N'Sumatera Selatan', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2166, 114, N'Sumatera Utara', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2200, 115, N'Azarbayjan-e Gharbi', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2202, 115, N'Chahar Maall va Bakhtiari', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2203, 115, N'Sistan va Baluchestan', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2204, 115, N'Kohgiluyeh va Buyer Ahmad', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2206, 115, N'Fars', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2207, 115, N'Gilan', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2208, 115, N'Hamadan', N'HD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2209, 115, N'Ilam', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2210, 115, N'Hormozgan', N'HG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2212, 115, N'Kermanshah', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2213, 115, N'Khuzestan', N'KZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2214, 115, N'Kordestan', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2215, 115, N'Mazandaran', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2219, 115, N'Bushehr', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2220, 115, N'Lorestan', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2221, 115, N'Markazi', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2222, 115, N'Semnan', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2223, 115, N'Tehran', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2224, 115, N'Zanjan', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2225, 115, N'Esfahan', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2226, 115, N'Kerman', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2227, 115, N'Khorasan', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2228, 115, N'Yazd', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2229, 115, N'Ardabil', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2230, 115, N'Azarbayjan-e Sharqi', N'EA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2232, 118, N'HaDarom (Southern)', N'HD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2233, 118, N'HaMerkaz (Central)', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2234, 118, N'Haafon  (Northern)', N'HZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2235, 118, N'Hefa  (Haifa)', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2236, 118, N'Tel Aviv', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2237, 118, N'Yerushalayim  (Jerusalem)', N'JM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2238, 119, N'Abruzzi', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2239, 119, N'Basilicata', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2240, 119, N'Calabria', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2241, 119, N'Campania', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2242, 119, N'Emilia-Romagna', N'EM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2243, 119, N'Friuli-Venezia Giulia', N'FR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2244, 119, N'Lazio', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2245, 119, N'Liguria', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2246, 119, N'Lombardia', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2247, 119, N'Marche', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2248, 119, N'Molise', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2249, 119, N'Piemonte', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2250, 119, N'Puglia', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2251, 119, N'Sardegna', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2252, 119, N'Sicilia', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2253, 119, N'Toscana', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2254, 119, N'Trentino-Alto Adige', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2255, 119, N'Umbria', N'UM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2256, 119, N'Valle d''Aosta', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2257, 119, N'Veneto', N'VE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2259, 60, N'Dabakala', N'DB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2260, 60, N'Aboisso', N'AO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2261, 60, N'Adzope', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2262, 60, N'Agboville', N'AV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2263, 60, N'Biankouma', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2264, 60, N'Bouna', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2265, 60, N'Boundiali', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2266, 60, N'Danane', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2267, 60, N'Divo', N'DV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2268, 60, N'Ferkessedougou', N'FE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2269, 60, N'Gagnoa', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2270, 60, N'Katiola', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2271, 60, N'Korhogo', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2272, 60, N'Odienne', N'OD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2273, 60, N'Seguela', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2274, 60, N'Touba', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2275, 60, N'Bongouanou', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2276, 60, N'Issia', N'IS')
GO
print 'Processed 1600 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2277, 60, N'Lakota', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2278, 60, N'Mankono', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2279, 60, N'Oume', N'OU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2280, 60, N'Soubre', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2281, 60, N'Tingrela', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2282, 60, N'Zuenoula', N'ZU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2283, 60, N'Abidjan', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2284, 60, N'Bangolo', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2285, 60, N'Beoumi', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2286, 60, N'Bondoukou', N'BD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2287, 60, N'Bouafle', N'BF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2288, 60, N'Bouake', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2289, 60, N'Daloa', N'DL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2290, 60, N'Daoukro', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2291, 60, N'Dimbokro', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2292, 60, N'Duekoue', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2293, 60, N'Grand-Lahou', N'GL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2294, 60, N'Guiglo', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2295, 60, N'Man', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2296, 60, N'Mbahiakro', N'MB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2297, 60, N'Sakassou', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2298, 60, N'San Pedro', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2299, 60, N'Sassandra', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2300, 60, N'Sinfra', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2301, 60, N'Tabou', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2302, 60, N'Tanda', N'TD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2303, 60, N'Tiassale', N'TI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2304, 60, N'Toumodi', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2305, 60, N'Vavoua', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2306, 60, N'Yamoussoukro', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2307, 60, N'Agnilbilekrou', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2308, 116, N'Al Anbar', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2309, 116, N'Al Basrah', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2310, 116, N'Al Muthann', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2311, 116, N'Al Qadisiyah', N'QA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2312, 116, N'As Sulaymaniyah', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2313, 116, N'Babil', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2314, 116, N'Baghdad', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2315, 116, N'Dahuk', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2316, 116, N'Dhi Qar', N'DQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2317, 116, N'Diyala', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2318, 116, N'Arbil', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2319, 116, N'Karbala''', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2320, 116, N'At Ta''mim', N'TS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2321, 116, N'Maysan', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2322, 116, N'Ninawa', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2323, 116, N'Wasit', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2324, 116, N'An Najaf', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2325, 116, N'Salah ad Din', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2326, 122, N'Aichi', N'AI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2327, 122, N'Akita', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2328, 122, N'Aomori', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2329, 122, N'Chiba', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2330, 122, N'Ehime', N'EH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2331, 122, N'Fukui', N'FU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2332, 122, N'Fukuoka', N'FK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2333, 122, N'Fukushima', N'FS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2334, 122, N'Gifu', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2335, 122, N'Gumma', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2336, 122, N'Hiroshima', N'HI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2337, 122, N'Hokkaido', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2338, 122, N'Hyogo', N'HY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2339, 122, N'Ibaraki', N'IB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2340, 122, N'Ishikawa', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2341, 122, N'Iwate', N'IW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2342, 122, N'Kagawa', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2343, 122, N'Kagoshima', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2344, 122, N'Kanagawa', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2345, 122, N'Kochi', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2346, 122, N'Kumamoto', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2347, 122, N'Kyoto', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2348, 122, N'Mie', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2349, 122, N'Miyagi', N'MY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2350, 122, N'Miyazaki', N'MZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2351, 122, N'Nagano', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2352, 122, N'Nagasaki', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2353, 122, N'Nara', N'NR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2354, 122, N'Niigata', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2355, 122, N'Oita', N'OI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2356, 122, N'Okayama', N'OK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2357, 122, N'Osaka', N'OS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2358, 122, N'Saga', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2359, 122, N'Saitama', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2360, 122, N'Shiga', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2361, 122, N'Shimane', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2362, 122, N'Shizuoka', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2363, 122, N'Tochigi', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2364, 122, N'Tokushima', N'TK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2365, 122, N'Tokyo', N'TY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2366, 122, N'Tottori', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2367, 122, N'Toyama', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2368, 122, N'Wakayama', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2369, 122, N'Yamagata', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2370, 122, N'Yamaguchi', N'YM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2371, 122, N'Yamanashi', N'YN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2372, 122, N'Okinawa', N'ON')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2373, 120, N'Clarendon', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2374, 120, N'Hanover', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2375, 120, N'Manchester', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2376, 120, N'Portland', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2377, 120, N'Saint Andrew', N'SD')
GO
print 'Processed 1700 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2378, 120, N'Saint Ann', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2379, 120, N'Saint Catherine', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2380, 120, N'Saint Elizabeth', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2381, 120, N'Saint James', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2382, 120, N'Saint Mary', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2383, 120, N'Saint Thomas', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2384, 120, N'Trelawny', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2385, 120, N'Westmoreland', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2386, 120, N'Kingston', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2387, 126, N'Al Balqa''', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2388, 126, N'Ma''an', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2389, 126, N'Al Karak', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2390, 126, N'Al Mafraq', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2391, 126, N'''Amman', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2392, 126, N'At Tafilah', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2393, 126, N'Az Zaraq', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2394, 126, N'Irbid', N'IR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2395, 129, N'Central', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2396, 129, N'Coast', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2397, 129, N'Eastern', N'EA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2398, 129, N'Nairobi Area', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2399, 129, N'NorthEastern', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2400, 129, N'Nyanza', N'NY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2401, 129, N'Rift Valley', N'RV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2402, 129, N'Western', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2403, 135, N'Bishkek', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2404, 135, N'Chuy', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2405, 135, N'Jalal-Abad', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2406, 135, N'Naryn', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2407, 135, N'Osh', N'OS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2408, 135, N'Talas', N'TL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2409, 135, N'Ysyk-Kol', N'YK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2410, 132, N'Chagang-do', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2411, 132, N'Hamgyong-namdo', N'HN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2412, 132, N'Hwanghae-namdo', N'WN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2413, 132, N'Hwanghae-bukto', N'WB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2414, 132, N'Kaesong-si', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2415, 132, N'Kangwon-do', N'KW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2416, 132, N'P''yongan-namdo', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2417, 132, N'P''yongyang-si', N'PY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2418, 132, N'Yanggang-do', N'YG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2419, 132, N'Namp''o-si', N'NP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2420, 132, N'Hamgyong-bukto', N'HG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2421, 131, N'Gilbert Islands', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2422, 131, N'Line Islands', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2423, 131, N'Phoenix Islands', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2424, 133, N'Cheju-do', N'CJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2425, 133, N'Cholla-bukto', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2426, 133, N'Ch''ungch''ong-bukto', N'GB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2427, 133, N'Kangwon-do', N'KW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2428, 133, N'Kyongsang-namdo', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2429, 133, N'Pusan-gwangyoksi', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2430, 133, N'Soul-t''ukpyolsi', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2431, 133, N'Inch''on-gwangyoksi', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2432, 133, N'Kyonggi-do', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2433, 133, N'Kyongsang-bukto', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2434, 133, N'Taegu-gwangyoksi', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2435, 133, N'Cholla-namdo', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2436, 133, N'Ch''ungch''ong-namdo', N'GN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2437, 133, N'Kwangju-gwangyoksi', N'KJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2438, 133, N'Taejon-gwangyoksi', N'TJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2439, 134, N'Al Kuwayt', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2441, 134, N'Hawalli', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2442, 134, N'Al Ahmadi', N'AH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2443, 134, N'Al Jahra''', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2444, 134, N'Al Farwaniyah', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2445, 128, N'Almaty', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2446, 128, N'Aqmola', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2447, 128, N'Aqtobe', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2448, 128, N'Astana', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2449, 128, N'Atyrau', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2450, 128, N'Batys Qazaqstan', N'BQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2451, 128, N'Bayqongyr', N'BY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2452, 128, N'Mangghystau', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2453, 128, N'Ongtustik Qazaqstan', N'OQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2454, 128, N'Pavlodar', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2455, 128, N'Qaraghandy', N'QG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2456, 128, N'Qostanay', N'QS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2457, 128, N'Qyzylorda', N'QO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2458, 128, N'Shyghys Qazaqstan', N'SQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2459, 128, N'Soltustik Qazaqstan', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2460, 128, N'Zhambyl', N'ZM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2464, 136, N'Attapu', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2465, 136, N'Champasak', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2466, 136, N'Houaphan', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2467, 136, N'Oudomxai', N'OU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2468, 136, N'Xiagnabouli', N'XA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2469, 136, N'Xiangkhoang', N'XI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2470, 136, N'Khammouan', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2471, 136, N'Louangnamtha', N'LM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2472, 136, N'Louangphabang', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2473, 136, N'Phongsali', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2474, 136, N'Salavan', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2475, 136, N'Savannakhet', N'SV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2476, 136, N'Bokeo', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2477, 136, N'Bolikhamxai', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2478, 136, N'Viangchan', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2479, 136, N'Xaisomboun', N'XS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2480, 136, N'Xekong', N'XE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2481, 138, N'Beqaa', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2482, 138, N'Liban-Sud', N'JA')
GO
print 'Processed 1800 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2483, 138, N'Liban-Nord', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2484, 138, N'Beyrouth', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2485, 138, N'Mont-Liban', N'JL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2486, 137, N'Aizjrayjkes Rajons', N'AI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2487, 137, N'Aluksnes Rajons', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2488, 137, N'Balvu Rajons', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2489, 137, N'Bauskas Rajons', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2490, 137, N'Cesu Rajons', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2491, 137, N'Daugavpils', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2492, 137, N'Daugavpils Rajons', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2493, 137, N'Dobeles Rajons', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2494, 137, N'Gulbenes Rajons', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2495, 137, N'Jekabpils Rajons', N'JK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2496, 137, N'Jelgava', N'JE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2497, 137, N'Jelgavas Rajons', N'JL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2498, 137, N'Jurmala', N'JU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2499, 137, N'Kraslavas Rajons', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2500, 137, N'Kuldigas Rajons', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2501, 137, N'Liepaja', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2502, 137, N'Liepajas Rajons', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2503, 137, N'Limbazu Rajons', N'LM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2504, 137, N'Ludzas Rajons', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2505, 137, N'Madonas Rajons', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2506, 137, N'Ogres Rajons', N'OG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2507, 137, N'Preiju Rajons', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2508, 137, N'Rezekne', N'RE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2509, 137, N'Rezeknes Rajons', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2510, 137, N'Riga', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2511, 137, N'Rigas Rajons', N'RG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2512, 137, N'Saldus Rajons', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2513, 137, N'Talsu Rajons', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2514, 137, N'Tukuma Rajons', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2515, 137, N'Valkas Rajons', N'VK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2516, 137, N'Valmieras Rajons', N'VM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2517, 137, N'Ventspils', N'VE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2518, 137, N'Ventspils Rajons', N'VN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2521, 143, N'Alytaus Apskritis', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2531, 143, N'Kauno Apskritis', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2535, 143, N'Klaipedos Apskritis', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2540, 143, N'Marijampoles Apskritis', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2548, 143, N'Panevezio Apskritis', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2557, 143, N'Siauliu Apskritis', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2564, 143, N'Taurages Apskritis', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2565, 143, N'Telsiu Apskritis', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2568, 143, N'Utenos Apskritis', N'UT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2572, 143, N'Vilniaus Apskritis', N'VL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2574, 140, N'Bong', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2575, 140, N'Grand Gedeh', N'GG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2576, 140, N'Lofa', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2578, 140, N'Nimba', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2579, 140, N'Sinoe', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2580, 140, N'Grand Bassa', N'GB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2581, 140, N'Grand Cape Mount', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2582, 140, N'Maryland', N'MY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2583, 140, N'Montserrado', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2584, 140, N'Bomi', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2585, 140, N'Grand Kru', N'GK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2586, 140, N'Margibi', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2587, 140, N'River Cess', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2588, 220, N'Banskobystricky', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2589, 220, N'Bratislavsky', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2590, 220, N'Kosicky', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2591, 220, N'Nitrinsky', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2592, 220, N'Presovsky', N'PV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2593, 220, N'Treciansky', N'TC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2594, 220, N'Trnavsky', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2595, 220, N'Zilinsky', N'ZI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2596, 142, N'Balzers', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2597, 142, N'Eschen', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2598, 142, N'Gamprin', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2599, 142, N'Mauren', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2600, 142, N'Planken', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2601, 142, N'Ruggell', N'RU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2602, 142, N'Schaan', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2603, 142, N'Schellenberg', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2604, 142, N'Triesen', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2605, 142, N'Triesenberg', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2606, 142, N'Vaduz', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2613, 139, N'Berea', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2614, 139, N'Butha-Buthe', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2615, 139, N'Leribe', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2616, 139, N'Mafeteng', N'MF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2617, 139, N'Maseru', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2618, 139, N'Mohale''s Hoek', N'MH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2619, 139, N'Mokhotlong', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2620, 139, N'Qacha''s Hoek', N'QN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2621, 139, N'Quthing', N'QT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2622, 139, N'Thaba-Tseka', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2623, 144, N'Diekirch', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2624, 144, N'Grevenmacher', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2625, 144, N'Luxembourg', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2627, 141, N'Al ''Aziziyah', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2629, 141, N'Al Jufrah', N'JU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2631, 141, N'Al Kufrah', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2636, 141, N'Ash Shati''', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2646, 141, N'Murzuq', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2650, 141, N'Sabha', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2655, 141, N'Tarhunah', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2656, 141, N'Tubruq', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2658, 141, N'Zlitan', N'ZL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2660, 141, N'Ajdabiya', N'AJ')
GO
print 'Processed 1900 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2661, 141, N'Al Fatih', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2662, 141, N'Al Jabal al Akhdar', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2663, 141, N'Al Khums', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2664, 141, N'An Nuqat al Khams', N'NK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2665, 141, N'Awbari', N'AW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2666, 141, N'Az Zawiyah', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2667, 141, N'Banghazi', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2668, 141, N'Darnah', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2669, 141, N'Ghadamis', N'GD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2670, 141, N'Gharyan', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2671, 141, N'Misratah', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2672, 141, N'Sawfajjin', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2673, 141, N'Surt', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2674, 141, N'Tarabulus', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2675, 141, N'Yafran', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2676, 147, N'Antsiranana', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2677, 147, N'Fianarantsoa', N'FI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2678, 147, N'Mahajanga', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2679, 147, N'Toamasina', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2680, 147, N'Antananarivo', N'AV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2681, 147, N'Toliara', N'TL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2682, 145, N'Ilhas', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2683, 145, N'Macau', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2685, 163, N'Balti', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2689, 163, N'Cahul', N'CG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2696, 163, N'Chisinau', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2702, 163, N'Stinga Nistrului', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2703, 163, N'Edinet', N'ET')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2706, 163, N'Gagauzia', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2714, 163, N'Orhei', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2721, 163, N'Soroca', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2727, 163, N'Ungheni', N'UN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2729, 165, N'Arhangay', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2730, 165, N'Bayanhongor', N'BH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2731, 165, N'Bayan-Olgiy', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2734, 165, N'Dornogovi', N'DG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2735, 165, N'Dundgovi', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2736, 165, N'Dzavhan', N'DZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2737, 165, N'Govi-Altay', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2738, 165, N'Hentiy', N'HN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2739, 165, N'Omnogovi', N'OG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2740, 165, N'Ovorhangay', N'OH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2741, 165, N'Ulaanbaatar', N'UB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2742, 165, N'Orhon', N'ER')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2743, 167, N'Saint Anthony', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2744, 167, N'Saint Georges', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2745, 167, N'Saint Peter', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2746, 148, N'Chikwawa', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2747, 148, N'Chiradzulu', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2748, 148, N'Chitipa', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2749, 148, N'Thyolo', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2750, 148, N'Dedza', N'DE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2751, 148, N'Dowa', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2752, 148, N'Karonga', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2753, 148, N'Kasungu', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2754, 148, N'Machinga (Kasupe)', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2755, 148, N'Lilongwe', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2756, 148, N'Mangochi (Fort Johnston)', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2757, 148, N'Mchinji', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2758, 148, N'Mulanje (Mlange)', N'MJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2759, 148, N'Mzimba', N'MZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2760, 148, N'Ntcheu', N'NU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2761, 148, N'Nkhata Bay', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2762, 148, N'Nkhotakota', N'NK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2763, 148, N'Nsanje', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2764, 148, N'Ntchisi (Nchisi)', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2765, 148, N'Rumphi (Rumpil)', N'RU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2766, 148, N'Salima', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2767, 148, N'Zomba', N'ZO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2768, 148, N'Blantyre', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2769, 148, N'Mwanza', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2770, 151, N'Bamako', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2771, 151, N'Gao', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2772, 151, N'Kayes', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2773, 151, N'Mopti', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2774, 151, N'Segou', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2775, 151, N'Sikasso', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2776, 151, N'Koulikoro', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2777, 151, N'Tombouctou', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2781, 168, N'Agadir', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2782, 168, N'Al Hocema', N'AH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2783, 168, N'Azilal', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2784, 168, N'Ben Slimane', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2785, 168, N'Beni Mellal', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2786, 168, N'Boulemane', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2787, 168, N'Casablanca', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2788, 168, N'Chaouen', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2789, 168, N'El Jadida', N'EJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2790, 168, N'El Kelaa des Sraghna', N'EK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2791, 168, N'Er Rachidia', N'ER')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2792, 168, N'Essaouira', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2793, 168, N'Fes', N'FE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2794, 168, N'Figuig', N'FI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2795, 168, N'Kenitra', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2796, 168, N'Khemisset', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2797, 168, N'Khenifra', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2798, 168, N'Khouribga', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2799, 168, N'Marrakech', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2800, 168, N'Meknes', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2801, 168, N'Nador', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2802, 168, N'Ouarzazate', N'OU')
GO
print 'Processed 2000 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2803, 168, N'Oujda', N'OJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2804, 168, N'Rabat-Sale', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2805, 168, N'Safi', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2806, 168, N'Settat', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2807, 168, N'Tanger', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2808, 168, N'Tata', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2809, 168, N'Taza', N'TZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2810, 168, N'Tiznit', N'TI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2811, 168, N'Guelmim', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2812, 168, N'Ifrane', N'IF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2813, 168, N'Laayoune', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2814, 168, N'Tan-Tan', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2815, 168, N'Taounate', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2816, 168, N'Sidi Kacem', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2817, 168, N'Taroudannt', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2818, 168, N'Tetouan', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2819, 168, N'Larache', N'LR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2820, 168, N'Assa-Zag', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2821, 168, N'Es Smara', N'EM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2822, 157, N'Black River', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2823, 157, N'Flacq', N'FL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2824, 157, N'Grand Port', N'GP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2825, 157, N'Moka', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2826, 157, N'Pamplemousses', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2827, 157, N'Plaines Wilhems', N'PW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2828, 157, N'Port Louis', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2829, 157, N'Rivire du Rempart', N'RR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2830, 157, N'Savanne', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2831, 157, N'Agalega Islands', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2832, 157, N'Cargados Carajos', N'CC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2833, 157, N'Rodrigues', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2834, 156, N'Hodh Ech Chargui', N'HC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2835, 156, N'Hodh El Gharbi', N'HG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2836, 156, N'Assaba', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2837, 156, N'Gorgol', N'GO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2838, 156, N'Brakna', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2839, 156, N'Trarza', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2840, 156, N'Adrar', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2841, 156, N'Dakhlet Nouadhibou', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2842, 156, N'Tagant', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2843, 156, N'Guidimaka', N'GD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2844, 156, N'Tiris Zemmour', N'TZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2845, 156, N'Inchiri', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2846, 186, N'Ad Dakhiliyah', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2847, 186, N'Al Batinah', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2848, 186, N'Al Wusta', N'WU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2849, 186, N'Ash Sharqiyah', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2850, 186, N'Az Zahirah', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2851, 186, N'Masqat', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2852, 186, N'Musandam', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2853, 186, N'Zufar', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2854, 150, N'Seenu', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2858, 150, N'Laamu', N'LM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2860, 150, N'Thaa', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2862, 150, N'Raa', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2865, 150, N'Baa', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2867, 150, N'Shaviyani', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2868, 150, N'Noonu', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2869, 150, N'Kaafu', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2873, 150, N'Alifu', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2874, 150, N'Dhaalu', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2875, 150, N'Faafa', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2876, 150, N'Gaafu Alifu', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2877, 150, N'Gaafu Dhaalu', N'GD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2878, 150, N'Haa Alifu', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2879, 150, N'Haa Dhaalu', N'HD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2880, 150, N'Lhaviyani', N'LV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2881, 150, N'Maale', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2882, 150, N'Meenu', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2883, 150, N'Gnaviyani', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2884, 150, N'Vaavu', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2885, 159, N'Aguascalientes', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2886, 159, N'Campeche', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2887, 159, N'Coahuila de Zaragoza', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2888, 159, N'Distrito Federal', N'DF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2889, 159, N'Mexico', N'MX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2890, 159, N'Michoacan de Ocampo', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2891, 159, N'Nayarit', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2892, 159, N'Puebla', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2893, 159, N'Queretaro de Arteaga', N'QE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2894, 159, N'Sinaloa', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2895, 159, N'Veracruz-Llave', N'VE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2896, 159, N'Yucatan', N'YU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2897, 149, N'Johor', N'JH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2898, 149, N'Kedah', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2899, 149, N'Kelantan', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2900, 149, N'Melaka', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2901, 149, N'Negeri Sembilan', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2902, 149, N'Pahang', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2903, 149, N'Perak', N'PK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2904, 149, N'Perlis', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2905, 149, N'Pulau Pinang', N'PG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2906, 149, N'Sarawak', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2907, 149, N'Selangor', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2908, 149, N'Terengganu', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2909, 149, N'Wilayah Persekutuan', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2910, 149, N'Labuan', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2911, 149, N'Sabah', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2912, 169, N'Cabo Delgado', N'CD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2913, 169, N'Gaza', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2914, 169, N'Inhambane', N'IN')
GO
print 'Processed 2100 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2915, 169, N'Maputo', N'MP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2916, 169, N'Sofala', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2917, 169, N'Nampula', N'NM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2918, 169, N'Niassa', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2919, 169, N'Tete', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2920, 169, N'Zambezia', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2921, 169, N'Manica', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2922, 180, N'Agadez', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2923, 180, N'Diffa', N'DF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2924, 180, N'Dosso', N'DS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2925, 180, N'Maradi', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2926, 180, N'Niamey', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2927, 180, N'Tahoua', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2928, 180, N'Zinder', N'ZI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2929, 180, N'Tillaberi', N'TL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2931, 258, N'Aoba//Maewo', N'AO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2932, 258, N'Torba', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2938, 258, N'Sanma', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2940, 258, N'Tafea', N'TF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2941, 181, N'Lagos', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2942, 181, N'Bauchi', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2943, 181, N'Rivers', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2944, 181, N'Abuja Capital Territory', N'FC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2946, 181, N'Ogun', N'OG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2947, 181, N'Ondo', N'ON')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2949, 181, N'Plateau', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2951, 181, N'Akwa Ibom', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2952, 181, N'Cross River', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2953, 181, N'Kaduna', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2955, 181, N'Anambra', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2956, 181, N'Benue', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2957, 181, N'Borno', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2959, 181, N'Kano', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2960, 181, N'Kwara', N'KW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2961, 181, N'Niger', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2962, 181, N'Oyo', N'OY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2963, 181, N'Sokoto', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2964, 181, N'Abia', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2965, 181, N'Adamawa', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2966, 181, N'Delta', N'DE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2967, 181, N'Edo', N'ED')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2968, 181, N'Enugu', N'EN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2969, 181, N'Jigawa', N'JI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2970, 181, N'Kebbi', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2971, 181, N'Kogi', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2972, 181, N'Osun', N'OS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2973, 181, N'Taraba', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2974, 181, N'Yobe', N'YO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2975, 175, N'Drenthe', N'DR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2976, 175, N'Friesland', N'FR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2977, 175, N'Gelderland', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2978, 175, N'Groningen', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2979, 175, N'Limburg', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2980, 175, N'Noord-Brabant', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2981, 175, N'Noord-Holland', N'NH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2982, 175, N'Overijssel', N'OV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2983, 175, N'Utrecht', N'UT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2984, 175, N'Zeeland', N'ZE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2985, 175, N'Zuid-Holland', N'ZH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2989, 175, N'Flevoland', N'FL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2990, 185, N'Akershus', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2991, 185, N'Aust-Agder', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2992, 185, N'Buskerud', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2993, 185, N'Finnmark', N'FI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2994, 185, N'Hedmark', N'HE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2995, 185, N'Hordaland', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2996, 185, N'More og Romsdal', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2997, 185, N'Nordland', N'NL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2998, 185, N'Nord-Trondelag', N'NR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (2999, 185, N'Oppland', N'OP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3000, 185, N'Oslo', N'OS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3001, 185, N'stfold', N'OF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3002, 185, N'Rogaland', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3003, 185, N'Sogn og Fjordane', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3004, 185, N'Sor-Trondelag', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3005, 185, N'Telemark', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3006, 185, N'Troms', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3007, 185, N'Vest-Agder', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3008, 185, N'Vestfold', N'VF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3009, 174, N'Bagmati', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3010, 174, N'Bheri', N'BH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3011, 174, N'Dhawalagiri', N'DH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3012, 174, N'Gandaki', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3013, 174, N'Janakpur', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3014, 174, N'Karnali', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3015, 174, N'Kosi', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3016, 174, N'Lumbini', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3017, 174, N'Mahakali', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3018, 174, N'Mechi', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3019, 174, N'Narayani', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3020, 174, N'Rapti', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3021, 174, N'Sagarmatha', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3022, 174, N'Seti', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3023, 172, N'Aiwo', N'AI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3024, 172, N'Anabar', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3025, 172, N'Anetan', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3026, 172, N'Anibare', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3027, 172, N'Baiti', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3028, 172, N'Boe', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3029, 172, N'Buada', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3030, 172, N'Denigomodu', N'DE')
GO
print 'Processed 2200 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3031, 172, N'Ewa', N'EW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3032, 172, N'Ijuw', N'IJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3033, 172, N'Meneng', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3034, 172, N'Nibok', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3035, 172, N'Uaboe', N'UA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3036, 172, N'Yaren', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3037, 230, N'Brokopondo', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3038, 230, N'Commewijne', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3039, 230, N'Coronie', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3040, 230, N'Marowijne', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3041, 230, N'Nickerie', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3042, 230, N'Para', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3043, 230, N'Paramaribo', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3044, 230, N'Saramacca', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3045, 230, N'Sipaliwini', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3046, 230, N'Wanica', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3047, 179, N'Boaco', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3048, 179, N'Carazo', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3049, 179, N'Chinandega', N'CI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3050, 179, N'Chontales', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3051, 179, N'Esteli', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3052, 179, N'Granada', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3053, 179, N'Jinotega', N'JI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3054, 179, N'Leon', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3055, 179, N'Madriz', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3056, 179, N'Managua', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3057, 179, N'Masaya', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3058, 179, N'Matagalpa', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3059, 179, N'Nueva Segovia', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3060, 179, N'Rio San Juan', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3061, 179, N'Rivas', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3063, 179, N'Atlantico Norte', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3064, 179, N'Atlantico Sur', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3089, 178, N'Hawke''s Bay', N'HB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3106, 178, N'Marlborough', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3126, 178, N'Southland', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3129, 178, N'Taranaki', N'TK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3137, 178, N'Waikato', N'WK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3170, 193, N'Alto Parana', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3171, 193, N'Amambay', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3172, 193, N'Caaguazu', N'CG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3173, 193, N'Caazapa', N'CZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3174, 193, N'Central', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3175, 193, N'Concepcion', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3176, 193, N'Cordillera', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3177, 193, N'Guaira', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3178, 193, N'Itapua', N'IT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3179, 193, N'Misiones', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3180, 193, N'Neembucu', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3181, 193, N'Paraguari', N'PG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3182, 193, N'Presidente Hayes', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3183, 193, N'San Pedro', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3184, 193, N'Canindeyu', N'CY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3185, 193, N'Asuncion', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3186, 193, N'Alto Paraguay', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3187, 193, N'Boqueron', N'BQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3188, 194, N'Amazonas', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3189, 194, N'Ancash', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3190, 194, N'Apurimac', N'AP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3191, 194, N'Arequipa', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3192, 194, N'Ayacucho', N'AY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3193, 194, N'Cajamarca', N'CJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3194, 194, N'Callao', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3195, 194, N'Cusco', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3196, 194, N'Huancavelica', N'HV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3197, 194, N'Huanuco', N'HC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3198, 194, N'Ica', N'IC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3199, 194, N'Junin', N'JU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3200, 194, N'La Libertad', N'LL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3201, 194, N'Lambayeque', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3202, 194, N'Lima', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3203, 194, N'Loreto', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3204, 194, N'Madre de Dios', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3205, 194, N'Moquegua', N'MQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3206, 194, N'Pasco', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3207, 194, N'Piura', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3208, 194, N'Puno', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3209, 194, N'San Martin', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3210, 194, N'Tacna', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3211, 194, N'Tumbes', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3212, 194, N'Ucayali', N'UC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3216, 187, N'Federally Administered Tribal Areas', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3217, 187, N'Balochistan', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3218, 187, N'North-West Frontier', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3219, 187, N'Punjab', N'PB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3220, 187, N'Sindh', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3221, 187, N'Azad Kashmir', N'JK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3222, 187, N'Northern Areas', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3223, 187, N'Islamabad', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3274, 197, N'Dolnoslaskie', N'DS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3275, 197, N'Kujawsko-Pomorskie', N'KP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3276, 197, N'Lodzkie', N'LD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3277, 197, N'Lubelskie', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3278, 197, N'Lubuskie', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3279, 197, N'Malopolskie', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3280, 197, N'Mazowieckie', N'MZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3281, 197, N'Opolskie', N'OP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3282, 197, N'Podkarpackie', N'PK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3283, 197, N'Podlaskie', N'PD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3284, 197, N'Pomorskie', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3285, 197, N'Slaskie', N'SL')
GO
print 'Processed 2300 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3286, 197, N'Swietokrzyskie', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3287, 197, N'Warminsko-Mazurskie', N'WN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3288, 197, N'Wielkopolskie', N'WP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3289, 197, N'Zachodniopomorskie', N'ZP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3290, 190, N'Bocas del Toro', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3291, 190, N'Chiriqui', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3292, 190, N'Cocle', N'CC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3293, 190, N'Colon', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3294, 190, N'Darien', N'DR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3295, 190, N'Herrera', N'HE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3296, 190, N'Los Santos', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3297, 190, N'Panama', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3298, 190, N'San Blas', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3299, 190, N'Veraguas', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3300, 198, N'Aveiro', N'AV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3301, 198, N'Beja', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3302, 198, N'Braga', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3303, 198, N'Braganca', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3304, 198, N'Castelo Branco', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3305, 198, N'Coimbra', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3306, 198, N'Evora', N'EV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3307, 198, N'Faro', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3308, 198, N'Madeira', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3309, 198, N'Guarda', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3310, 198, N'Leiria', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3311, 198, N'Lisboa', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3312, 198, N'Portalegre', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3313, 198, N'Porto', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3314, 198, N'Santarem', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3315, 198, N'Setubal', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3316, 198, N'Viana do Castelo', N'VC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3317, 198, N'Vila Real', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3318, 198, N'Viseu', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3319, 198, N'Azores', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3320, 191, N'Central', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3321, 191, N'Gulf', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3322, 191, N'Milne Bay', N'MB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3323, 191, N'Northern', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3324, 191, N'Southern Highlands', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3325, 191, N'Western', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3326, 191, N'Bougainville', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3327, 191, N'Chimbu', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3328, 191, N'Eastern Highlands', N'EH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3329, 191, N'East New Britain', N'EN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3330, 191, N'East Sepik', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3331, 191, N'Madang', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3332, 191, N'Manus', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3333, 191, N'Morobe', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3334, 191, N'New Ireland', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3335, 191, N'Western Highlands', N'WH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3336, 191, N'West New Britain', N'WN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3337, 191, N'Sandaun', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3338, 191, N'Enga', N'EG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3339, 191, N'National Capital', N'NC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3340, 103, N'Bafata', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3341, 103, N'Quinara', N'QU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3342, 103, N'Oio', N'OI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3343, 103, N'Bolama', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3344, 103, N'Cacheu', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3345, 103, N'Tombali', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3346, 103, N'Gabu', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3347, 103, N'Bissau', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3348, 103, N'Biombo', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3349, 200, N'Ad Dawhah', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3350, 200, N'Al Ghuwayriyah', N'GH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3351, 200, N'Al Jumayliyah', N'JU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3352, 200, N'Al Khawr', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3353, 200, N'Al Wakrah', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3354, 200, N'Ar Rayyan', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3355, 200, N'Jarayan al Batinah', N'JB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3356, 200, N'Madinat ash Shamal', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3357, 200, N'Umm Salal', N'US')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3358, 202, N'Alba', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3359, 202, N'Arad', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3360, 202, N'Arges', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3361, 202, N'Bacau', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3362, 202, N'Bihor', N'BH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3363, 202, N'Bistrita-Nasaud', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3364, 202, N'Botosani', N'BT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3365, 202, N'Braila', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3366, 202, N'Brasov', N'BV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3367, 202, N'Bucuresti', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3368, 202, N'Buzau', N'BZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3369, 202, N'Caras-Severin', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3370, 202, N'Cluj', N'CJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3371, 202, N'Constanta', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3372, 202, N'Covasna', N'CV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3373, 202, N'Dambovita', N'DB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3374, 202, N'Dolj', N'DJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3375, 202, N'Galati', N'GL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3376, 202, N'Gorj', N'GJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3377, 202, N'Harghita', N'HR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3378, 202, N'Hunedoara', N'HD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3379, 202, N'Ialomita', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3380, 202, N'Iasi', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3381, 202, N'Maramures', N'MM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3382, 202, N'Mehedinti', N'MH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3383, 202, N'Mures', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3384, 202, N'Neamt', N'NT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3385, 202, N'Olt', N'OT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3386, 202, N'Prahova', N'PH')
GO
print 'Processed 2400 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3387, 202, N'Salaj', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3388, 202, N'Satu Mare', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3389, 202, N'Sibiu', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3390, 202, N'Suceava', N'SV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3391, 202, N'Teleorman', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3392, 202, N'Timis', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3393, 202, N'Tulcea', N'TL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3394, 202, N'Vaslui', N'VS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3395, 202, N'Valcea', N'VL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3396, 202, N'Vrancea', N'VN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3397, 202, N'Calarasi', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3398, 202, N'Giurgiu', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3399, 195, N'Abra', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3400, 195, N'Agusan del Norte', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3401, 195, N'Agusan del Sur', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3402, 195, N'Aklan', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3403, 195, N'Albay', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3404, 195, N'Antique', N'AQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3405, 195, N'Bataan', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3406, 195, N'Batanes', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3407, 195, N'Batangas', N'BT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3408, 195, N'Benguet', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3409, 195, N'Bohol', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3410, 195, N'Bukidnon', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3411, 195, N'Bulacan', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3412, 195, N'Cagayan', N'CG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3413, 195, N'Camarines Norte', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3414, 195, N'Camarines Sur', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3415, 195, N'Camiguin', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3416, 195, N'Capiz', N'CP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3417, 195, N'Catanduanes', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3418, 195, N'Cavite', N'CV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3419, 195, N'Cebu', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3420, 195, N'Basilan', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3421, 195, N'Eastern Samar', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3422, 195, N'Davao del Norte', N'DV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3423, 195, N'Davao del Sur', N'DS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3424, 195, N'Davao Oriental', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3425, 195, N'Ifugao', N'IF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3426, 195, N'Ilocos Norte', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3427, 195, N'Ilocos Sur', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3428, 195, N'Iloilo', N'II')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3429, 195, N'Isabela', N'IB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3430, 195, N'Kalinga-Apayao', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3431, 195, N'Laguna', N'LG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3432, 195, N'Lanao del Norte', N'LN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3433, 195, N'Lanao del Sur', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3434, 195, N'La Union', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3435, 195, N'Leyte', N'LY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3436, 195, N'Marinduque', N'MQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3437, 195, N'Masbate', N'MB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3438, 195, N'Mindoro Occidental', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3439, 195, N'Mindoro Oriental', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3440, 195, N'Misamis Occidental', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3441, 195, N'Misamis Oriental', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3442, 195, N'Mountain', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3443, 195, N'RP45', N'RP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3444, 195, N'Negros Oriental', N'NR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3445, 195, N'Nueva Ecija', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3446, 195, N'Nueva Vizcaya', N'NV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3447, 195, N'Palawan', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3448, 195, N'Pampanga', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3449, 195, N'Pangasinan', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3450, 195, N'Rizal', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3451, 195, N'Romblon', N'RM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3452, 195, N'Samar', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3453, 195, N'Maguindanao', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3454, 195, N'North Cotabato', N'NC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3455, 195, N'Sorsogon', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3456, 195, N'Southern Leyte', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3457, 195, N'Sulu', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3458, 195, N'Surigao del Norte', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3459, 195, N'Surigao del Sur', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3460, 195, N'Tarlac', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3461, 195, N'Zambales', N'ZM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3462, 195, N'Zamboanga del Norte', N'ZN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3463, 195, N'Zamboanga del Sur', N'ZS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3464, 195, N'Northern Samar', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3465, 195, N'Quirino', N'QR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3466, 195, N'Siquijor', N'SQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3467, 195, N'South Cotabato', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3468, 195, N'Sultan Kudarat', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3469, 195, N'Tawi-Tawi', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3470, 195, N'Angeles', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3471, 195, N'Bacolod', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3472, 195, N'Bago', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3473, 195, N'Baguio', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3474, 195, N'Bais', N'BD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3475, 195, N'Basilan City', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3476, 195, N'Batangas City', N'BY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3477, 195, N'Butuan', N'BV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3478, 195, N'Cabanatuan', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3479, 195, N'Cadiz', N'CI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3480, 195, N'Cagayan de Oro', N'CD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3481, 195, N'Calbayog', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3482, 195, N'Caloocan', N'CF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3483, 195, N'Canlaon', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3484, 195, N'Cavite City', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3485, 195, N'Cebu City', N'CU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3486, 195, N'Cotabato', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3487, 195, N'Dagupan', N'DA')
GO
print 'Processed 2500 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3488, 195, N'Danao', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3489, 195, N'Dapitane', N'DP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3490, 195, N'Davao City', N'DC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3491, 195, N'Dipolog', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3492, 195, N'Dumaguete', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3493, 195, N'General Santos', N'GS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3494, 195, N'Gingoog', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3495, 195, N'Iligan', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3496, 195, N'Iloilo City', N'IC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3497, 195, N'Iriga', N'IR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3498, 195, N'La Carlota', N'LC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3499, 195, N'Laoag', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3500, 195, N'LapuLapu', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3501, 195, N'Legaspi', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3502, 195, N'Lipa', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3503, 195, N'Lucena', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3504, 195, N'Mandaue', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3505, 195, N'Manila', N'MM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3506, 195, N'Marawi', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3507, 195, N'Naga', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3508, 195, N'Olongapo', N'OL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3509, 195, N'Ormoc', N'OM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3510, 195, N'Oroquieta', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3511, 195, N'Ozamis', N'OZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3512, 195, N'Pagadiane', N'PG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3513, 195, N'Palayan', N'PY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3514, 195, N'Pasay', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3515, 195, N'Puerto Princesa', N'PP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3516, 195, N'Quezon City', N'QC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3517, 195, N'Roxas', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3518, 195, N'Negros Occidental San Carlos', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3519, 195, N'Pangasinan San Carlos', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3520, 195, N'San Jose', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3521, 195, N'San Pablo', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3522, 195, N'Silay', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3523, 195, N'Surigao', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3524, 195, N'Tacloban', N'TC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3525, 195, N'Tagaytay', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3526, 195, N'Tagbilaran', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3527, 195, N'Tangub', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3528, 195, N'Toledo', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3529, 195, N'Trece Martires', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3530, 195, N'Zamboanga', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3531, 195, N'Aurora', N'AU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3532, 195, N'Quezon', N'QZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3533, 195, N'Negros Occidental', N'ND')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3534, 203, N'Adygeya', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3535, 203, N'Aginskiy Buryatskiy Avtonomnyy Okrug', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3536, 203, N'Altay', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3537, 203, N'Altayskiy Kray', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3538, 203, N'Amurskaya Oblast''', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3539, 203, N'Arkhangel''skaya Oblast''', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3540, 203, N'Astrakhanskaya Oblast''', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3541, 203, N'Bashkortostan', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3542, 203, N'Belgorodskaya Oblast''', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3543, 203, N'Bryanskaya Oblast''', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3544, 203, N'Buryatiya', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3545, 203, N'Chechnya', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3546, 203, N'Chelyabinskaya Oblast''', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3547, 203, N'Chitinskaya Oblast''', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3548, 203, N'Chukotskiy Avtonomnyy Okrug', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3549, 203, N'Chuvashiya', N'CV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3550, 203, N'Evenkiyskiy Avtonomnyy Okrug', N'EN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3551, 203, N'Ingushetiya', N'IN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3552, 203, N'Irkutskaya Oblast''', N'IR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3553, 203, N'Ivanovskaya Oblast''', N'IV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3554, 203, N'Kabardino-Balkariya', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3555, 203, N'Kaliningradskaya Oblast''', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3556, 203, N'Kalmykiya', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3557, 203, N'Kaluzhskaya Oblast''', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3558, 203, N'Kamchatskaya Oblast''', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3559, 203, N'Karachayevo-Cherkesiya', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3560, 203, N'Kareliya', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3561, 203, N'Kemerovskaya Oblast''', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3562, 203, N'Khabarovskiy Kray', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3563, 203, N'Khakasiya', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3564, 203, N'Khanty-Mansiyskiy Avtonomnyy Okrug', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3565, 203, N'Kirovskaya Oblast''', N'KV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3566, 203, N'Komi-Permyatskiy Avtonomnyy Okrug', N'KP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3567, 203, N'Koryakskiy Avtonomnyy Okrug', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3568, 203, N'Kostromskaya Oblast''', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3569, 203, N'Krasnodarskiy Kray', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3570, 203, N'Krasnoyarskiy Kray', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3571, 203, N'Kurganskaya Oblast''', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3572, 203, N'Kurskaya Oblast''', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3573, 203, N'Leningradskaya Oblast''', N'LN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3574, 203, N'Lipetskaya Oblast''', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3575, 203, N'Magadanskaya Oblast''', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3576, 203, N'Mordoviya', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3577, 203, N'Moskovskaya Oblast''', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3578, 203, N'Moskva', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3579, 203, N'Murmanskaya Oblast''', N'MM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3580, 203, N'Nenetskiy Avtonomnyy Okrug', N'NN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3581, 203, N'Nizhegorodskaya Oblast''', N'NZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3582, 203, N'Novgorodskaya Oblast''', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3583, 203, N'Novosibirskaya Oblast''', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3584, 203, N'Omskaya Oblast''', N'OM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3585, 203, N'Orenburgskaya Oblast''', N'OB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3586, 203, N'Orlovskaya Oblast''', N'OL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3587, 203, N'Penzenskaya Oblast''', N'PZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3588, 203, N'Permskaya Oblast''', N'PM')
GO
print 'Processed 2600 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3589, 203, N'Primorskiy Kray', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3590, 203, N'Pskovskaya Oblast''', N'PS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3591, 203, N'Rostovskaya Oblast''', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3592, 203, N'Ryazanskaya Oblast''', N'RZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3593, 203, N'Sakha (Yakutiya)', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3594, 203, N'Sakhalinskaya Oblast''', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3595, 203, N'Samarskaya Oblast''', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3596, 203, N'Sankt-Peterburg', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3597, 203, N'Saratovskaya Oblast''', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3598, 203, N'Severnaya Osetiya-Alaniya', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3599, 203, N'Smolenskaya Oblast''', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3600, 203, N'Stavropol''skiy Kray', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3601, 203, N'Sverdlovskaya Oblast''', N'SV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3602, 203, N'Tambovskaya Oblast''', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3603, 203, N'Taymyrskiy Dolgano-Nenetskiy Avtonomnyy Okrug', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3604, 203, N'Tomskaya Oblast''', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3605, 203, N'Tul''skaya Oblast''', N'TL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3606, 203, N'Tverskaya Oblast''', N'TV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3607, 203, N'Tyumenskaya Oblast''', N'TY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3608, 203, N'Udmurtiya', N'UD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3609, 203, N'Ul''yanovskaya Oblast''', N'UL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3610, 203, N'Ust''-Ordynskiy Buryatskiy Avtonomnyy Okrug', N'UB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3611, 203, N'Vladimirskaya Oblast''', N'VL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3612, 203, N'Volgogradskaya Oblast''', N'VG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3613, 203, N'Vologodskaya oblast''', N'VO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3614, 203, N'Voronezhskaya Oblast''', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3615, 203, N'Yamalo-Nenetskiy Avtonomnyy Okrug', N'YN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3616, 203, N'Yaroslavskaya Oblast''', N'YS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3617, 203, N'Yevreyskaya Avtonomnyy Oblast''', N'YV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3619, 204, N'Butare', N'BT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3620, 204, N'Byumba', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3621, 204, N'Cyangugu', N'CY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3622, 204, N'Gikongoro', N'GK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3623, 204, N'Gisenyi', N'GS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3624, 204, N'Gitarama', N'GT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3625, 204, N'Kibungo', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3626, 204, N'Kibuye', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3627, 204, N'Kigali-Rural', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3628, 204, N'Ruhengeri', N'RU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3629, 213, N'Al Bahah', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3630, 213, N'Al Madinah', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3631, 213, N'Ash Sharqiyah', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3632, 213, N'Al Qasim', N'QS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3633, 213, N'Ar Riyad', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3634, 213, N'''Asir', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3635, 213, N'Ha''il', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3636, 213, N'Makkah', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3637, 213, N'Al Hudud ash Shamaliyah', N'HS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3638, 213, N'Najran', N'NJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3639, 213, N'Jizan', N'JZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3640, 213, N'Tabuk', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3641, 213, N'Al Jawf', N'JF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3643, 206, N'Christ Church Nicholatown', N'CC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3644, 206, N'Saint Anne Sandy Point', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3645, 206, N'Saint George Basseterre', N'GB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3646, 206, N'Saint George Gingerland', N'GG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3647, 206, N'Saint James Windward', N'JW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3648, 206, N'Saint John Capesterre', N'JC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3649, 206, N'Saint John Figtree', N'JF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3650, 206, N'Saint Mary Cayon', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3651, 206, N'Saint Paul Capesterre', N'PP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3652, 206, N'Saint Paul Charlestown', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3653, 206, N'Saint Peter Basseterre', N'PB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3654, 206, N'Saint Thomas Lowland', N'TL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3655, 206, N'Saint Thomas Middle Island', N'TM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3656, 206, N'Trinity Palmetto Point', N'TP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3657, 217, N'Anse aux Pins', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3658, 217, N'Anse Boileau', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3659, 217, N'Anse Etoile', N'ET')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3660, 217, N'Anse Louis', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3661, 217, N'Anse Royale', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3662, 217, N'Baie Lazare', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3663, 217, N'Baie Sainte Anne', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3664, 217, N'Beau Vallon', N'BV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3665, 217, N'Bel Air', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3666, 217, N'Bel Ombre', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3667, 217, N'Cascade', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3668, 217, N'Glacis', N'GL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3669, 217, N'Grand'' Anse', N'GP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3670, 217, N'La Digue', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3671, 217, N'La Riviere Anglaise', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3672, 217, N'Mont Buxton', N'MB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3673, 217, N'Mont Fleuri', N'MF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3674, 217, N'Plaisance', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3675, 217, N'Pointe La Rue', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3676, 217, N'Port Glaud', N'PG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3677, 217, N'Saint Louis', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3678, 217, N'Takamaka', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3680, 224, N'KwaZulu-Natal', N'NL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3681, 224, N'Free State', N'FS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3683, 224, N'Eastern Cape', N'EC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3684, 224, N'Gauteng', N'GT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3685, 224, N'Mpumalanga', N'MP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3686, 224, N'Northern Cape', N'NC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3687, 224, N'Northern Province', N'NP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3688, 224, N'North-West', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3689, 224, N'Western Cape', N'WC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3690, 214, N'Dakar', N'DK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3691, 214, N'Diourbel', N'DB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3692, 214, N'Saint-Louis', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3693, 214, N'Tambacounda', N'TC')
GO
print 'Processed 2700 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3694, 214, N'Thies', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3695, 214, N'Louga', N'LG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3696, 214, N'Fatick', N'FK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3697, 214, N'Kaolack', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3698, 214, N'Kolda', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3699, 214, N'Ziguinchor', N'ZG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3700, 205, N'Ascension', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3701, 205, N'Saint Helena', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3702, 205, N'Tristan da Cunha', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3703, 221, N'Ajdovscina', N'AJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3704, 221, N'Beltinci', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3705, 221, N'Bled', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3706, 221, N'Bohinj', N'BH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3707, 221, N'Borovnica', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3708, 221, N'Bovec', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3709, 221, N'Brda', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3710, 221, N'Brezice', N'BZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3711, 221, N'Brezovica', N'BV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3712, 221, N'Cankova-Tisina', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3713, 221, N'Celje', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3714, 221, N'Cerklje Na Gorenjskem', N'CG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3715, 221, N'Cerknica', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3716, 221, N'Cerkno', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3717, 221, N'Crensovci', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3718, 221, N'Crna na Koroskem', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3719, 221, N'Crnomelj', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3720, 221, N'Destrnik-Trnovska Vas', N'DV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3721, 221, N'Divaca', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3722, 221, N'Dobrepolje', N'DB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3723, 221, N'Dobrova-Horjul-Polhov Gradec', N'DG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3724, 221, N'Dol pri Ljubljani', N'DP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3725, 221, N'Domzale', N'DM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3726, 221, N'Dornava', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3727, 221, N'Dravograd', N'DR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3728, 221, N'Duplek', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3729, 221, N'Gorenja Vas-Poljane', N'GV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3730, 221, N'Gorisnica', N'GO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3731, 221, N'Gornja Radgona', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3732, 221, N'Gornji Grad', N'GG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3733, 221, N'Gornji Petrovci', N'GP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3734, 221, N'Grosuplje', N'GS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3735, 221, N'HodosSalovci', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3736, 221, N'Hrastnik', N'HR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3737, 221, N'Hrpelje-Kozina', N'HK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3738, 221, N'Idrija', N'ID')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3739, 221, N'Ig', N'IG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3740, 221, N'Ilirska Bistrica', N'IB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3741, 221, N'Ivancna Gorica', N'IV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3742, 221, N'Izola', N'IZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3743, 221, N'Jesenice', N'JE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3744, 221, N'Jursinci', N'JU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3745, 221, N'Kamnik', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3746, 221, N'Kanal', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3747, 221, N'Kidricevo', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3748, 221, N'Kobarid', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3749, 221, N'Kobilje', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3750, 221, N'Kocevje', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3751, 221, N'Komen', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3752, 221, N'Koper', N'KP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3753, 221, N'Kozje', N'KJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3754, 221, N'Kranj', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3755, 221, N'Kranjska Gora', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3756, 221, N'Krsko', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3757, 221, N'Kungota', N'KZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3758, 221, N'Kuzma', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3759, 221, N'Lasko', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3760, 221, N'Lenart', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3761, 221, N'Lendava', N'LN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3762, 221, N'Litija', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3763, 221, N'Ljubljana', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3764, 221, N'Ljubno', N'LC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3765, 221, N'Ljutomer', N'LJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3766, 221, N'Logatec', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3767, 221, N'Loska Dolina', N'LD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3768, 221, N'Loski Potok', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3769, 221, N'Luce', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3770, 221, N'Lukovica', N'LK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3771, 221, N'Majsperk', N'MJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3772, 221, N'Maribor', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3773, 221, N'Medvode', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3774, 221, N'Menges', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3775, 221, N'Metlika', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3776, 221, N'Mezica', N'MZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3777, 221, N'Miren-Kostanjevica', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3778, 221, N'Mislinja', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3779, 221, N'Moravce', N'MV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3780, 221, N'Moravske Toplice', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3781, 221, N'Mozirje', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3782, 221, N'Murska Sobota', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3783, 221, N'Muta', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3784, 221, N'Naklo', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3785, 221, N'Nazarje', N'NZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3786, 221, N'Nova Gorica', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3787, 221, N'Novo Mesto', N'NM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3788, 221, N'Odranci', N'OD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3789, 221, N'Ormoz', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3790, 221, N'Osilnica', N'OS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3791, 221, N'Pesnica', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3792, 221, N'Piran', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3793, 221, N'Pivka', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3794, 221, N'Podcetrtek', N'PD')
GO
print 'Processed 2800 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3795, 221, N'Podvelka-Ribnica', N'PV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3796, 221, N'Postojna', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3797, 221, N'Preddvor', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3798, 221, N'Ptuj', N'PT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3799, 221, N'Puconci', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3800, 221, N'Race-Fram', N'RF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3801, 221, N'Radece', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3802, 221, N'Radenci', N'RD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3803, 221, N'Radlje ob Dravi', N'RL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3804, 221, N'Radovljica', N'RV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3805, 221, N'Ravne-Prevalje', N'RN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3806, 221, N'Ribnica', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3807, 221, N'Rogasevci', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3808, 221, N'Rogaska Slatina', N'RS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3809, 221, N'Rogatec', N'RT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3810, 221, N'Ruse', N'RU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3811, 221, N'Semic', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3812, 221, N'Sencur', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3813, 221, N'Sentilj', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3814, 221, N'Sentjernej', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3815, 221, N'Sentjur pri Celju', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3816, 221, N'Sevnica', N'SV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3817, 221, N'Sezana', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3818, 221, N'Skocjan', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3819, 221, N'Skofja Loka', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3820, 221, N'Skofljica', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3821, 221, N'Slovenj Gradec', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3822, 221, N'Slovenska Bistrica', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3823, 221, N'Slovenske Konjice', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3824, 221, N'Smarje pri Jelsah', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3825, 221, N'Smartno ob Paki', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3826, 221, N'Sostanj', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3827, 221, N'Starse', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3828, 221, N'Store', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3829, 221, N'Sveti Jurij', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3830, 221, N'Tolmin', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3831, 221, N'Trbovlje', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3832, 221, N'Trebnje', N'TE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3833, 221, N'Trzic', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3834, 221, N'Turnisce', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3835, 221, N'Velenje', N'VE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3836, 221, N'Velike Lasce', N'VL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3837, 221, N'Videm', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3838, 221, N'Vipava', N'VP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3839, 221, N'Vitanje', N'VT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3840, 221, N'Vodice', N'VO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3841, 221, N'Vojnik', N'VJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3842, 221, N'Vrhnika', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3843, 221, N'Vuzenica', N'VU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3844, 221, N'Zagorje ob Savi', N'ZO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3845, 221, N'Zalec', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3846, 221, N'Zavrc', N'ZV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3847, 221, N'Zelezniki', N'ZE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3848, 221, N'Ziri', N'ZI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3849, 221, N'Zrece', N'ZR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3850, 218, N'Eastern', N'EA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3851, 218, N'Northern', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3852, 218, N'Southern', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3853, 218, N'Western Area', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3854, 211, N'Acquaviva', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3855, 211, N'Chiesanuova', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3856, 211, N'Domagnano', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3857, 211, N'Faetano', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3858, 211, N'Fiorentino', N'FI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3859, 211, N'Borgo Maaggiore', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3860, 211, N'San Marino', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3861, 211, N'Monte Giardino', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3862, 211, N'Serravalle', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3863, 223, N'Bakool', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3864, 223, N'Banaadir', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3865, 223, N'Bari', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3866, 223, N'Bay', N'BY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3867, 223, N'Galguduud', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3868, 223, N'Gedo', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3869, 223, N'Hiiraan', N'HI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3870, 223, N'Jubbada Dhexe', N'JD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3871, 223, N'Jubbada Hoose', N'JH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3872, 223, N'Mudug', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3873, 223, N'Nugaal', N'NU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3874, 223, N'Sanaag', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3875, 223, N'Shabeellaha Dhexe', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3876, 223, N'Shabeellaha Hoose', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3877, 223, N'Togdheer', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3878, 223, N'Woqooyi Galbeed', N'WO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3886, 226, N'Islas Baleares', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3906, 226, N'La Rioja', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3908, 226, N'Madrid', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3910, 226, N'Murcia', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3911, 226, N'Navarra', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3913, 226, N'Asturias', N'AS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3918, 226, N'Cantabria', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3930, 226, N'Andalucia', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3931, 226, N'Aragon', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3932, 226, N'Canarias', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3933, 226, N'Castilla-La Mancha', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3934, 226, N'Castilla y Leon', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3935, 226, N'Catalua', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3936, 226, N'Extremadura', N'EX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3937, 226, N'Galicia', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3938, 226, N'Pais Vasco', N'PV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3939, 226, N'Valenciana', N'VC')
GO
print 'Processed 2900 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3941, 271, N'Vojvodina', N'VO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3942, 207, N'Anse-la-Raye', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3943, 207, N'Dauphin', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3944, 207, N'Castries', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3945, 207, N'Choiseul', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3946, 207, N'Dennery', N'DE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3947, 207, N'Gros-Islet', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3948, 207, N'Laborie', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3949, 207, N'Micoud', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3950, 207, N'Soufriere', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3951, 207, N'Vieux-Fort', N'VF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3952, 207, N'Praslin', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3953, 229, N'A''ali an Nil', N'UN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3956, 229, N'Al Khartum', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3957, 229, N'Ash Shamaliyah', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3962, 229, N'Al Babr al Ahmar', N'RS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3963, 229, N'Al Buhayrat', N'EB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3964, 229, N'Al Jazirah', N'GZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3965, 229, N'Al Qadarif', N'GD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3966, 229, N'Al Wahdah', N'WH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3967, 229, N'An Nil al Abyad', N'WN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3968, 229, N'An Nil al Azraq', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3969, 229, N'Bahr al Jabal', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3970, 229, N'Gharb al Istiwa''iyah', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3971, 229, N'Gharb Bahr al Ghazal', N'WB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3972, 229, N'Gharb Darfur', N'WD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3973, 229, N'Gharb Kurdufan', N'WK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3974, 229, N'Janub Darfur', N'JD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3975, 229, N'Janub Kurdufan', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3976, 229, N'Junqali', N'JG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3977, 229, N'Kassala', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3978, 229, N'Nahr an Nil', N'RN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3979, 229, N'Shamal Bahr al Ghazal', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3980, 229, N'Shamal Darfur', N'ND')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3981, 229, N'Shamal Kurdufan', N'NK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3982, 229, N'Sharq al Istiwa''iyah', N'EE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3983, 229, N'Sinnar', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3984, 229, N'Warab', N'WR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3986, 233, N'Blekinge Lan', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3987, 233, N'Gavleborgs Lan', N'GV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3989, 233, N'Gotlands Lan', N'GT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3990, 233, N'Hallands Lan', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3991, 233, N'Jamtlands Lan', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3992, 233, N'Jonkopings Lan', N'JO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3993, 233, N'Kalmar Lan', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3994, 233, N'Dalarnas Lan', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3996, 233, N'Kronobergs Lan', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3998, 233, N'Norrbottens Lan', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (3999, 233, N'Orebro Lan', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4000, 233, N'Ostergotlands Lan', N'OG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4002, 233, N'Sodermanlands Lan', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4003, 233, N'Uppsala Lan', N'UP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4004, 233, N'Varmlands Lan', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4005, 233, N'Vasterbottens Lan', N'VB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4006, 233, N'Vasternorrlands Lan', N'VN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4007, 233, N'Vastmanlands Lan', N'VM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4008, 233, N'Stockholms Lan', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4009, 233, N'Skane Lan', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4010, 233, N'Vastra Gotaland', N'VG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4011, 235, N'Al Hasakah', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4012, 235, N'Al Ladhiqiyah', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4013, 235, N'Al Qunaytirah', N'QU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4014, 235, N'Ar Raqqah', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4015, 235, N'As Suwayda''', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4016, 235, N'Dar''a', N'DR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4017, 235, N'Dayr az Zawr', N'DY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4018, 235, N'Rif Dimashq', N'RD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4019, 235, N'Halab', N'HL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4020, 235, N'Hamah', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4021, 235, N'Hims', N'HI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4022, 235, N'Idlib', N'ID')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4023, 235, N'Dimashq', N'DI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4024, 235, N'Tartus', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4025, 234, N'Aargau', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4026, 234, N'Ausser-Rhoden', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4027, 234, N'Basel-Landschaft', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4028, 234, N'Basel-Stadt', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4029, 234, N'Bern', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4030, 234, N'Fribourg', N'FR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4031, 234, N'Geneve', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4032, 234, N'Glarus', N'GL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4033, 234, N'Graubunden', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4034, 234, N'Inner-Rhoden', N'AI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4035, 234, N'Luzern', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4036, 234, N'Neuchatel', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4037, 234, N'Nidwalden', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4038, 234, N'Obwalden', N'OW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4039, 234, N'Sankt Gallen', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4040, 234, N'Schaffhausen', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4041, 234, N'Schwyz', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4042, 234, N'Solothurn', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4043, 234, N'Thurgau', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4044, 234, N'Ticino', N'TI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4045, 234, N'Uri', N'UR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4046, 234, N'Valais', N'VS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4047, 234, N'Vaud', N'VD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4048, 234, N'Zug', N'ZG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4049, 234, N'Zurich', N'ZH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4050, 234, N'Jura', N'JU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4051, 243, N'Arima', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4052, 243, N'Caroni', N'CA')
GO
print 'Processed 3000 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4053, 243, N'Mayaro', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4054, 243, N'Nariva', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4055, 243, N'Port-of-Spain', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4056, 243, N'Saint Andrew', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4057, 243, N'Saint David', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4058, 243, N'Saint George', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4059, 243, N'Saint Patrick', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4060, 243, N'San Fernando', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4061, 243, N'Tobago', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4062, 243, N'Victoria', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4063, 239, N'Mae Hong Son', N'MH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4064, 239, N'Chiang Mai', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4065, 239, N'Chiang Rai', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4066, 239, N'Nan', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4067, 239, N'Lamphun', N'LN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4068, 239, N'Lampang', N'LG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4069, 239, N'Phrae', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4070, 239, N'Tak', N'TK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4071, 239, N'Sukhothai', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4072, 239, N'Uttaradit', N'UD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4073, 239, N'Kamphaeng Phet', N'KP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4074, 239, N'Phitsanulok', N'PS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4075, 239, N'Phichit', N'PC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4076, 239, N'Phetchabun', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4077, 239, N'Uthai Thani', N'UT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4078, 239, N'Nakhon Sawan', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4079, 239, N'Nong Khai', N'NK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4080, 239, N'Loei', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4081, 239, N'Udon Thani', N'UN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4082, 239, N'Sakon Nakhon', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4083, 239, N'Nakhon Phanom', N'NF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4084, 239, N'Khon Kaen', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4085, 239, N'Kalasin', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4086, 239, N'Maha Sarakham', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4087, 239, N'Roi Et', N'RE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4088, 239, N'Chaiyaphum', N'CY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4089, 239, N'Nakhon Ratchasima', N'NR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4090, 239, N'Buriram', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4091, 239, N'Surin', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4092, 239, N'Sisaket', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4093, 239, N'Narathiwat', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4094, 239, N'Chai Nat', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4095, 239, N'Sing Buri', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4096, 239, N'Lop Buri', N'LB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4097, 239, N'Ang Thong', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4098, 239, N'Phra Nakhon Si Ayutthaya', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4099, 239, N'Sara Buri', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4100, 239, N'Nonthaburi', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4101, 239, N'Pathum Thani', N'PT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4102, 239, N'Krung Thep Mahanakhon', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4103, 239, N'Phayao', N'PY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4104, 239, N'Samut Prakan', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4105, 239, N'Nakhon Nayok', N'NN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4106, 239, N'Chachoengsao', N'CC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4107, 239, N'Prachin Buri', N'PB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4108, 239, N'Chon Buri', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4109, 239, N'Rayong', N'RY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4110, 239, N'Chanthaburi', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4111, 239, N'Trat', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4112, 239, N'Kanchanaburi', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4113, 239, N'Suphan Buri', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4114, 239, N'Ratchaburi', N'RT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4115, 239, N'Nakhon Pathom', N'NP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4116, 239, N'Samut Songkhram', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4117, 239, N'Samut Sakhon', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4118, 239, N'Phetchaburi', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4119, 239, N'Prachuap Khiri Khan', N'PK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4120, 239, N'Chumphon', N'CP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4121, 239, N'Ranong', N'RN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4122, 239, N'Surat Thani', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4123, 239, N'Phangnga', N'PG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4124, 239, N'Phuket', N'PU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4125, 239, N'Krabi', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4126, 239, N'Nakon Si Thammarat', N'NT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4127, 239, N'Trang', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4128, 239, N'Phatthalung', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4129, 239, N'Satun', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4130, 239, N'Songkhla', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4131, 239, N'Pattani', N'PI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4132, 239, N'Yala', N'YL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4134, 239, N'Yasothon', N'YS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4135, 239, N'Ubon Ratchanthani', N'UR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4136, 239, N'Amnat Charoen', N'AC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4137, 239, N'Mukdahan', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4138, 239, N'Nong Bua Lamphu', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4139, 239, N'Sa Kaeo', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4140, 237, N'Kuhistoni Badakhshon', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4141, 237, N'Khatlon', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4142, 237, N'Leninobod', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4143, 242, N'Ha''apai', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4144, 242, N'Tongatapu', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4145, 242, N'Vava''u', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4167, 212, N'Principe', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4168, 212, N'Sao Tome', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4169, 245, N'Al Qasrayn', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4170, 245, N'Al Qayrawan', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4171, 245, N'Jundubah', N'JE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4172, 245, N'Al Kaf', N'KF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4173, 245, N'Al Mahdiyah', N'MH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4174, 245, N'Al Munastir', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4175, 245, N'Bajah', N'BJ')
GO
print 'Processed 3100 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4176, 245, N'Banzart', N'BZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4177, 245, N'Nabul', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4178, 245, N'Silyanah', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4179, 245, N'Susah', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4180, 245, N'Aryanah', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4181, 245, N'Bin ''Arus', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4182, 245, N'Madanin', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4183, 245, N'Qabis', N'GB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4184, 245, N'Qafsah', N'QA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4185, 245, N'Qibili', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4186, 245, N'Safaqi', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4187, 245, N'Sidi Bu Zayd', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4188, 245, N'Tatawin', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4189, 245, N'Tawzar', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4190, 245, N'Tunis', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4191, 245, N'Zaghwan', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4192, 246, N'Adana', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4193, 246, N'Adiyaman', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4194, 246, N'Afyon', N'AF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4195, 246, N'Agri', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4196, 246, N'Amasya', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4198, 246, N'Antalya', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4199, 246, N'Artvin', N'AV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4200, 246, N'Aydin', N'AY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4201, 246, N'Balikesir', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4202, 246, N'Bilecik', N'BC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4203, 246, N'Bingol', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4204, 246, N'Bitlis', N'BT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4205, 246, N'Bolu', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4206, 246, N'Burdur', N'BD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4207, 246, N'Bursa', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4208, 246, N'Canakkale', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4209, 246, N'Cankiri', N'CI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4210, 246, N'Corum', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4211, 246, N'Denizli', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4212, 246, N'Diyarbakir', N'DY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4213, 246, N'Edirne', N'ED')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4214, 246, N'Elazig', N'EG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4215, 246, N'Erzincan', N'EN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4216, 246, N'Erzurum', N'EM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4217, 246, N'Eskisehir', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4218, 246, N'Gaziantep', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4219, 246, N'Giresun', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4222, 246, N'Hatay', N'HT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4223, 246, N'Icel', N'IC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4224, 246, N'Isparta', N'IP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4225, 246, N'Istanbul', N'IB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4226, 246, N'Izmir', N'IZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4227, 246, N'Kars', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4228, 246, N'Kastamonu', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4229, 246, N'Kayseri', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4230, 246, N'Kirklareli', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4231, 246, N'Kirsehir', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4232, 246, N'Kocaeli', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4234, 246, N'Kutahya', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4235, 246, N'Malatya', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4236, 246, N'Manisa', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4237, 246, N'Kahramanmaras', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4239, 246, N'Mugla', N'MG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4240, 246, N'Mus', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4241, 246, N'Nevsehir', N'NV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4243, 246, N'Ordu', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4244, 246, N'Rize', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4245, 246, N'Sakarya', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4246, 246, N'Samsun', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4248, 246, N'Sinop', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4249, 246, N'Sivas', N'SV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4250, 246, N'Tekirdag', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4251, 246, N'Tokat', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4252, 246, N'Trabzon', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4253, 246, N'Tunceli', N'TC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4254, 246, N'Sanliurfa', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4255, 246, N'Usak', N'US')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4256, 246, N'Van', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4257, 246, N'Yozgat', N'YZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4258, 246, N'Zonguldak', N'ZO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4259, 246, N'Ankara', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4260, 246, N'Gumushane', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4261, 246, N'Hakkari', N'HK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4262, 246, N'Konya', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4263, 246, N'Mardin', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4264, 246, N'Nigde', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4265, 246, N'Siirt', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4266, 246, N'Aksaray', N'AK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4267, 246, N'Batman', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4268, 246, N'Bayburt', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4269, 246, N'Karaman', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4270, 246, N'Kirikkale', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4271, 246, N'Sirnak', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4272, 236, N'Fu-chien', N'FK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4273, 236, N'Kao-hsiung', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4274, 236, N'T''ai-pei', N'TP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4275, 236, N'T''ai-wan', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4276, 238, N'Arusha', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4277, 238, N'Dar es Salaam', N'DS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4278, 238, N'Dodoma', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4279, 238, N'Iringa', N'IR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4280, 238, N'Kigoma', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4281, 238, N'Kilimanjaro', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4282, 238, N'Lindi', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4283, 238, N'Mara', N'MA')
GO
print 'Processed 3200 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4284, 238, N'Mbeya', N'MB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4285, 238, N'Morogoro', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4286, 238, N'Mtwara', N'MT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4287, 238, N'Mwanza', N'MW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4288, 238, N'Pemba North', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4289, 238, N'Ruvuma', N'RV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4290, 238, N'Shinyanga', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4291, 238, N'Singida', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4292, 238, N'Tabora', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4293, 238, N'Tanga', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4294, 238, N'Kagera', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4295, 238, N'Pemba South', N'PS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4296, 238, N'Zanzibar Central//South', N'ZS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4297, 238, N'Zanzibar North', N'ZN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4298, 238, N'Rukwa', N'RK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4299, 238, N'Zanzibar Urban//West', N'ZW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4300, 250, N'Apac', N'AP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4301, 250, N'Arua', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4302, 250, N'Bundibogyo', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4303, 250, N'Bushenyi', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4304, 250, N'Gulu', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4305, 250, N'Hoima', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4306, 250, N'Iganga', N'IG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4307, 250, N'Jinja', N'JI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4308, 250, N'Kabale', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4309, 250, N'Kabarole', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4310, 250, N'Kalangala', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4311, 250, N'Kampala', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4312, 250, N'Kamuli', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4313, 250, N'Kapchorwa', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4314, 250, N'Kasese', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4315, 250, N'Kibale', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4316, 250, N'Kiboga', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4317, 250, N'Kisoro', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4318, 250, N'Kitgum', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4319, 250, N'Kotido', N'KO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4320, 250, N'Kumi', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4321, 250, N'Lira', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4322, 250, N'Luwero', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4323, 250, N'Masaka', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4324, 250, N'Masindi', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4325, 250, N'Mbale', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4326, 250, N'Mbarara', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4327, 250, N'Moroto', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4328, 250, N'Moyo', N'MY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4329, 250, N'Mpigi', N'MP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4330, 250, N'Mubende', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4331, 250, N'Mukono', N'MK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4332, 250, N'Nebbi', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4333, 250, N'Ntungamo', N'NT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4334, 250, N'Pallisa', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4335, 250, N'Rakai', N'RA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4336, 250, N'Rukungiri', N'RU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4337, 250, N'Soroti', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4338, 250, N'Tororo', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4431, 251, N'Cherkas''ka Oblast''', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4432, 251, N'Chernihivs''ka Oblast''', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4433, 251, N'Chernivets''ka Oblast''', N'CV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4434, 251, N'Dnipropetrovs''ka Oblast''', N'DP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4435, 251, N'Donets''ka Oblast''', N'DT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4436, 251, N'Ivano-Frankivs''ka Oblast''', N'IF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4437, 251, N'Kharkivs''ka Oblast''', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4438, 251, N'Khersons''ka Oblast''', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4439, 251, N'Khmel''nyts''ka Oblast''', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4440, 251, N'Kirovohrads''ka Oblast''', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4441, 251, N'Avtonomna Respublika Krym', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4442, 251, N'Misto Kyyiv', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4443, 251, N'Kyyivs''ka Oblast''', N'KV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4444, 251, N'Luhans''ka Oblast''', N'LH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4445, 251, N'L''vivs''ka Oblast''', N'LV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4446, 251, N'Mykolayivs''ka Oblast''', N'MY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4447, 251, N'Odes''ka Oblast', N'OD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4448, 251, N'Poltavs''ka Oblast''', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4449, 251, N'Rivnens''ka Oblast''', N'RV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4450, 251, N'Misto Sevastopol', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4451, 251, N'Sums''ka Oblast''', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4452, 251, N'Ternopil''s''ka Oblast''', N'TP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4453, 251, N'Vinnyts''ka Oblast''', N'VI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4454, 251, N'Volyns''ka Oblast''', N'VO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4455, 251, N'Zakarpats''ka Oblast''', N'ZK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4456, 251, N'Zaporiz''ka Oblast''', N'ZP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4457, 251, N'Zhytomyrs''ka Oblast''', N'ZT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4458, 38, N'Bam', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4459, 38, N'Bazega', N'BZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4460, 38, N'Bougouriba', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4461, 38, N'Boulgou', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4462, 38, N'Boulkiemde', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4463, 38, N'Ganzourgou', N'GZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4464, 38, N'Gnagna', N'GG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4465, 38, N'Gourma', N'GM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4466, 38, N'Houe', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4467, 38, N'Kadiogo', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4468, 38, N'Kenedougou', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4469, 38, N'Komoe', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4470, 38, N'Kossi', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4471, 38, N'Kouritenga', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4472, 38, N'Mouhoun', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4473, 38, N'Namentenga', N'NM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4474, 38, N'Naouri', N'NR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4475, 38, N'Oubritenga', N'OB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4476, 38, N'Oudalan', N'OD')
GO
print 'Processed 3300 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4477, 38, N'Passore', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4478, 38, N'Poni', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4479, 38, N'Sanguie', N'SG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4480, 38, N'Sanmatenga', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4481, 38, N'Seno', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4482, 38, N'Sissili', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4483, 38, N'Soum', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4484, 38, N'Sourou', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4485, 38, N'Tapoa', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4486, 38, N'Yatenga', N'YT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4487, 38, N'Zoundweogo', N'ZW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4488, 256, N'Artigas', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4489, 256, N'Canelones', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4490, 256, N'Cerro Largo', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4491, 256, N'Colonia', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4492, 256, N'Durazno', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4493, 256, N'Flores', N'FS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4494, 256, N'Florida', N'FD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4495, 256, N'Lavalleja', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4496, 256, N'Maldonado', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4497, 256, N'Montevideo', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4498, 256, N'Paysandu', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4499, 256, N'Rio Negro', N'RN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4500, 256, N'Rivera', N'RV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4501, 256, N'Rocha', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4502, 256, N'Salto', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4503, 256, N'San Jose', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4504, 256, N'Soriano', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4505, 256, N'Tacuarembo', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4506, 256, N'Treinta y Tres', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4507, 257, N'Andijon', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4508, 257, N'Bukhoro', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4509, 257, N'Farghona', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4510, 257, N'Jizzakh', N'JI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4511, 257, N'Khorazm', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4512, 257, N'Namangan', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4513, 257, N'Nawoiy', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4514, 257, N'Qashqadaryo', N'QA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4515, 257, N'Qoraqalpoghiston', N'QR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4516, 257, N'Samarqand', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4517, 257, N'Sirdaryo', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4518, 257, N'Surkhondaryo', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4519, 257, N'Toshkent', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4520, 209, N'Charlotte', N'CH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4521, 209, N'Saint Andrew', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4522, 209, N'Saint David', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4523, 209, N'Saint George', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4524, 209, N'Saint Patrick', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4525, 209, N'Grenadines', N'GT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4526, 259, N'Amazonas', N'AM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4527, 259, N'Anzoategui', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4528, 259, N'Apure', N'AP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4529, 259, N'Aragua', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4530, 259, N'Barinas', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4531, 259, N'Bolivar', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4532, 259, N'Carabobo', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4533, 259, N'Cojedes', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4534, 259, N'Delta Amacuro', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4535, 259, N'Distrito Federal', N'DF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4536, 259, N'Falcon', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4537, 259, N'Guarico', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4538, 259, N'Lara', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4539, 259, N'Merida', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4540, 259, N'Miranda', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4541, 259, N'Monagas', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4542, 259, N'Nueva Esparta', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4543, 259, N'Portuguesa', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4544, 259, N'Sucre', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4545, 259, N'Tachira', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4546, 259, N'Trujillo', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4547, 259, N'Yaracuy', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4548, 259, N'Zulia', N'ZU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4549, 259, N'Dependencias Federales', N'DP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4551, 260, N'An Giang', N'AG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4553, 260, N'Ben Tre', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4555, 260, N'Cao Bang', N'CB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4557, 260, N'Dak Lak', N'DL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4558, 260, N'Dong Thap', N'DT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4562, 260, N'Hai Phong', N'HP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4564, 260, N'Ha Noi', N'HN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4568, 260, N'Ho Chi Minh', N'HC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4569, 260, N'Kien Giang', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4570, 260, N'Lai Chau', N'LC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4571, 260, N'Lam Dong', N'LD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4572, 260, N'Long An', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4578, 260, N'Quang Ninh', N'QN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4580, 260, N'Son La', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4581, 260, N'Tay Ninh', N'TN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4582, 260, N'Thanh Hoa', N'TH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4583, 260, N'Thai Binh', N'TB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4585, 260, N'Tien Giang', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4587, 260, N'Lang Son', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4590, 260, N'Dong Nai', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4591, 260, N'Ba Ria-Vung Tau', N'BV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4592, 260, N'Binh Dinh', N'BD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4593, 260, N'Binh Thuan', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4594, 260, N'Can Tho', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4595, 260, N'Gia Lai', N'GL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4596, 260, N'Ha Giang', N'HG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4597, 260, N'Ha Tay', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4598, 260, N'Ha Tinh', N'HT')
GO
print 'Processed 3400 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4599, 260, N'Hoa Binh', N'HO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4600, 260, N'Khanh Hoa', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4601, 260, N'Kon Tum', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4602, 260, N'Lao Cai', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4604, 260, N'Nghe An', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4605, 260, N'Ninh Binh', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4606, 260, N'Ninh Thuan', N'NT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4607, 260, N'Phu Yen', N'PY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4608, 260, N'Quang Binh', N'QB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4609, 260, N'Quang Ngai', N'QG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4610, 260, N'Quang Tri', N'QT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4611, 260, N'Soc Trang', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4612, 260, N'Thura Thien-Hue', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4613, 260, N'Tra Vinh', N'TV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4614, 260, N'Tuyen Quang', N'TQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4615, 260, N'Vinh Long', N'VL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4616, 260, N'Yen Bai', N'YB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4617, 260, N'Bac Giang', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4618, 260, N'Bac Kan', N'BK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4619, 260, N'Bac Lieu', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4620, 260, N'Bac Ninh', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4621, 260, N'Bin Duong', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4622, 260, N'Bin Phuoc', N'BP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4623, 260, N'Ca Mau', N'CM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4624, 260, N'Da Nang', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4625, 260, N'Hai Duong', N'HD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4626, 260, N'Ha Nam', N'HM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4627, 260, N'Hung Yen', N'HY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4628, 260, N'Nam Dinh', N'ND')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4629, 260, N'Phu Tho', N'PT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4630, 260, N'Quang Nam', N'QM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4631, 260, N'Thai Nguyen', N'TY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4632, 260, N'Vinh Phuc', N'VC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4635, 171, N'Khomas', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4636, 171, N'Caprivi', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4637, 171, N'Erongo', N'ER')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4638, 171, N'Hardap', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4639, 171, N'Karas', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4640, 171, N'Kunene', N'KU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4641, 171, N'Ohangwena', N'OW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4642, 171, N'Okavango', N'OK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4643, 171, N'Omaheke', N'OH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4644, 171, N'Omusati', N'OS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4645, 171, N'Oshana', N'ON')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4646, 171, N'Oshikoto', N'OT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4647, 171, N'Otjozondjupa', N'OD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4648, 210, N'A''ana', N'AA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4649, 210, N'Aiga-i-le-Tai', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4650, 210, N'Atua', N'AT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4651, 210, N'Fa''asaleleaga', N'FA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4652, 210, N'Gaga''emauga', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4653, 210, N'Va''a-o-Fonoti', N'VF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4654, 210, N'Gagaifomauga', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4655, 210, N'Palauli', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4656, 210, N'Satupa''itea', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4657, 210, N'Tuamasaga', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4658, 210, N'Vaisigano', N'VS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4659, 232, N'Hhohho', N'HH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4660, 232, N'Lubombo', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4661, 232, N'Manzini', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4662, 232, N'Shiselweni', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4663, 270, N'Abyan', N'AB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4664, 270, N'''Adan', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4665, 270, N'Al Mahrah', N'MR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4666, 270, N'Hadramawt', N'HD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4667, 270, N'Shabwah', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4668, 270, N'Lahij', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4669, 270, N'Al Bayda''', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4670, 270, N'Al Hudaydah', N'HU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4671, 270, N'Al Jawf', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4672, 270, N'Al Mahwit', N'MW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4673, 270, N'Dhamar', N'DH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4674, 270, N'Hajjah', N'HJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4675, 270, N'Ibb', N'IB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4676, 270, N'Ma''rib', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4677, 270, N'Sa''dah', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4678, 270, N'San''a''', N'SN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4679, 270, N'Ta''izz', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4680, 273, N'North-Western', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4681, 273, N'Copperbelt', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4682, 273, N'Western', N'EA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4683, 273, N'Southern', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4684, 273, N'Central', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4685, 273, N'Eastern', N'NW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4686, 273, N'Northern', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4687, 273, N'Luapula', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4688, 273, N'Lusaka', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4689, 274, N'Manicaland', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4690, 274, N'Midlands', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4691, 274, N'Mashonaland Central', N'MC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4692, 274, N'Mashonaland East', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4693, 274, N'Mashonaland West', N'MW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4694, 274, N'Matabeleland North', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4695, 274, N'Matabeleland South', N'MS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4696, 274, N'Masvingo', N'MV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4706, 178, N'Auckland', N'AU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4721, 178, N'Wellington', N'WG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4723, 178, N'Canterbury', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4729, 178, N'Bay of Plenty', N'BP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4741, 178, N'Northland', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4744, 178, N'Otago', N'OT')
GO
print 'Processed 3500 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4761, 8, N'Enderby Land', N'EL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4763, 8, N'Ross Island', N'RI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4814, 178, N'Chatham Islands', N'CI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4879, 81, N'Etela-Suomen Laani', N'ES')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4975, 156, N'Nouakchott', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4996, 43, N'Nunavut', N'NU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4997, 252, N'United Arab Emigrates (general)', N'UA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4998, 252, N'Abu Zaby', N'AZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (4999, 252, N'''Ajman', N'AJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5002, 252, N'Dubayy', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5003, 252, N'Al Fujayrah', N'FU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5004, 252, N'Ra''s al Khaymah', N'RK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5005, 252, N'Ash Shariqah', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5006, 252, N'Umm al Qaywayn', N'UQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5007, 178, N'Gisborne', N'GI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5010, 178, N'Nelson', N'NE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5018, 178, N'Tasman', N'TS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5019, 178, N'Wanganui-Manawatu', N'MW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5020, 178, N'West Coast', N'WC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5022, 81, N'Ita-Suomen Laani', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5023, 81, N'Lansi-Suomen Laani', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5024, 271, N'Yugoslavia', N'YU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5025, 61, N'Bjelovarsko-Bilogorska', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5026, 61, N'Brodsko-Posavka', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5027, 61, N'Dubrovacko-Neretvanska', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5028, 61, N'Istarska', N'IS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5029, 61, N'Karlovacka', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5030, 61, N'Koprivnicko-Krizevacka', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5031, 61, N'Krapinsko-Zagorska', N'KZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5032, 61, N'Licko-Senjska', N'LS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5033, 61, N'Medimurska', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5034, 61, N'Osjecko-Baranjska', N'OB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5035, 61, N'Pozesko-Slavonska', N'PS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5036, 61, N'Primorsko-Goranska', N'PG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5037, 61, N'Sibensko-Kninska', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5038, 61, N'Sisacko-Moslavacka', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5039, 61, N'Splitsko-Dalmatinska', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5040, 61, N'Varazdinska', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5041, 61, N'Viroviticko-Podravska', N'VP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5042, 61, N'Vukovarsko-Srijemska', N'VS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5043, 61, N'Zadarska', N'ZD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5044, 61, N'Zagrebacka', N'ZG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5045, 61, N'Grad Zagreb', N'GZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5047, 176, N'Curacao', N'CU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5048, 176, N'Bonaire', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5049, 176, N'St Maarten', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5051, 24, N'Brussels', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5052, 5, N'Escaldes-Engordany', N'EE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5053, 247, N'Ahal', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5054, 247, N'Balkan', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5055, 247, N'Dashhowuz', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5056, 247, N'Lebap', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5057, 247, N'Mary', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5058, 41, N'Pailin', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5059, 70, N'Orellana', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5060, 114, N'Maluku Utara', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5061, 259, N'Vargas', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5062, 271, N'Crna Gora (Montenegro)', N'CG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5063, 271, N'Srbija (Serbia)', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5064, 55, N'Maniema', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5065, 55, N'Nord-Kivu', N'NK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5066, 55, N'Sud-Kivu', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5067, 126, N'Ajlun', N'AJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5068, 126, N'Al Aqabah', N'AQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5069, 126, N'Jarash', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5070, 126, N'Madaba', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5071, 258, N'Malampa', N'ML')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5072, 258, N'Penama', N'PM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5073, 258, N'Shefa', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5074, 181, N'Bayelsa', N'BY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5075, 181, N'Ebonyi', N'EB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5079, 181, N'Ekiti', N'EK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5080, 181, N'Gombe', N'GO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5081, 181, N'Nassarawa', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5082, 181, N'Zamfara', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5083, 163, N'Lapusna', N'LP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5084, 163, N'Tighina', N'TG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5085, 37, N'Blagoevgrad', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5086, 37, N'Dobrich', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5087, 37, N'Gabrovo ', N'GB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5088, 37, N'Kurdzhali', N'KZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5089, 37, N'Kyustendil', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5090, 37, N'Pazardzhik', N'PZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5091, 37, N'Pernik', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5092, 37, N'Pleven', N'PV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5093, 37, N'Ruse', N'RS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5094, 37, N'Shumen', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5095, 37, N'Silistra', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5096, 37, N'Sliven', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5097, 37, N'Smolyan', N'SM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5098, 37, N'Stara Zagora', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5099, 37, N'Turgovishte', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5100, 37, N'Veliko Turnovo', N'VT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5101, 37, N'Vidin', N'VD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5102, 37, N'Vratsa', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5103, 37, N'Yambol', N'YA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5104, 115, N'Golestan', N'GO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5105, 115, N'Qazvin', N'QZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5106, 115, N'Qom', N'QM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5107, 246, N'Ardahan', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5108, 246, N'Bartin', N'BR')
GO
print 'Processed 3600 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5109, 246, N'Igdir', N'IG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5110, 246, N'Karabuk', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5111, 246, N'Kilis', N'KI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5112, 246, N'Osmaniye', N'OS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5113, 246, N'Yalova', N'YL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5114, 18, N'Ar Rifa'' wa al Mintaqah al Janubiyah', N'RF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5115, 30, N'Republika Srpska', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5116, 30, N'Federation of Bosnia and Herzegovina', N'BF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5118, 135, N'Batken', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5119, 132, N'P''yongan-bukto', N'PB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5120, 203, N'Tyva', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5122, 64, N'Jihomoravsky Kraj', N'JM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5123, 64, N'Jihocesky Kraj', N'JC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5124, 64, N'Vysocina', N'VY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5125, 64, N'Karlovarsky Kraj', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5126, 64, N'Kralovehradecky Kraj', N'KR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5127, 64, N'Liberecky Kraj', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5128, 64, N'Olomoucky Kraj', N'OL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5129, 64, N'Moravskoslezsky Kraj', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5130, 64, N'Pardubicky Kraj', N'PA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5131, 64, N'Plzensky Kraj', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5132, 64, N'Stredocesky Kraj', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5133, 64, N'Ustecky Kraj', N'US')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5134, 64, N'Zlinsky Kraj', N'ZL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5135, 146, N'Aracinovo', N'AR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5136, 146, N'Bac', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5137, 146, N'Belcista', N'BE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5138, 146, N'Berovo', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5139, 146, N'Bistrica', N'BI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5140, 146, N'Bitola', N'BO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5141, 146, N'Blatec', N'BL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5142, 146, N'Bogdanci', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5143, 146, N'Bogomila', N'BM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5144, 146, N'Bogovinje', N'BJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5145, 146, N'Bosilovo', N'BS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5146, 146, N'Brvenica', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5147, 146, N'Cair', N'CR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5148, 146, N'Capari', N'CP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5149, 146, N'Caska', N'CK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5150, 146, N'Cegrane', N'CG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5151, 146, N'Centar', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5152, 146, N'Centar Zupa', N'CZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5153, 146, N'Cesinovo', N'CN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5154, 146, N'Cucer-Sandevo', N'CS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5155, 146, N'Debar', N'DB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5156, 146, N'Delcevo', N'DL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5157, 146, N'Delogozdi', N'DG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5158, 146, N'Demir Hisar', N'DX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5159, 146, N'Demir Kapija', N'DK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5160, 146, N'Dobrusevo', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5161, 146, N'Dolna Banjica', N'DJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5162, 146, N'Dolneni', N'DN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5163, 146, N'Dorce Petrov', N'GP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5164, 146, N'Drugovo', N'DR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5165, 146, N'Dzepciste', N'DZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5166, 146, N'Gazi Baba', N'GB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5167, 146, N'Gevgelija', N'GE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5168, 146, N'Gostivar', N'GO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5169, 146, N'Gradsko', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5170, 146, N'Ilinden', N'IL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5171, 146, N'Izvor', N'IZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5172, 146, N'Jegunovce', N'JE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5173, 146, N'Kamenjane', N'KJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5174, 146, N'Karbinci', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5175, 146, N'Karpos', N'KX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5176, 146, N'Kavadarci', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5177, 146, N'Kicevo', N'KH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5178, 146, N'Kisela Voda', N'KV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5179, 146, N'Klecevce', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5180, 146, N'Kocani', N'KC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5181, 146, N'Konce', N'KN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5182, 146, N'Kondovo', N'KW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5183, 146, N'Konopiste', N'KF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5184, 146, N'Kosel', N'KE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5185, 146, N'Kartovo', N'KY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5186, 146, N'Kriva Palanka', N'KZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5187, 146, N'Krivogastani', N'KG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5188, 146, N'Krusevo', N'KS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5189, 146, N'Kuklis', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5190, 146, N'Kukurecani', N'KQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5191, 146, N'Kumanovo', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5192, 146, N'Labunista', N'LA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5193, 146, N'Lipkovo', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5194, 146, N'Lozovo', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5195, 146, N'Lukovo', N'LU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5196, 146, N'Makedonska Kamenica', N'MM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5197, 146, N'Makedonski Brod', N'MB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5198, 146, N'Mavrovi Anovi', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5199, 146, N'Meseista', N'ME')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5200, 146, N'Miravci', N'MI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5201, 146, N'Mogila', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5202, 146, N'Murtino', N'MU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5203, 146, N'Negotino', N'NG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5204, 146, N'Negotino-Polosko', N'NP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5205, 146, N'Novaci', N'NO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5206, 146, N'Novo Selo', N'NS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5207, 146, N'Oblesevo', N'OB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5208, 146, N'Ohrid', N'OX')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5209, 146, N'Orasac', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5210, 146, N'Orizari', N'OZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5211, 146, N'Oslomej', N'OS')
GO
print 'Processed 3700 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5212, 146, N'Pehcevo', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5213, 146, N'Petrovec', N'PE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5214, 146, N'Plasnica', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5215, 146, N'Podares', N'PO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5216, 146, N'Prilep', N'PR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5217, 146, N'Probistip', N'PB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5218, 146, N'Radovis', N'RD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5219, 146, N'Rankovce', N'RN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5220, 146, N'Resen', N'RE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5221, 146, N'Rosoman', N'RM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5222, 146, N'Rostusa', N'RT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5223, 146, N'Samokov', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5224, 146, N'Saraj', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5225, 146, N'Sipkovica', N'SI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5226, 146, N'Sopiste', N'SS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5227, 146, N'Sopotnica', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5228, 146, N'Srbinovo', N'SB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5229, 146, N'Staravina', N'SV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5230, 146, N'Star Dojran', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5231, 146, N'Star Nagoricane', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5232, 146, N'Stip', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5233, 146, N'Struga', N'SQ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5234, 146, N'Strumica', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5235, 146, N'Studenicani', N'SU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5236, 146, N'Suto Orizari', N'SO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5237, 146, N'Sveti Nikole', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5238, 146, N'Tearce', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5239, 146, N'Tetovo', N'TT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5240, 146, N'Topolcani', N'TO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5241, 146, N'Valandovo', N'VA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5242, 146, N'Vasilevo', N'VL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5243, 146, N'Veles', N'VE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5244, 146, N'Velesta', N'VS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5245, 146, N'Vevcani', N'VV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5246, 146, N'Vinica', N'VN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5247, 146, N'Vitoliste', N'VT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5248, 146, N'Vranestica', N'VC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5249, 146, N'Vrapciste', N'VP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5250, 146, N'Vratnica', N'VR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5251, 146, N'Vrutok', N'VK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5252, 146, N'Zajas', N'ZA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5253, 146, N'Zelenikovo', N'ZK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5254, 146, N'Zelino', N'ZE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5255, 146, N'Zitose', N'ZI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5256, 146, N'Zletovo', N'ZL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5257, 146, N'Zrnovci', N'ZR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5258, 271, N'Kosovo', N'KM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5259, 113, N'Uttaranchal', N'UL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5267, 113, N'Chhattisgarh', N'CT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5268, 113, N'Jharkhand', N'JH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5269, 40, N'Mwaro', N'MW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5270, 274, N'Bulawayo', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5271, 274, N'Harare', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5272, 60, N'Adiake', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5273, 60, N'Alepe', N'AL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5274, 60, N'Bocanda', N'BN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5275, 60, N'Dabou', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5276, 60, N'Grand-Bassam', N'GR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5277, 60, N'Jacqueville', N'JA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5278, 60, N'Toulepleu', N'TP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5279, 102, N'Mandiana', N'MD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5280, 102, N'Lola', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5281, 102, N'Lelouma', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5282, 102, N'Koubia', N'KB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5283, 102, N'Coyah', N'CO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5284, 114, N'Gorontalo', N'GO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5285, 114, N'Kepulauan Bangka Belitung', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5286, 114, N'Banten', N'BT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5287, 133, N'Ulsan-gwangyoksi', N'UL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5289, 250, N'Sembabule', N'SE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5290, 250, N'Nakasongola', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5291, 250, N'Katakwi', N'KW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5292, 250, N'Busia', N'BU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5293, 250, N'Bugiri', N'BG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5294, 250, N'Adjumani', N'AD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5295, 138, N'Nabatiye', N'NA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5296, 1, N'Khost', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5297, 1, N'Nuristan', N'NR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5298, 16, N'Sarur', N'SR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5299, 16, N'Sahbuz', N'SH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5300, 16, N'Sadarak', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5301, 16, N'Ordubud', N'OR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5302, 16, N'Babak', N'BB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5303, 20, N'Barisal', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5304, 20, N'Sylhet', N'SY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5305, 24, N'Brabant Wallon', N'BW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5306, 24, N'Vlaams-Brabant', N'VB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5308, 27, N'Hamilton', N'HA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5309, 4, N'Eastern Tutuila', N'ET')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5310, 4, N'Unorganized', N'UU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5311, 4, N'Western Tutuila', N'WT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5312, 4, N'Manu''a', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5313, 30, N'Brcko District', N'BR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5314, 28, N'Tashi Yangtse', N'TY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5315, 28, N'Gasa', N'GA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5316, 26, N'Plateau', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5317, 26, N'Littoral', N'LI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5318, 26, N'Donga', N'DO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5319, 26, N'Couffo', N'CF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5320, 26, N'Collines', N'CL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5321, 26, N'Alibori', N'AL')
GO
print 'Processed 3800 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5322, 90, N'Guria', N'GU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5323, 90, N'Imereti', N'IM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5324, 90, N'Kakheti', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5325, 90, N'Kvemo Kartli', N'KK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5327, 90, N'Mtskheta-Mtianeti', N'MM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5328, 90, N'Racha-Lochkhumi-Kvemo Svaneti', N'RL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5329, 90, N'Samegrelo-Zemo Svateni', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5330, 90, N'Samtskhe-Javakheti', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5331, 90, N'Shida Kartli', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5332, 165, N'Govi-Sumber', N'GS')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5333, 165, N'Darhan Uul', N'DA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5334, 132, N'Najin Sonbong-si', N'NJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5335, 74, N'Anseba', N'AN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5336, 74, N'Semenawi Keyih Bahri', N'SK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5337, 74, N'Maekel', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5338, 74, N'Gash Barka', N'GB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5339, 74, N'Debubawi Keyih Bahri', N'DK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5340, 74, N'Debub', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5341, 44, N'Mosteiros', N'MO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5342, 44, N'Porto Novo', N'PN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5343, 44, N'Santa Cruz', N'SZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5344, 44, N'So Domingos', N'SD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5345, 44, N'So Filipe', N'SF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5346, 38, N'Bal', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5347, 38, N'Banwa', N'BW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5348, 38, N'Ioba', N'IO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5349, 38, N'Komondjari', N'KJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5350, 38, N'Kompienga', N'KP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5351, 38, N'Koulplogo', N'KL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5352, 38, N'Kourwogo', N'KW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5353, 38, N'Lraba', N'LE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5354, 38, N'Loroum', N'LO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5355, 38, N'Nayala', N'NY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5356, 38, N'Noumbiel', N'NB')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5357, 38, N'Tui', N'TU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5358, 38, N'Yagha', N'YG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5359, 38, N'Ziro', N'ZR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5360, 38, N'Zondoma', N'ZM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5361, 97, N'Carriacou', N'CA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5362, 140, N'River Gee', N'RG')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5363, 140, N'Gbarpolu', N'GP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5364, 238, N'Pwani', N'PW')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5365, 246, N'Dzce', N'DU')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5366, 245, N'Manouba', N'MN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5367, 151, N'Kidal', N'KD')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5368, 184, N'Rota', N'RO')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5369, 184, N'Saipan', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5370, 184, N'Tinian', N'TA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5371, 204, N'Kigali-Ville', N'KV')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5372, 204, N'Umutara', N'UM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5373, 155, N'Trinit', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5374, 155, N'Saint-Pierre', N'SP')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5375, 155, N'Marin', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5376, 155, N'Fort-de-France', N'FF')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5377, 163, N'Taraclia', N'TR')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5378, 148, N'Phalombe', N'PH')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5379, 148, N'Likoma', N'LK')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5380, 148, N'Balaka', N'BA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5381, 149, N'Putrajaya', N'PJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5382, 84, N'Saint-Laurent-du-Maroni', N'SL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5383, 84, N'Cayenne', N'CY')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5384, 261, N'Saint Thomas', N'ST')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5385, 261, N'Saint John', N'SJ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5386, 261, N'Saint Croix', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5387, 275, N'West Bank', N'WE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5388, 275, N'Gaza', N'GZ')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5389, 253, N'Wales', N'WA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5390, 253, N'Scotland', N'SC')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5391, 253, N'Northern Ireland', N'NI')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5392, 253, N'England', N'EN')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5393, 240, N'Centre', N'CE')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5394, 240, N'Kara', N'KA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5395, 240, N'Maritime', N'MA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5396, 240, N'Plateaux', N'PL')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5397, 240, N'Savanes', N'SA')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5398, 181, N'Imo', N'IM')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5399, 181, N'Katsina', N'KT')
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5400, 113, N'Andaman & Nicobar', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5401, 113, N'Andhra Pradesh', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5402, 113, N'Arunachal Pradesh', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5403, 113, N'Assam', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5404, 113, N'Bihar', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5405, 113, N'Chandigarh', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5406, 113, N'Chhattisgarh', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5407, 113, N'Goa', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5408, 113, N'Gujarat', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5409, 113, N'Haryana', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5410, 113, N'Himachal Pradesh', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5411, 113, N'Jammu Kashmir', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5412, 113, N'Jharkhand', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5413, 113, N'Karnataka', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5414, 113, N'Kerala', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5415, 113, N'Madhya Pradesh', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5416, 113, N'Maharashtra', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5417, 113, N'Manipur', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5418, 113, N'Meghalaya', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5419, 113, N'Mizoram', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5420, 113, N'Nagaland', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5421, 113, N'New Delhi', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5422, 113, N'Orissa', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5423, 113, N'Puducherry', NULL)
GO
print 'Processed 3900 total records'
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5424, 113, N'Punjab', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5425, 113, N'Rajasthan', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5426, 113, N'Sikkim', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5427, 113, N'Tamil Nadu', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5428, 113, N'Tripura', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5429, 113, N'Uttar Pradesh', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5430, 113, N'Uttarakhand', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5431, 113, N'West Bengal', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5432, 113, N'Dadra and Nagar Haveli', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5433, 113, N'Daman and Diu', NULL)
INSERT [dbo].[States] ([Id], [CountryId], [Name], [Code]) VALUES (5434, 113, N'Lakshadweep', NULL)
SET IDENTITY_INSERT [dbo].[States] OFF
/****** Object:  Table [dbo].[Religions]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Religions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Religions] ON
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (1, N'Hindu')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (2, N'Muslim')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (3, N'Christian')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (4, N'Unaffiliated')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (5, N'Buddhist ')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (6, N'Folk')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (7, N'Jewish')
INSERT [dbo].[Religions] ([Id], [Name]) VALUES (8, N'Other ')
SET IDENTITY_INSERT [dbo].[Religions] OFF
/****** Object:  Table [dbo].[RegionalOffices]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegionalOffices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZonalOfficeId] [int] NULL,
	[RegionName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[PIN] [nvarchar](7) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Fax] [nvarchar](50) NULL,
	[Website] [nvarchar](100) NULL,
	[Remarks] [nvarchar](300) NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[ClosingDate] [datetime] NULL,
 CONSTRAINT [PK_RegionalOffices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RegionalOffices] ON
INSERT [dbo].[RegionalOffices] ([Id], [ZonalOfficeId], [RegionName], [Address], [Address2], [City], [PIN], [StateId], [CountryId], [Phone], [Mobile], [Email], [Fax], [Website], [Remarks], [CreatedDate], [LastUpdatedDate], [IsActive], [ClosingDate]) VALUES (1, 1, N'Ranchi', N'Lalpur chowk', N'Lalpur bazar', N'Ranchi', NULL, 5412, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[RegionalOffices] ([Id], [ZonalOfficeId], [RegionName], [Address], [Address2], [City], [PIN], [StateId], [CountryId], [Phone], [Mobile], [Email], [Fax], [Website], [Remarks], [CreatedDate], [LastUpdatedDate], [IsActive], [ClosingDate]) VALUES (2, 1, N'Kolkata', N'kolkata', NULL, N'kolkata', NULL, 5431, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[RegionalOffices] ([Id], [ZonalOfficeId], [RegionName], [Address], [Address2], [City], [PIN], [StateId], [CountryId], [Phone], [Mobile], [Email], [Fax], [Website], [Remarks], [CreatedDate], [LastUpdatedDate], [IsActive], [ClosingDate]) VALUES (3, 2, N'Mumbai', N'Mumbai', N'ECorner', N'Mumbai', NULL, 5416, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[RegionalOffices] OFF
/****** Object:  Table [dbo].[Qualifications]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qualifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Qualification] [nvarchar](50) NULL,
 CONSTRAINT [PK_Qualifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Qualifications] ON
INSERT [dbo].[Qualifications] ([Id], [Qualification]) VALUES (1, N'SSC')
INSERT [dbo].[Qualifications] ([Id], [Qualification]) VALUES (2, N'HSC')
INSERT [dbo].[Qualifications] ([Id], [Qualification]) VALUES (3, N'Under Graduate')
INSERT [dbo].[Qualifications] ([Id], [Qualification]) VALUES (4, N'Graduate')
INSERT [dbo].[Qualifications] ([Id], [Qualification]) VALUES (5, N'Post Graduate')
SET IDENTITY_INSERT [dbo].[Qualifications] OFF
/****** Object:  Table [dbo].[Payments]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[VoucherNo] [nvarchar](50) NULL,
	[Date] [datetime] NOT NULL,
	[PaidTo] [nvarchar](100) NULL,
	[PaymentModeId] [int] NULL,
	[ExpenseHeadId] [int] NOT NULL,
	[Amounts] [money] NOT NULL,
	[Narration] [nvarchar](300) NULL,
	[CHQ_NO] [nvarchar](50) NULL,
	[CHQ_DATE] [datetime] NULL,
	[BANK] [nvarchar](100) NULL,
	[Remarks] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PaymentModes]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentModes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PayentModes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PaymentModes] ON
INSERT [dbo].[PaymentModes] ([Id], [Mode]) VALUES (1, N'Cash')
INSERT [dbo].[PaymentModes] ([Id], [Mode]) VALUES (2, N'DD-Cheque')
INSERT [dbo].[PaymentModes] ([Id], [Mode]) VALUES (3, N'Online Transfer')
INSERT [dbo].[PaymentModes] ([Id], [Mode]) VALUES (4, N'Account Deposite')
SET IDENTITY_INSERT [dbo].[PaymentModes] OFF
/****** Object:  Table [dbo].[PaymentHeads]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentHeads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentHead] [nvarchar](70) NULL,
 CONSTRAINT [PK_PaymentHeads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PaymentHeads] ON
INSERT [dbo].[PaymentHeads] ([Id], [PaymentHead]) VALUES (1, N'Addmision Fee')
INSERT [dbo].[PaymentHeads] ([Id], [PaymentHead]) VALUES (2, N'CourseFee')
INSERT [dbo].[PaymentHeads] ([Id], [PaymentHead]) VALUES (3, N'Installment')
INSERT [dbo].[PaymentHeads] ([Id], [PaymentHead]) VALUES (4, N'Book Fee')
INSERT [dbo].[PaymentHeads] ([Id], [PaymentHead]) VALUES (5, N'Id Card Fee')
SET IDENTITY_INSERT [dbo].[PaymentHeads] OFF
/****** Object:  Table [dbo].[Occupations]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occupations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Occupations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Occupations] ON
INSERT [dbo].[Occupations] ([Id], [Name]) VALUES (1, N'Employed')
INSERT [dbo].[Occupations] ([Id], [Name]) VALUES (2, N'Self Employed')
INSERT [dbo].[Occupations] ([Id], [Name]) VALUES (3, N'Unemployed')
INSERT [dbo].[Occupations] ([Id], [Name]) VALUES (4, N'Student')
INSERT [dbo].[Occupations] ([Id], [Name]) VALUES (5, N'Housewife ')
SET IDENTITY_INSERT [dbo].[Occupations] OFF
/****** Object:  Table [dbo].[Nationality]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Nationality] ON
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (1, N'Afghan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (2, N'Albanian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (3, N'Algerian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (4, N'Andorran')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (5, N'Angolan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (6, N'Antiguans, Barbudans')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (7, N'Argentine or Argentinean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (8, N'Armenian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (9, N'Australian or Ozzie or Aussie')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (10, N'Austrian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (11, N'Azerbaijani')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (12, N'Bahamian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (13, N'Bahraini')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (14, N'Bangladeshi')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (15, N'Barbadian or Bajuns')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (16, N'Belarusian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (17, N'Belgian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (18, N'Belizean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (19, N'Beninese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (20, N'Bhutanese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (21, N'Bolivian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (22, N'Bosnian, Herzegovinian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (23, N'Motswana (singular), Batswana (plural)')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (24, N'Brazilian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (25, N'Bruneian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (26, N'Bulgarian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (27, N'Burkinabe')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (28, N'Burundian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (29, N'Cambodian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (30, N'Cameroonian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (31, N'Canadian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (32, N'Cape Verdian or Cape Verdean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (33, N'Central African')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (34, N'Chadian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (35, N'Chilean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (36, N'Chinese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (37, N'Colombian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (38, N'Comoran')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (39, N'Congolese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (40, N'Congolese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (41, N'Costa Rican')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (42, N'Ivorian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (43, N'Croat or Croatian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (44, N'Cuban')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (45, N'Cypriot')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (46, N'Czech')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (47, N'Dane or Danish')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (48, N'Djibouti')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (49, N'Dominican')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (50, N'Dominican')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (51, N'East Timorese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (52, N'Ecuadorean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (53, N'Egyptian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (54, N'Salvadoran')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (55, N'Equatorial Guinean or Equatoguinean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (56, N'Eritrean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (57, N'Estonian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (58, N'Ethiopian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (59, N'Fijian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (60, N'Finn or Finnish')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (61, N'French or Frenchman or Frenchwoman')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (62, N'Gabonese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (63, N'Gambian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (64, N'Georgian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (65, N'German')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (66, N'Ghanaian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (67, N'Greek')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (68, N'Grenadian or Grenadan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (69, N'Guatemalan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (70, N'Guinean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (71, N'Guinea-Bissauan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (72, N'Guyanese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (73, N'Haitian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (74, N'Honduran')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (75, N'Hungarian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (76, N'Icelander')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (77, N'Indian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (78, N'Indonesian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (79, N'Iranian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (80, N'Iraqi')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (81, N'Irishman or Irishwoman or Irish')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (82, N'Israeli')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (83, N'Italian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (84, N'Jamaican')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (85, N'Japanese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (86, N'Jordanian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (87, N'Kazakhstani')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (88, N'Kenyan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (89, N'I-Kiribati')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (90, N'North Korean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (91, N'South Korean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (92, N'Kosovar')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (93, N'Kuwaiti')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (94, N'Kyrgyz or Kirghiz')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (95, N'Lao or Laotian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (96, N'Latvian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (97, N'Lebanese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (98, N'Mosotho (plural Basotho)')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (99, N'Liberian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (100, N'Libyan')
GO
print 'Processed 100 total records'
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (101, N'Liechtensteiner')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (102, N'Lithuanian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (103, N'Luxembourger')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (104, N'Macedonian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (105, N'Malagasy')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (106, N'Malawian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (107, N'Malaysian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (108, N'Maldivan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (109, N'Malian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (110, N'Maltese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (111, N'Marshallese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (112, N'Mauritanian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (113, N'Mauritian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (114, N'Mexican')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (115, N'Micronesian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (116, N'Moldovan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (117, N'Monegasque or Monacan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (118, N'Mongolian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (119, N'Montenegrin')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (120, N'Moroccan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (121, N'Mozambican')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (122, N'Burmese or Myanmarese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (123, N'Namibian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (124, N'Nauruan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (125, N'Nepalese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (126, N'Dutch')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (127, N'New Zealander or Kiwi')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (128, N'Nicaraguan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (129, N'Nigerien')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (130, N'Nigerian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (131, N'Norwegian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (132, N'Omani')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (133, N'Pakistani')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (134, N'Palauan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (135, N'Panamanian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (136, N'Papua New Guinean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (137, N'Paraguayan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (138, N'Peruvian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (139, N'Filipino')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (140, N'Pole or Polish')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (141, N'Portuguese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (142, N'Qatari')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (143, N'Romanian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (144, N'Russian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (145, N'Rwandan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (146, N'Kittian and Nevisian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (147, N'Saint Lucian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (148, N'Samoan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (149, N'Sammarinese or San Marinese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (150, N'Sao Tomean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (151, N'Saudi or Saudi Arabian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (152, N'Senegalese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (153, N'Serbian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (154, N'Seychellois')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (155, N'Sierra Leonean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (156, N'Singaporean')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (157, N'Slovak or Slovakian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (158, N'Slovene or Slovenian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (159, N'Solomon Islander')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (160, N'Somali')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (161, N'South African')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (162, N'Spaniard or Spanish')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (163, N'Sri Lankan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (164, N'Sudanese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (165, N'Surinamer')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (166, N'Swazi')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (167, N'Swede or Swedish')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (168, N'Swiss')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (169, N'Syrian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (170, N'Taiwanese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (171, N'Tajik or Tadzhik')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (172, N'Tanzanian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (173, N'Thai')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (174, N'Togolese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (175, N'Tongan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (176, N'Trinidadian or Tobagonian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (177, N'Tunisian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (178, N'Turk or Turkish')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (179, N'Turkmen(s)')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (180, N'Tuvaluan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (181, N'Ugandan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (182, N'Ukrainian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (183, N'Emirian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (184, N'British')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (185, N'American')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (186, N'Uruguayan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (187, N'Uzbek or Uzbekistani')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (188, N'Ni-Vanuatu')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (189, N'none')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (190, N'Venezuelan')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (191, N'Vietnamese')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (192, N'Yemeni or Yemenite')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (193, N'Zambian')
INSERT [dbo].[Nationality] ([Id], [Name]) VALUES (194, N'Zimbabwean')
SET IDENTITY_INSERT [dbo].[Nationality] OFF
/****** Object:  Table [dbo].[MaritalStatus]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaritalStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaritalStatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MaritalStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MaritalStatus] ON
INSERT [dbo].[MaritalStatus] ([Id], [MaritalStatusName]) VALUES (1, N'Married')
INSERT [dbo].[MaritalStatus] ([Id], [MaritalStatusName]) VALUES (2, N'Single')
INSERT [dbo].[MaritalStatus] ([Id], [MaritalStatusName]) VALUES (3, N'Widowed')
INSERT [dbo].[MaritalStatus] ([Id], [MaritalStatusName]) VALUES (4, N'Seperated')
INSERT [dbo].[MaritalStatus] ([Id], [MaritalStatusName]) VALUES (5, N'Divorced')
INSERT [dbo].[MaritalStatus] ([Id], [MaritalStatusName]) VALUES (6, N'Other')
SET IDENTITY_INSERT [dbo].[MaritalStatus] OFF
/****** Object:  Table [dbo].[LedgerTypes]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LedgerTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](30) NULL,
 CONSTRAINT [PK_LedgerTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LedgerTypes] ON
INSERT [dbo].[LedgerTypes] ([Id], [Type]) VALUES (1, N'Expense')
INSERT [dbo].[LedgerTypes] ([Id], [Type]) VALUES (2, N'Income')
SET IDENTITY_INSERT [dbo].[LedgerTypes] OFF
/****** Object:  Table [dbo].[HowToKnowAboutUs]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HowToKnowAboutUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](100) NULL,
 CONSTRAINT [PK_MediaTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HowToKnowAboutUs] ON
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (1, N'VF Representative')
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (2, N'Seminar')
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (3, N'News Paper')
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (4, N'Hoarding')
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (5, N'Banner')
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (6, N'Leaflet')
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (7, N'Internet')
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (8, N'Word Of Mouth')
INSERT [dbo].[HowToKnowAboutUs] ([Id], [TypeName]) VALUES (9, N'Recommendation')
SET IDENTITY_INSERT [dbo].[HowToKnowAboutUs] OFF
/****** Object:  Table [dbo].[Genders]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Genders] ON
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (1, N'Male')
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (2, N'Female')
INSERT [dbo].[Genders] ([Id], [Gender]) VALUES (3, N'Other')
SET IDENTITY_INSERT [dbo].[Genders] OFF
/****** Object:  Table [dbo].[FeeCollections]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeeCollections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionId] [int] NOT NULL,
	[PaymentHeadId] [int] NOT NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentModeId] [int] NULL,
	[Amount] [money] NULL,
	[Description] [nvarchar](300) NULL,
	[ManualreceiptNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_FeePayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[FamilyIncomeSlots]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamilyIncomeSlots](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IncomeSlot] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonthlyIncomeSlot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FamilyIncomeSlots] ON
INSERT [dbo].[FamilyIncomeSlots] ([Id], [IncomeSlot]) VALUES (1, N'Up to 1500')
INSERT [dbo].[FamilyIncomeSlots] ([Id], [IncomeSlot]) VALUES (2, N'1501 to 2500')
INSERT [dbo].[FamilyIncomeSlots] ([Id], [IncomeSlot]) VALUES (3, N'2501 to 5000')
INSERT [dbo].[FamilyIncomeSlots] ([Id], [IncomeSlot]) VALUES (4, N'5001 to 10000')
INSERT [dbo].[FamilyIncomeSlots] ([Id], [IncomeSlot]) VALUES (5, N'10000 and Above')
SET IDENTITY_INSERT [dbo].[FamilyIncomeSlots] OFF
/****** Object:  Table [dbo].[EXPENSESHEAD]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPENSESHEAD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CODE] [nvarchar](3) NULL,
	[NAME] [nvarchar](30) NULL,
	[LedgerTypeId] [int] NULL,
	[OP_BAL] [float] NULL,
 CONSTRAINT [PK_EXPENSESHEAD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EXPENSESHEAD] ON
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (1, N'101', N'STATIONERY SALE', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (2, N'102', N'FUND RECEIPT', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (3, N'103', N'LOAN RECOVERY', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (4, N'201', N'BANK DEPOSIT BY CASH', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (5, N'202', N'OFFICE MAINTENANCE', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (7, N'205', N'FUND TRANSFER', 0, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (8, N'206', N'BANK CHARGES', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (9, N'207', N'SALARY', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (10, N'208', N'RENT,RATES & TAXES', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (11, N'209', N'SPECIAL INCENTIVE', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (12, N'210', N'IMPREST', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (13, N'211', N'MISCELLANEOUS EXPENSES', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (14, N'212', N'BANK DEPOSITE BY CHEQUE', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (15, N'213', N'PRINTING & STATIONERY', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (17, N'215', N'TRAVELLING & CONVEYANCE', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (18, N'216', N'LOAN PAID', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (19, N'217', N'FIXED ASSET PURCHASE', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (22, N'303', N'SPOT COMMISSION', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (24, N'105', N'COLLECTION', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (26, N'999', N'CASH IN HAND', 0, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (27, N'106', N'ADMISSION FEES', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (28, N'107', N'LATE FINE', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (29, N'108', N'OTHERS RECOVERY', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (30, N'109', N'SALARY RECOVERY', 2, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (32, N'220', N'INCENTIVE MGM', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (33, N'221', N'BUSINESS PROMOTION', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (34, N'222', N'LOCAL CONVEYANCE', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (35, N'223', N'TELEPHONE & TRUNKCLE', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (36, N'224', N'BUILDING MATERIAL CONSTRUCTION', 0, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (37, N'225', N'BOOKS & PERIODICALS', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (38, N'226', N'OFFICE EQUIPMENT', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (39, N'227', N'LABOUR CHARGES', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (40, N'228', N'DONATION & SUBSCRIPTION', 0, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (41, N'229', N'ADVANCE AGAINST SALARY', 0, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (42, N'230', N'ELECTRIC CHARGES', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (43, N'231', N'VECHILE RUNNING EXPENSES', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (44, N'232', N'CAR INSTALLMENT', 0, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (45, N'234', N'REPAIR AND RENEWAL', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (46, N'219', N'PUJA INCENTIVE', 1, 0)
INSERT [dbo].[EXPENSESHEAD] ([Id], [CODE], [NAME], [LedgerTypeId], [OP_BAL]) VALUES (47, N'233', N'POSTAGE & TELEGRAPH', 1, 0)
SET IDENTITY_INSERT [dbo].[EXPENSESHEAD] OFF
/****** Object:  Table [dbo].[Employees]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [nvarchar](50) NOT NULL,
	[BranchId] [int] NULL,
	[RegionId] [int] NULL,
	[ZoneId] [int] NULL,
	[EmployeesRankId] [int] NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[MaritalStatusId] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[QualificationId] [int] NULL,
	[FatherName] [nvarchar](100) NULL,
	[MotherName] [nvarchar](100) NULL,
	[Street] [nvarchar](100) NULL,
	[Street2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[Zip] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[Image] [image] NULL,
	[ImageType] [nvarchar](4) NULL,
	[LeavingDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
	[PassportNo] [nvarchar](50) NULL,
	[PAN] [nvarchar](50) NULL,
	[UIDNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employees_1] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeRanks]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RankName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StaffTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EmployeeRanks] ON
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (1, N'Zonal Manager')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (2, N'Regional Manager')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (3, N'Area Manager')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (4, N'Center Manager')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (5, N'Faculty')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (6, N'Trainees')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (7, N'On Contract Faculty')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (8, N'Account Manager')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (9, N'HR Manager')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (10, N'General Manager')
INSERT [dbo].[EmployeeRanks] ([Id], [RankName]) VALUES (11, N'Stake Holders')
SET IDENTITY_INSERT [dbo].[EmployeeRanks] OFF
/****** Object:  Table [dbo].[EmployeePresentContacts]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePresentContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [nvarchar](50) NOT NULL,
	[BranchIdId] [int] NOT NULL,
	[Street] [nvarchar](100) NULL,
	[Street2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Zip] [nvarchar](50) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](15) NULL,
	[EmergencyNumber] [nvarchar](50) NULL,
	[LastUpdated] [datetime] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_EmployeePresentContacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePermanentContacts]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePermanentContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](100) NULL,
	[Street2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Zip] [nvarchar](50) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](15) NULL,
	[EmergencyNumber] [nvarchar](50) NULL,
	[LastUpdated] [datetime] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_EmployeePermanentContacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [nvarchar](50) NULL,
	[CourseName] [nvarchar](100) NULL,
	[Duration_In_Months] [int] NULL,
	[FastTrackDuration] [decimal](18, 2) NULL,
	[CourseFees] [money] NULL,
	[MinimumDownPayment] [money] NULL,
	[MaximumDiscountAmount] [money] NULL,
	[MaximumNumberOfInstallments] [int] NULL,
	[InstallmentAmount] [money] NULL,
	[TotalInstallmentAmount] [money] NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Countries]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Code] [char](2) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (1, N'Afghanistan', N'AF')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (2, N'Albania', N'AL')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (3, N'Algeria', N'AG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (4, N'American Samoa', N'AQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (5, N'Andorra', N'AN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (6, N'Angola', N'AO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (7, N'Anguilla', N'AV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (8, N'Antarctica', N'AY')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (9, N'Antigua and Barbuda', N'AC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (10, N'Argentina', N'AR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (11, N'Armenia', N'AM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (12, N'Aruba', N'AA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (13, N'Ashmore and Cartier', N'AT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (14, N'Australia', N'AS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (15, N'Austria', N'AU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (16, N'Azerbaijan', N'AJ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (17, N'The Bahamas', N'BF')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (18, N'Bahrain', N'BA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (19, N'Baker Island', N'FQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (20, N'Bangladesh', N'BG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (21, N'Barbados', N'BB')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (22, N'Bassas da India', N'BS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (23, N'Belarus', N'BO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (24, N'Belgium', N'BE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (25, N'Belize', N'BH')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (26, N'Benin', N'BN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (27, N'Bermuda', N'BD')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (28, N'Bhutan', N'BT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (29, N'Bolivia', N'BL')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (30, N'Bosnia and Herzegovina', N'BK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (31, N'Botswana', N'BC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (32, N'Bouvet Island', N'BV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (33, N'Brazil', N'BR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (34, N'British Indian Ocean Territory', N'IO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (35, N'British Virgin Islands', N'VI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (36, N'Brunei Darussalam', N'BX')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (37, N'Bulgaria', N'BU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (38, N'Burkina Faso', N'UV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (39, N'Burma', N'BM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (40, N'Burundi', N'BY')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (41, N'Cambodia', N'CB')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (42, N'Cameroon', N'CM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (43, N'Canada', N'CA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (44, N'Cape Verde', N'CV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (45, N'Cayman Islands', N'CJ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (46, N'Central African Republic', N'CT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (47, N'Chad', N'CD')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (48, N'Chile', N'CI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (49, N'China', N'CH')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (50, N'Christmas Island', N'KT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (51, N'Clipperton Island', N'IP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (52, N'Cocos', N'CK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (53, N'Colombia', N'CO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (54, N'Comoros', N'CN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (55, N'Congo, Democratic Republic of the', N'CG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (56, N'Congo, Republic of the', N'CF')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (57, N'Cook Islands', N'CW')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (58, N'Coral Sea Islands', N'CR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (59, N'Costa Rica', N'CS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (60, N'Cote d''Ivoire', N'IV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (61, N'Croatia', N'HR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (62, N'Cuba', N'CU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (63, N'Cyprus', N'CY')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (64, N'Czech Republic', N'EZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (65, N'Denmark', N'DA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (66, N'Djibouti', N'DJ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (67, N'Dominica', N'DO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (68, N'Dominican Republic', N'DR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (69, N'East Timor', N'TT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (70, N'Ecuador', N'EC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (71, N'Egypt', N'EG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (72, N'El Salvador', N'ES')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (73, N'Equatorial Guinea', N'EK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (74, N'Eritrea', N'ER')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (75, N'Estonia', N'EN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (76, N'Ethiopia', N'ET')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (77, N'Europa Island', N'EU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (78, N'Falkland Islands', N'FK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (79, N'Faroe Islands', N'FO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (80, N'Fiji', N'FJ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (81, N'Finland', N'FI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (82, N'France', N'FR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (83, N'France, Metropolitan', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (84, N'French Guiana', N'FG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (85, N'French Polynesia', N'FP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (86, N'French Southern and Antarctic Lands', N'FS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (87, N'Gabon', N'GB')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (88, N'The Gambia', N'GA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (89, N'Gaza Strip', N'GZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (90, N'Georgia', N'GG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (91, N'Germany', N'GM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (92, N'Ghana', N'GH')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (93, N'Gibraltar', N'GI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (94, N'Glorioso Islands', N'GO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (95, N'Greece', N'GR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (96, N'Greenland', N'GL')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (97, N'Grenada', N'GJ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (98, N'Guadeloupe', N'GP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (99, N'Guam', N'GQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (100, N'Guatemala', N'GT')
GO
print 'Processed 100 total records'
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (101, N'Guernsey', N'GK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (102, N'Guinea', N'GV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (103, N'Guinea-Bissau', N'PU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (104, N'Guyana', N'GY')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (105, N'Haiti', N'HA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (106, N'Heard Island and McDonald Islands', N'HM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (107, N'Holy See (Vatican City)', N'VT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (108, N'Honduras', N'HO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (109, N'Hong Kong (SAR)', N'HK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (110, N'Howland Island', N'HQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (111, N'Hungary', N'HU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (112, N'Iceland', N'IC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (113, N'India', N'IN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (114, N'Indonesia', N'ID')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (115, N'Iran', N'IR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (116, N'Iraq', N'IZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (117, N'Ireland', N'EI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (118, N'Israel', N'IS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (119, N'Italy', N'IT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (120, N'Jamaica', N'JM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (121, N'Jan Mayen', N'JN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (122, N'Japan', N'JA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (123, N'Jarvis Island', N'DQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (124, N'Jersey', N'JE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (125, N'Johnston Atoll', N'JQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (126, N'Jordan', N'JO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (127, N'Juan de Nova Island', N'JU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (128, N'Kazakhstan', N'KZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (129, N'Kenya', N'KE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (130, N'Kingman Reef', N'KQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (131, N'Kiribati', N'KR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (132, N'Korea, North', N'KN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (133, N'Korea, South', N'KS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (134, N'Kuwait', N'KU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (135, N'Kyrgyzstan', N'KG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (136, N'Laos', N'LA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (137, N'Latvia', N'LG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (138, N'Lebanon', N'LE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (139, N'Lesotho', N'LT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (140, N'Liberia', N'LI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (141, N'Libya', N'LY')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (142, N'Liechtenstein', N'LS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (143, N'Lithuania', N'LH')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (144, N'Luxembourg', N'LU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (145, N'Macao', N'MC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (146, N'Macedonia', N'MK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (147, N'Madagascar', N'MA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (148, N'Malawi', N'MI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (149, N'Malaysia', N'MY')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (150, N'Maldives', N'MV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (151, N'Mali', N'ML')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (152, N'Malta', N'MT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (153, N'Man, Isle of', N'IM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (154, N'Marshall Islands', N'RM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (155, N'Martinique', N'MB')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (156, N'Mauritania', N'MR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (157, N'Mauritius', N'MP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (158, N'Mayotte', N'MF')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (159, N'Mexico', N'MX')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (160, N'Micronesia', N'FM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (161, N'Midway Islands', N'MQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (162, N'Miscellaneous (French)', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (163, N'Moldova', N'MD')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (164, N'Monaco', N'MN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (165, N'Mongolia', N'MG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (166, N'Montenegro', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (167, N'Montserrat', N'MH')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (168, N'Morocco', N'MO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (169, N'Mozambique', N'MZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (170, N'Myanmar', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (171, N'Namibia', N'WA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (172, N'Nauru', N'NR')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (173, N'Navassa Island', N'BQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (174, N'Nepal', N'NP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (175, N'Netherlands', N'NL')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (176, N'Netherlands Antilles', N'NT')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (177, N'New Caledonia', N'NC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (178, N'New Zealand', N'NZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (179, N'Nicaragua', N'NU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (180, N'Niger', N'NG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (181, N'Nigeria', N'NI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (182, N'Niue', N'NE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (183, N'Norfolk Island', N'NF')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (184, N'Northern Mariana Islands', N'CQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (185, N'Norway', N'NO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (186, N'Oman', N'MU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (187, N'Pakistan', N'PK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (188, N'Palau', N'PS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (189, N'Palmyra Atoll', N'LQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (190, N'Panama', N'PM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (191, N'Papua New Guinea', N'PP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (192, N'Paracel Islands', N'PF')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (193, N'Paraguay', N'PA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (194, N'Peru', N'PE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (195, N'Philippines', N'RP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (196, N'Pitcairn Islands', N'PC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (197, N'Poland', N'PL')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (198, N'Portugal', N'PO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (199, N'Puerto Rico', N'RQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (200, N'Qatar', N'QA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (201, N'R?union', N'RE')
GO
print 'Processed 200 total records'
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (202, N'Romania', N'RO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (203, N'Russia', N'RS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (204, N'Rwanda', N'RW')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (205, N'Saint Helena', N'SH')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (206, N'Saint Kitts and Nevis', N'SC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (207, N'Saint Lucia', N'ST')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (208, N'Saint Pierre and Miquelon', N'SB')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (209, N'Saint Vincent and the Grenadines', N'VC')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (210, N'Samoa', N'WS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (211, N'San Marino', N'SM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (212, N'S?o Tom? and Pr?ncipe', N'TP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (213, N'Saudi Arabia', N'SA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (214, N'Senegal', N'SG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (215, N'Serbia', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (216, N'Serbia and Montenegro', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (217, N'Seychelles', N'SE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (218, N'Sierra Leone', N'SL')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (219, N'Singapore', N'SN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (220, N'Slovakia', N'LO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (221, N'Slovenia', N'SI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (222, N'Solomon Islands', N'BP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (223, N'Somalia', N'SO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (224, N'South Africa', N'SF')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (225, N'South Georgia', N'SX')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (226, N'Spain', N'SP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (227, N'Spratly Islands', N'PG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (228, N'Sri Lanka', N'CE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (229, N'Sudan', N'SU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (230, N'Suriname', N'NS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (231, N'Svalbard', N'SV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (232, N'Swaziland', N'WZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (233, N'Sweden', N'SW')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (234, N'Switzerland', N'SZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (235, N'Syria', N'SY')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (236, N'Taiwan', N'TW')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (237, N'Tajikistan', N'TI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (238, N'Tanzania', N'TZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (239, N'Thailand', N'TH')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (240, N'Togo', N'TO')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (241, N'Tokelau', N'TL')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (242, N'Tonga', N'TN')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (243, N'Trinidad and Tobago', N'TD')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (244, N'Tromelin Island', N'TE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (245, N'Tunisia', N'TS')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (246, N'Turkey', N'TU')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (247, N'Turkmenistan', N'TX')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (248, N'Turks and Caicos Islands', N'TK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (249, N'Tuvalu', N'TV')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (250, N'Uganda', N'UG')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (251, N'Ukraine', N'UP')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (252, N'United Arab Emirates', N'AE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (253, N'United Kingdom', N'UK')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (254, N'United States', N'US')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (255, N'United States Minor Outlying Islands', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (256, N'Uruguay', N'UY')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (257, N'Uzbekistan', N'UZ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (258, N'Vanuatu', N'NH')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (259, N'Venezuela', N'VE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (260, N'Vietnam', N'VM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (261, N'Virgin Islands', N'VQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (262, N'Virgin Islands (UK)', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (263, N'Virgin Islands (US)', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (264, N'Wake Island', N'WQ')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (265, N'Wallis and Futuna', N'WF')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (266, N'West Bank', N'WE')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (267, N'Western Sahara', N'WI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (268, N'Western Samoa', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (269, N'World', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (270, N'Yemen', N'YM')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (271, N'Yugoslavia', N'YI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (272, N'Zaire', N'--')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (273, N'Zambia', N'ZA')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (274, N'Zimbabwe', N'ZI')
INSERT [dbo].[Countries] ([Id], [Name], [Code]) VALUES (275, N'Palestinian Territory, Occupied', N'--')
SET IDENTITY_INSERT [dbo].[Countries] OFF
/****** Object:  Table [dbo].[ComputerKnowledgeLevels]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputerKnowledgeLevels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ComputerKnowledgeLevels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ComputerKnowledgeLevels] ON
INSERT [dbo].[ComputerKnowledgeLevels] ([Id], [LevelName]) VALUES (1, N'Familiar With the Computers')
INSERT [dbo].[ComputerKnowledgeLevels] ([Id], [LevelName]) VALUES (2, N'Know the basic concepts but never handled it')
INSERT [dbo].[ComputerKnowledgeLevels] ([Id], [LevelName]) VALUES (3, N'Have Worked on Computers')
INSERT [dbo].[ComputerKnowledgeLevels] ([Id], [LevelName]) VALUES (4, N'Know operating computer efficiently')
INSERT [dbo].[ComputerKnowledgeLevels] ([Id], [LevelName]) VALUES (5, N'Have Knowledge of Hardware/Software')
SET IDENTITY_INSERT [dbo].[ComputerKnowledgeLevels] OFF
/****** Object:  Table [dbo].[ComputerInterests]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputerInterests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InterestName] [nvarchar](150) NULL,
 CONSTRAINT [PK_ComputerInterests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ComputerInterests] ON
INSERT [dbo].[ComputerInterests] ([Id], [InterestName]) VALUES (1, N'Learn basic computing')
INSERT [dbo].[ComputerInterests] ([Id], [InterestName]) VALUES (2, N'Make career with the help of Computers')
INSERT [dbo].[ComputerInterests] ([Id], [InterestName]) VALUES (3, N'Use Computer in Current Self/Employment')
INSERT [dbo].[ComputerInterests] ([Id], [InterestName]) VALUES (4, N'Score better marks in my computer exam')
SET IDENTITY_INSERT [dbo].[ComputerInterests] OFF
/****** Object:  Table [dbo].[Branches]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegionalOfficeId] [int] NULL,
	[ZonalOfficeId] [int] NULL,
	[BranchCode] [nvarchar](10) NOT NULL,
	[BranchName] [nvarchar](100) NULL,
	[Address1] [nvarchar](150) NULL,
	[Address2] [nvarchar](150) NULL,
	[City] [nvarchar](50) NULL,
	[PIN] [nvarchar](7) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Phones] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Remarks] [nvarchar](300) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[IsActive] [bit] NULL,
	[ClosingDate] [datetime] NULL,
 CONSTRAINT [PK_Branchs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Batches]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BatchCode] [nvarchar](50) NULL,
	[BatchName] [nvarchar](50) NOT NULL,
	[BatchStartTime] [time](7) NULL,
	[BatchEndTime] [time](7) NULL,
	[StudentStrength] [int] NULL,
 CONSTRAINT [PK_Batches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Batches] ON
INSERT [dbo].[Batches] ([Id], [BatchCode], [BatchName], [BatchStartTime], [BatchEndTime], [StudentStrength]) VALUES (1, N'TTS-1', N'Tuesday 1st', CAST(0x0700D85EAC3A0000 AS Time), CAST(0x0700A8E76F4B0000 AS Time), 15)
INSERT [dbo].[Batches] ([Id], [BatchCode], [BatchName], [BatchStartTime], [BatchEndTime], [StudentStrength]) VALUES (2, N'TTS-2', N'Tuesday 2nd', CAST(0x0700A8E76F4B0000 AS Time), CAST(0x07007870335C0000 AS Time), 20)
INSERT [dbo].[Batches] ([Id], [BatchCode], [BatchName], [BatchStartTime], [BatchEndTime], [StudentStrength]) VALUES (3, N'TTS-3', N'Tuesday 3rd', CAST(0x07007870335C0000 AS Time), CAST(0x070068C461080000 AS Time), 20)
INSERT [dbo].[Batches] ([Id], [BatchCode], [BatchName], [BatchStartTime], [BatchEndTime], [StudentStrength]) VALUES (4, N'TTS-4', N'Tuesday 4th', CAST(0x0700384D25190000 AS Time), CAST(0x070008D6E8290000 AS Time), 15)
INSERT [dbo].[Batches] ([Id], [BatchCode], [BatchName], [BatchStartTime], [BatchEndTime], [StudentStrength]) VALUES (5, N'MWF-1', N'Monday 1st', CAST(0x07000C41DD3E0000 AS Time), CAST(0x0700A8E76F4B0000 AS Time), 25)
INSERT [dbo].[Batches] ([Id], [BatchCode], [BatchName], [BatchStartTime], [BatchEndTime], [StudentStrength]) VALUES (6, N'MWF-2', N'Monday 2nd', CAST(0x0700A8E76F4B0000 AS Time), CAST(0x07007870335C0000 AS Time), 15)
INSERT [dbo].[Batches] ([Id], [BatchCode], [BatchName], [BatchStartTime], [BatchEndTime], [StudentStrength]) VALUES (7, N'MWF-3', N'Monday 3rd', CAST(0x07007870335C0000 AS Time), CAST(0x070068C461080000 AS Time), 20)
INSERT [dbo].[Batches] ([Id], [BatchCode], [BatchName], [BatchStartTime], [BatchEndTime], [StudentStrength]) VALUES (8, N'MWF-4', N'Monday 4th', CAST(0x0700384D25190000 AS Time), CAST(0x070008D6E8290000 AS Time), 20)
SET IDENTITY_INSERT [dbo].[Batches] OFF
/****** Object:  Table [dbo].[Associates]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Associates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Location] [nvarchar](50) NULL,
 CONSTRAINT [PK_Associates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[associated_Users]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[associated_Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Membership_UserId] [uniqueidentifier] NULL,
	[EmployeeId] [nvarchar](50) NULL,
 CONSTRAINT [PK_associated_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Assets]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[PurchasedDate] [datetime] NULL,
	[LastRepaireDate] [datetime] NULL,
	[LastAuditDate] [datetime] NULL,
	[IsWorking] [bit] NULL,
 CONSTRAINT [PK_Assets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ZonalOfices]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZonalOfices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZoneName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[PIN] [nvarchar](7) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Fax] [nvarchar](50) NULL,
	[Website] [nvarchar](100) NULL,
	[Remarks] [nvarchar](300) NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[ClosingDate] [datetime] NULL,
 CONSTRAINT [PK_ZonalOfices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZonalOfices] ON
INSERT [dbo].[ZonalOfices] ([Id], [ZoneName], [Address], [Address2], [City], [PIN], [StateId], [CountryId], [Phone], [Mobile], [Email], [Fax], [Website], [Remarks], [CreatedDate], [LastUpdatedDate], [IsActive], [ClosingDate]) VALUES (1, N'Kolkata', N'Amir Ali Avenue', NULL, N'Kolkata', N'700001', 5431, 113, NULL, NULL, NULL, NULL, N'vedantafoundation.org', NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ZonalOfices] ([Id], [ZoneName], [Address], [Address2], [City], [PIN], [StateId], [CountryId], [Phone], [Mobile], [Email], [Fax], [Website], [Remarks], [CreatedDate], [LastUpdatedDate], [IsActive], [ClosingDate]) VALUES (2, N'Mumbai', N'E Corner', NULL, N'Mumbai', N'400001', 5416, 113, NULL, NULL, NULL, NULL, N'vedantafoundation.org', NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[ZonalOfices] OFF
/****** Object:  View [dbo].[vw_Students]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Students]
AS
SELECT     dbo.Students.ID, dbo.Branches.BranchCode, dbo.Branches.BranchName, dbo.Students.FirstName, dbo.Students.LastName, dbo.Genders.Gender, dbo.Students.DOB, 
                      dbo.Students.Age, dbo.MaritalStatus.MaritalStatusName, dbo.Students.FatherName, dbo.Students.MotherName, dbo.Students.Street, dbo.Students.Street2, 
                      dbo.Students.City, dbo.States.Name AS State, dbo.Countries.Name AS Country, dbo.Students.Zip, dbo.Students.Phone, dbo.Students.Cell, dbo.Students.Email, 
                      dbo.Students.IsActive, dbo.Students.CreatedDate, dbo.Students.LastUpdated, dbo.Students.Mothertoungue, dbo.Students.PassportNo, dbo.Students.PAN, 
                      dbo.Students.UIDNo, dbo.Occupations.Name AS Occupation, dbo.FamilyIncomeSlots.IncomeSlot, dbo.Qualifications.Qualification, dbo.Students.MiddleName, 
                      dbo.Students.BranchId, dbo.Nationality.Name AS Nationality, dbo.Religions.Name AS Religion, dbo.Students.NationalityId, dbo.Students.ReligionId, 
                      dbo.Students.StateId, dbo.Students.CountryId, dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId
FROM         dbo.Students INNER JOIN
                      dbo.Genders ON dbo.Students.Gender = dbo.Genders.Id INNER JOIN
                      dbo.Countries INNER JOIN
                      dbo.States ON dbo.Countries.Id = dbo.States.CountryId ON dbo.Students.StateId = dbo.States.Id INNER JOIN
                      dbo.Branches ON dbo.Students.BranchId = dbo.Branches.Id LEFT OUTER JOIN
                      dbo.Qualifications ON dbo.Students.QualificationId = dbo.Qualifications.Id INNER JOIN
                      dbo.MaritalStatus ON dbo.MaritalStatus.Id = dbo.Students.MaritalStatusId LEFT OUTER JOIN
                      dbo.Nationality ON dbo.Students.NationalityId = dbo.Nationality.Id LEFT OUTER JOIN
                      dbo.Religions ON dbo.Students.ReligionId = dbo.Religions.Id LEFT OUTER JOIN
                      dbo.Occupations ON dbo.Students.OccupationId = dbo.Occupations.Id LEFT OUTER JOIN
                      dbo.FamilyIncomeSlots ON dbo.Students.FamilyIncomeSlotId = dbo.FamilyIncomeSlots.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[75] 2[23] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[42] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 2
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Students"
            Begin Extent = 
               Top = 22
               Left = 0
               Bottom = 341
               Right = 182
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Genders"
            Begin Extent = 
               Top = 20
               Left = 245
               Bottom = 109
               Right = 405
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Countries"
            Begin Extent = 
               Top = 121
               Left = 679
               Bottom = 225
               Right = 839
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 263
               Left = 407
               Bottom = 382
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Branches"
            Begin Extent = 
               Top = 249
               Left = 568
               Bottom = 386
               Right = 741
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Qualifications"
            Begin Extent = 
               Top = 240
               Left = 272
               Bottom = 329
               Right = 432
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MaritalStatus"
            Begin Extent = 
               Top = 93
               Left = 409
               Bottom = 182
               Right = 588
            End
            Di' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Students'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'splayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Nationality"
            Begin Extent = 
               Top = 6
               Left = 626
               Bottom = 95
               Right = 786
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Religions"
            Begin Extent = 
               Top = 6
               Left = 824
               Bottom = 95
               Right = 984
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Occupations"
            Begin Extent = 
               Top = 46
               Left = 288
               Bottom = 135
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FamilyIncomeSlots"
            Begin Extent = 
               Top = 153
               Left = 495
               Bottom = 242
               Right = 655
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 35
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Students'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Students'
GO
/****** Object:  View [dbo].[vw_RegionalOffices]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_RegionalOffices]
AS
SELECT     dbo.RegionalOffices.Id, dbo.RegionalOffices.ZonalOfficeId, dbo.RegionalOffices.RegionName, dbo.ZonalOfices.ZoneName, dbo.RegionalOffices.Address, 
                      dbo.RegionalOffices.Address2, dbo.RegionalOffices.City, dbo.RegionalOffices.PIN, dbo.States.Name AS State, dbo.Countries.Name AS Country, 
                      dbo.RegionalOffices.Phone, dbo.RegionalOffices.Mobile, dbo.RegionalOffices.Email, dbo.RegionalOffices.Fax, dbo.RegionalOffices.Website, 
                      dbo.RegionalOffices.Remarks, dbo.RegionalOffices.CreatedDate, dbo.RegionalOffices.LastUpdatedDate, dbo.RegionalOffices.IsActive, 
                      dbo.RegionalOffices.ClosingDate, dbo.ZonalOfices.IsActive AS IsZoneActive, dbo.ZonalOfices.Website AS ZonalWebSite
FROM         dbo.RegionalOffices INNER JOIN
                      dbo.ZonalOfices ON dbo.RegionalOffices.ZonalOfficeId = dbo.ZonalOfices.Id INNER JOIN
                      dbo.States ON dbo.RegionalOffices.StateId = dbo.States.CountryId INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RegionalOffices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ZonalOfices"
            Begin Extent = 
               Top = 6
               Left = 645
               Bottom = 216
               Right = 818
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 71
               Left = 280
               Bottom = 190
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Countries"
            Begin Extent = 
               Top = 80
               Left = 467
               Bottom = 184
               Right = 627
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_RegionalOffices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_RegionalOffices'
GO
/****** Object:  View [dbo].[vw_PaymentList]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_PaymentList]
AS
SELECT     dbo.Payments.Id, dbo.Payments.BranchId, dbo.Branches.BranchName, dbo.Payments.Date, dbo.Payments.PaidTo, dbo.PaymentModes.Mode AS PaymentMode, 
                      dbo.EXPENSESHEAD.CODE AS ExpenseHeadCode, dbo.EXPENSESHEAD.NAME AS ExpenseHeadName, dbo.LedgerTypes.Type AS LedgerType, 
                      dbo.Payments.Amounts, dbo.Payments.Narration, dbo.EXPENSESHEAD.LedgerTypeId, dbo.Payments.VoucherNo, dbo.Payments.CHQ_NO, dbo.Payments.CHQ_DATE, 
                      dbo.Payments.BANK, dbo.Payments.Remarks
FROM         dbo.Payments INNER JOIN
                      dbo.PaymentModes ON dbo.PaymentModes.Id = dbo.Payments.PaymentModeId INNER JOIN
                      dbo.EXPENSESHEAD ON dbo.Payments.ExpenseHeadId = dbo.EXPENSESHEAD.Id INNER JOIN
                      dbo.LedgerTypes ON dbo.EXPENSESHEAD.LedgerTypeId = dbo.LedgerTypes.Id INNER JOIN
                      dbo.Branches ON dbo.Payments.BranchId = dbo.Branches.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[15] 2[29] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Payments"
            Begin Extent = 
               Top = 3
               Left = 0
               Bottom = 234
               Right = 167
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "PaymentModes"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 95
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EXPENSESHEAD"
            Begin Extent = 
               Top = 97
               Left = 211
               Bottom = 256
               Right = 371
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LedgerTypes"
            Begin Extent = 
               Top = 124
               Left = 669
               Bottom = 213
               Right = 829
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Branches"
            Begin Extent = 
               Top = 3
               Left = 448
               Bottom = 268
               Right = 621
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PaymentList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PaymentList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PaymentList'
GO
/****** Object:  View [dbo].[vw_ZonalOffices]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ZonalOffices]
AS
SELECT     dbo.ZonalOfices.Id, dbo.ZonalOfices.ZoneName, dbo.ZonalOfices.Address, dbo.ZonalOfices.Address2, dbo.ZonalOfices.City, dbo.ZonalOfices.PIN, 
                      dbo.States.Name AS State, dbo.Countries.Name AS Country, dbo.ZonalOfices.Phone, dbo.ZonalOfices.Mobile, dbo.ZonalOfices.Email, dbo.ZonalOfices.Fax, 
                      dbo.ZonalOfices.Website, dbo.ZonalOfices.Remarks, dbo.ZonalOfices.CreatedDate, dbo.ZonalOfices.LastUpdatedDate, dbo.ZonalOfices.IsActive, 
                      dbo.ZonalOfices.ClosingDate
FROM         dbo.ZonalOfices INNER JOIN
                      dbo.States ON dbo.ZonalOfices.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 10
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Countries"
            Begin Extent = 
               Top = 0
               Left = 688
               Bottom = 113
               Right = 848
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 76
               Left = 252
               Bottom = 195
               Right = 412
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ZonalOfices"
            Begin Extent = 
               Top = 6
               Left = 31
               Bottom = 365
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ZonalOffices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ZonalOffices'
GO
/****** Object:  View [dbo].[vw_Employees]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Employees]
AS
SELECT     dbo.Employees.EmployeeId, dbo.Employees.FirstName, dbo.Employees.MiddleName, dbo.Employees.LastName, dbo.Employees.DOB, 
                      dbo.MaritalStatus.MaritalStatusName, dbo.Genders.Gender, dbo.EmployeeRanks.RankName, dbo.Employees.FatherName, dbo.Employees.MotherName, 
                      dbo.Employees.Street, dbo.Employees.Street2, dbo.Employees.City, dbo.States.Name AS State, dbo.Countries.Name AS Country, dbo.Employees.Zip, 
                      dbo.Employees.Phone, dbo.Employees.Mobile, dbo.Employees.Email, dbo.Employees.IsActive, dbo.Employees.LeavingDate, dbo.Employees.CreatedDate, 
                      dbo.Employees.LastUpdated, dbo.Employees.PassportNo, dbo.Employees.PAN, dbo.Employees.UIDNo, dbo.Branches.BranchCode, dbo.Branches.BranchName, 
                      dbo.Employees.BranchId, dbo.Employees.EmployeesRankId, dbo.Qualifications.Qualification, dbo.RegionalOffices.RegionName, dbo.ZonalOfices.ZoneName, 
                      dbo.RegionalOffices.IsActive AS IsRegionActive, dbo.ZonalOfices.IsActive AS IsZoneActive, dbo.Employees.RegionId, dbo.Employees.ZoneId
FROM         dbo.Employees INNER JOIN
                      dbo.Genders ON dbo.Employees.Gender = dbo.Genders.Id INNER JOIN
                      dbo.MaritalStatus ON dbo.Employees.MaritalStatusId = dbo.MaritalStatus.Id INNER JOIN
                      dbo.EmployeeRanks ON dbo.Employees.EmployeesRankId = dbo.EmployeeRanks.Id INNER JOIN
                      dbo.States ON dbo.Employees.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id LEFT OUTER JOIN
                      dbo.Branches ON dbo.Employees.BranchId = dbo.Branches.Id INNER JOIN
                      dbo.Qualifications ON dbo.Employees.QualificationId = dbo.Qualifications.Id INNER JOIN
                      dbo.RegionalOffices ON dbo.Employees.RegionId = dbo.RegionalOffices.Id INNER JOIN
                      dbo.ZonalOfices ON dbo.Employees.ZoneId = dbo.ZonalOfices.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[56] 2[19] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 10
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Employees"
            Begin Extent = 
               Top = 5
               Left = 1
               Bottom = 355
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Genders"
            Begin Extent = 
               Top = 100
               Left = 234
               Bottom = 189
               Right = 394
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MaritalStatus"
            Begin Extent = 
               Top = 7
               Left = 229
               Bottom = 96
               Right = 408
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EmployeeRanks"
            Begin Extent = 
               Top = 213
               Left = 290
               Bottom = 302
               Right = 450
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 26
               Left = 456
               Bottom = 145
               Right = 616
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Countries"
            Begin Extent = 
               Top = 6
               Left = 644
               Bottom = 110
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Branches"
            Begin Extent = 
               Top = 140
               Left = 591
               Bottom = 321
               Right = 764
            End
            Displa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Employees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'yFlags = 280
            TopColumn = 0
         End
         Begin Table = "Qualifications"
            Begin Extent = 
               Top = 233
               Left = 516
               Bottom = 322
               Right = 676
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RegionalOffices"
            Begin Extent = 
               Top = 114
               Left = 831
               Bottom = 233
               Right = 1004
            End
            DisplayFlags = 280
            TopColumn = 15
         End
         Begin Table = "ZonalOfices"
            Begin Extent = 
               Top = 234
               Left = 831
               Bottom = 353
               Right = 1004
            End
            DisplayFlags = 280
            TopColumn = 14
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Employees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Employees'
GO
/****** Object:  View [dbo].[vw_Branches]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Branches]
AS
SELECT     dbo.Branches.Id, dbo.Branches.BranchCode, dbo.Branches.BranchName, dbo.Branches.Address1, dbo.Branches.Address2, dbo.Branches.City, 
                      dbo.States.Name AS State, dbo.Countries.Name AS Country, dbo.Branches.PIN, dbo.Branches.Phones, dbo.Branches.Fax, dbo.Branches.Email, 
                      dbo.Branches.Remarks, dbo.Branches.CreatedDate, dbo.Branches.CreatedBy, dbo.Branches.LastUpdatedDate, dbo.Branches.LastUpdatedBy, dbo.Branches.IsActive, 
                      dbo.Branches.ClosingDate, dbo.RegionalOffices.RegionName, dbo.ZonalOfices.ZoneName, dbo.RegionalOffices.IsActive AS IsRegionalOfficeActive, 
                      dbo.ZonalOfices.IsActive AS IsZonalOfficeActive, dbo.RegionalOffices.Website AS RegionalWebsite, dbo.ZonalOfices.Website AS ZonalWebSite, 
                      dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId
FROM         dbo.Branches INNER JOIN
                      dbo.States ON dbo.Branches.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id INNER JOIN
                      dbo.RegionalOffices ON dbo.Branches.RegionalOfficeId = dbo.RegionalOffices.Id INNER JOIN
                      dbo.ZonalOfices ON dbo.RegionalOffices.ZonalOfficeId = dbo.ZonalOfices.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 10
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Branches"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 78
               Left = 372
               Bottom = 197
               Right = 532
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Countries"
            Begin Extent = 
               Top = 52
               Left = 647
               Bottom = 156
               Right = 807
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RegionalOffices"
            Begin Extent = 
               Top = 206
               Left = 260
               Bottom = 356
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "ZonalOfices"
            Begin Extent = 
               Top = 198
               Left = 513
               Bottom = 352
               Right = 686
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Branches'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Branches'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Branches'
GO
/****** Object:  View [dbo].[vw_AssetList]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AssetList]
AS
SELECT     dbo.Assets.Id, dbo.Assets.Code, dbo.Assets.Name, dbo.Assets.Quantity, dbo.Assets.PurchasedDate, dbo.Assets.LastRepaireDate, dbo.Assets.LastAuditDate, 
                      dbo.Assets.IsWorking, dbo.Branches.BranchName, dbo.Assets.BranchId, dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, 
                      dbo.Branches.BranchCode
FROM         dbo.Assets INNER JOIN
                      dbo.Branches ON dbo.Assets.BranchId = dbo.Branches.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Assets"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 210
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Branches"
            Begin Extent = 
               Top = 6
               Left = 237
               Bottom = 216
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AssetList'
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'9988083e-127d-4aa3-a440-a1bc54f10ee8', N'Admin', N'admin', NULL, 0, CAST(0x0000A277008E056C AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'96cba033-742e-43ab-a7e9-41305615f3a6', N'Hemant', N'hemant', NULL, 0, CAST(0x0000A22600D04D00 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'd5f86ec6-0ad1-443a-b7fd-b2103b307319', N'Manish', N'manish', NULL, 0, CAST(0x0000A2770063E656 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'a1b18e70-aa0a-4723-bddb-566d0db708ee', N'Munia', N'munia', NULL, 0, CAST(0x0000A22600D72620 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'271f29f6-45cf-498c-bd93-100cf2c3a2fa', N'Niraj Singh', N'niraj singh', NULL, 0, CAST(0x0000A22600D8AD88 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'e2181b65-7410-47a0-bffe-c7f785f0b43a', N'Pramod', N'pramod', NULL, 0, CAST(0x0000A22600B82706 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'6250c33b-316f-46c8-8e72-fd7d11743b4f', N'rajnish', N'rajnish', NULL, 0, CAST(0x0000A22900CFB90F AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'be94f277-0f71-4f76-9972-6411a5cab79a', N'AccountManager', N'accountmanager', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'ba14585d-3e88-4ada-a60a-3ea31c523867', N'Admin', N'admin', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'f55996d3-4420-4fb1-a76f-e333ca29cc8b', N'AreaManager', N'areamanager', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'121709f7-bdf9-4d68-ba81-9dc935950006', N'CenterManager', N'centermanager', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'c6a4690f-2969-4b16-a5e0-6c94d4e1401b', N'Faculty', N'faculty', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'b706ef87-82fe-4711-b071-97ce32590e40', N'TopManagement', N'topmanagement', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'7e399550-8902-4c36-854b-a3eda72ebd78', N'ZonalManager', N'zonalmanager', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'a1b18e70-aa0a-4723-bddb-566d0db708ee', N'YYLoBQnhChXPw1qqkwCZQ/AfRaI=', 1, N'Y465SifTsKfoNSdPalWzww==', NULL, N'manish.sf0103@gmail.com', N'manish.sf0103@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A22600D72620 AS DateTime), CAST(0x0000A22600D72620 AS DateTime), CAST(0x0000A22600D72620 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'9988083e-127d-4aa3-a440-a1bc54f10ee8', N'NyOb6cU9FW4oYsW80I8BhnXJKmQ=', 1, N'OK5h5NdNDP33RxM4SDatAw==', NULL, N'manish_sf@hotmail.com', N'manish_sf@hotmail.com', NULL, NULL, 1, 0, CAST(0x0000A277008E056C AS DateTime), CAST(0x0000A277008E056C AS DateTime), CAST(0x0000A277008E056C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'd5f86ec6-0ad1-443a-b7fd-b2103b307319', N'7nQpmuGZ9wl6wJqMyjudJJ/7oqY=', 1, N'p2a+o8cYCeaxtrn9h7YqJw==', NULL, N'manish_sf@rediffmail.com', N'manish_sf@rediffmail.com', NULL, NULL, 1, 0, CAST(0x0000A22600B7F87C AS DateTime), CAST(0x0000A2770063E656 AS DateTime), CAST(0x0000A22600B7F87C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'e2181b65-7410-47a0-bffe-c7f785f0b43a', N'ChvnGA+ReBWCnkrUabnDQJZXTao=', 1, N'FaM2kIrkZs0RKuJEmHxaIQ==', NULL, N'pkbagi@gmail.com', N'pkbagi@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A22600B82630 AS DateTime), CAST(0x0000A22600B82706 AS DateTime), CAST(0x0000A22600B82630 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'6250c33b-316f-46c8-8e72-fd7d11743b4f', N'6Jh1As+hmHBfLzeDn2L13gaNl5I=', 1, N'3W2WXo4fjjlCEnHugnZnfg==', NULL, N'rajn_kumar@gmail.com', N'rajn_kumar@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A227008914F8 AS DateTime), CAST(0x0000A22900CFB90F AS DateTime), CAST(0x0000A227008914F8 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'96cba033-742e-43ab-a7e9-41305615f3a6', N'eI9krritqmCvwMMkVmYzzfhxcoc=', 1, N'jZw2ONnTnGYjrfjbp89emQ==', NULL, N'singh.hemant@gmail.com', N'singh.hemant@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A22600D04D00 AS DateTime), CAST(0x0000A22600D04D00 AS DateTime), CAST(0x0000A22600D04D00 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fe18c433-291b-4186-a61c-62e40eec6ac0', N'271f29f6-45cf-498c-bd93-100cf2c3a2fa', N'yYV13B667jlK3szpqSDPcFYX7TE=', 1, N'4tMqnr9W1UOS9zOCqQV1EA==', NULL, N'ss@ss.com', N'ss@ss.com', NULL, NULL, 1, 0, CAST(0x0000A22600D8AD88 AS DateTime), CAST(0x0000A22600D8AD88 AS DateTime), CAST(0x0000A22600D8AD88 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'd5f86ec6-0ad1-443a-b7fd-b2103b307319', N'121709f7-bdf9-4d68-ba81-9dc935950006')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'9988083e-127d-4aa3-a440-a1bc54f10ee8', N'7e399550-8902-4c36-854b-a3eda72ebd78')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'271f29f6-45cf-498c-bd93-100cf2c3a2fa', N'f55996d3-4420-4fb1-a76f-e333ca29cc8b')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'6250c33b-316f-46c8-8e72-fd7d11743b4f', N'f55996d3-4420-4fb1-a76f-e333ca29cc8b')
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_Admissions]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Admissions]
AS
SELECT     A.Id, A.RollNumber, dbo.Courses.CourseCode, dbo.Courses.CourseName, dbo.Courses.Duration_In_Months, dbo.Courses.CourseFees, A.AdmissionDate, 
                      dbo.Batches.BatchCode, dbo.Batches.BatchName, A.BatchStartDate, A.BatchEndDate, A.DownPayment, A.NextPaymentDueDate, A.IsActive, 
                      A.MaximumDiscountAmount, A.RegistrationNumber, A.IsComputerKnown, dbo.ComputerKnowledgeLevels.LevelName AS ComputerKnoledgeLevel, 
                      dbo.ComputerInterests.InterestName AS ComputerInterestName, dbo.HowToKnowAboutUs.TypeName AS HowToKnowAboutUs, A.Location, 
                      dbo.Batches.BatchStartTime, dbo.Batches.BatchEndTime, A.StudentId, A.CourseId, A.NeedJobAssistance, dbo.vw_Students.ID AS Expr1, 
                      dbo.vw_Students.BranchCode, dbo.vw_Students.BranchName, dbo.vw_Students.FirstName, dbo.vw_Students.LastName, dbo.vw_Students.MiddleName, 
                      dbo.vw_Students.Qualification, dbo.vw_Students.Gender, dbo.vw_Students.DOB, dbo.vw_Students.Age, dbo.vw_Students.MaritalStatusName, 
                      dbo.vw_Students.FatherName, dbo.vw_Students.MotherName, dbo.vw_Students.Street, dbo.vw_Students.Street2, dbo.vw_Students.City, dbo.vw_Students.State, 
                      dbo.vw_Students.Country, dbo.vw_Students.Zip, dbo.vw_Students.Phone, dbo.vw_Students.Cell, dbo.vw_Students.Email, 
                      dbo.vw_Students.IsActive AS IsStudentActive, dbo.vw_Students.Mothertoungue, dbo.vw_Students.PassportNo, dbo.vw_Students.PAN, dbo.vw_Students.UIDNo, 
                      dbo.vw_Students.Occupation, dbo.vw_Students.IncomeSlot, dbo.vw_Students.BranchId, dbo.vw_Students.Nationality, dbo.vw_Students.Religion, 
                      dbo.vw_Students.NationalityId, dbo.vw_Students.ReligionId, dbo.vw_Students.StateId, dbo.vw_Students.CountryId,
                          (SELECT     SUM(Amount) AS FeeCollected
                            FROM          dbo.FeeCollections
                            WHERE      (AdmissionId = A.Id)) AS FeeCollected, dbo.Courses.TotalInstallmentAmount, dbo.vw_Students.RegionalOfficeId, dbo.vw_Students.ZonalOfficeId
FROM         dbo.Admissions AS A INNER JOIN
                      dbo.Courses ON A.CourseId = dbo.Courses.Id INNER JOIN
                      dbo.vw_Students ON A.StudentId = dbo.vw_Students.ID LEFT OUTER JOIN
                      dbo.Batches ON A.BatchId = dbo.Batches.Id LEFT OUTER JOIN
                      dbo.ComputerInterests ON A.ComputerInterestId = dbo.ComputerInterests.Id LEFT OUTER JOIN
                      dbo.ComputerKnowledgeLevels ON A.ComputerKnowledgeLevelId = dbo.ComputerKnowledgeLevels.Id LEFT OUTER JOIN
                      dbo.HowToKnowAboutUs ON A.HowToKnowAboutUsId = dbo.HowToKnowAboutUs.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[45] 2[20] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[69] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 10
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 4
               Left = 19
               Bottom = 366
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Courses"
            Begin Extent = 
               Top = 106
               Left = 725
               Bottom = 252
               Right = 965
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "vw_Students"
            Begin Extent = 
               Top = 13
               Left = 492
               Bottom = 347
               Right = 671
            End
            DisplayFlags = 280
            TopColumn = 22
         End
         Begin Table = "Batches"
            Begin Extent = 
               Top = 6
               Left = 577
               Bottom = 125
               Right = 746
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "ComputerInterests"
            Begin Extent = 
               Top = 209
               Left = 584
               Bottom = 298
               Right = 744
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ComputerKnowledgeLevels"
            Begin Extent = 
               Top = 6
               Left = 784
               Bottom = 95
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HowToKnowAboutUs"
            Begin Extent = 
               Top = 222
               Left = 236
               Bottom = 311
               Right = 396
            End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Admissions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 64
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Admissions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Admissions'
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_Users_Lists]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Users_Lists]
AS
SELECT     dbo.vw_aspnet_Users.UserId, dbo.vw_aspnet_Users.UserName, dbo.vw_aspnet_Users.LoweredUserName, dbo.vw_aspnet_Users.MobileAlias, 
                      dbo.vw_aspnet_Users.IsAnonymous, dbo.vw_aspnet_Users.LastActivityDate, dbo.aspnet_UsersInRoles.RoleId, dbo.aspnet_Roles.RoleName, 
                      dbo.aspnet_Roles.LoweredRoleName, dbo.aspnet_Roles.Description, dbo.associated_Users.EmployeeId, dbo.vw_Employees.FirstName, 
                      dbo.vw_Employees.MiddleName, dbo.vw_Employees.LastName, dbo.vw_Employees.RankName, dbo.vw_Employees.BranchId, dbo.vw_Employees.BranchName, 
                      dbo.vw_Employees.RegionName, dbo.vw_Employees.ZoneName, dbo.vw_Employees.RegionId, dbo.vw_Employees.ZoneId, dbo.vw_Employees.IsRegionActive, 
                      dbo.vw_Employees.IsZoneActive, dbo.vw_Employees.EmployeesRankId, dbo.vw_aspnet_Users.ApplicationId, dbo.aspnet_Membership.Email, 
                      dbo.aspnet_Membership.LoweredEmail, dbo.aspnet_Membership.IsApproved, dbo.aspnet_Membership.IsLockedOut, dbo.aspnet_Membership.CreateDate, 
                      dbo.aspnet_Membership.LastLoginDate, dbo.aspnet_Membership.FailedPasswordAttemptCount, dbo.aspnet_Membership.LastPasswordChangedDate, 
                      dbo.aspnet_Membership.LastLockoutDate
FROM         dbo.vw_aspnet_Users INNER JOIN
                      dbo.aspnet_Membership ON dbo.vw_aspnet_Users.UserId = dbo.aspnet_Membership.UserId LEFT OUTER JOIN
                      dbo.aspnet_UsersInRoles ON dbo.aspnet_UsersInRoles.UserId = dbo.vw_aspnet_Users.UserId LEFT OUTER JOIN
                      dbo.aspnet_Roles ON dbo.aspnet_Roles.RoleId = dbo.aspnet_UsersInRoles.RoleId LEFT OUTER JOIN
                      dbo.associated_Users ON dbo.associated_Users.Membership_UserId = dbo.vw_aspnet_Users.UserId LEFT OUTER JOIN
                      dbo.vw_Employees ON dbo.vw_Employees.EmployeeId = dbo.associated_Users.EmployeeId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[12] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[39] 2[41] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 2
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vw_aspnet_Users"
            Begin Extent = 
               Top = 0
               Left = 0
               Bottom = 200
               Right = 179
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "aspnet_UsersInRoles"
            Begin Extent = 
               Top = 112
               Left = 273
               Bottom = 264
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "aspnet_Roles"
            Begin Extent = 
               Top = 119
               Left = 487
               Bottom = 282
               Right = 665
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "associated_Users"
            Begin Extent = 
               Top = 0
               Left = 287
               Bottom = 104
               Right = 471
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_Employees"
            Begin Extent = 
               Top = 4
               Left = 697
               Bottom = 195
               Right = 876
            End
            DisplayFlags = 280
            TopColumn = 29
         End
         Begin Table = "aspnet_Membership"
            Begin Extent = 
               Top = 179
               Left = 537
               Bottom = 474
               Right = 837
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 35
         Width = 284
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Users_Lists'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Users_Lists'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Users_Lists'
GO
/****** Object:  View [dbo].[vw_FeeCollections]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_FeeCollections]
AS
SELECT     dbo.FeeCollections.Id, dbo.PaymentHeads.PaymentHead, dbo.FeeCollections.PaymentDate, dbo.PaymentModes.Mode AS PaymentMode, dbo.FeeCollections.Amount, 
                      dbo.FeeCollections.Description, dbo.FeeCollections.ManualreceiptNumber, dbo.FeeCollections.AdmissionId, dbo.vw_Admissions.RollNumber, 
                      dbo.vw_Admissions.CourseCode, dbo.vw_Admissions.CourseName, dbo.vw_Admissions.AdmissionDate, dbo.vw_Admissions.DownPayment, 
                      dbo.vw_Admissions.NextPaymentDueDate, dbo.vw_Admissions.IsActive, dbo.vw_Admissions.RegistrationNumber, dbo.vw_Admissions.BranchName, 
                      dbo.vw_Admissions.BranchCode, dbo.vw_Admissions.BranchId, dbo.vw_Branches.RegionalOfficeId, dbo.vw_Branches.ZonalOfficeId, dbo.vw_Branches.RegionName, 
                      dbo.vw_Branches.ZoneName
FROM         dbo.FeeCollections INNER JOIN
                      dbo.vw_Admissions ON dbo.FeeCollections.AdmissionId = dbo.vw_Admissions.Id INNER JOIN
                      dbo.vw_Branches ON dbo.vw_Admissions.BranchId = dbo.vw_Branches.Id LEFT OUTER JOIN
                      dbo.PaymentHeads ON dbo.FeeCollections.PaymentHeadId = dbo.PaymentHeads.Id LEFT OUTER JOIN
                      dbo.PaymentModes ON dbo.FeeCollections.PaymentModeId = dbo.PaymentModes.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[20] 2[26] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[48] 2[4] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 2
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "FeeCollections"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 200
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PaymentHeads"
            Begin Extent = 
               Top = 6
               Left = 530
               Bottom = 95
               Right = 690
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PaymentModes"
            Begin Extent = 
               Top = 6
               Left = 728
               Bottom = 95
               Right = 888
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_Admissions"
            Begin Extent = 
               Top = 0
               Left = 356
               Bottom = 337
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "vw_Branches"
            Begin Extent = 
               Top = 96
               Left = 605
               Bottom = 337
               Right = 803
            End
            DisplayFlags = 280
            TopColumn = 15
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 20
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2760
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_FeeCollections'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_FeeCollections'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_FeeCollections'
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 11/22/2013 16:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__45F365D3]    Script Date: 11/22/2013 16:55:45 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__4BAC3F29]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__4CA06362]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__4D94879B]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__18EBB532]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__02084FDA]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__245D67DE]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__60A75C0F]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__4AB81AF0]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__17F790F9]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__01142BA1]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__25518C17]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__2645B050]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__75A278F5]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__5EBF139D]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__5FB337D6]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__1F98B2C1]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__07C12930]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__06CD04F7]    Script Date: 11/22/2013 16:55:46 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
