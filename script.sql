USE [master]
GO
/****** Object:  Database [KidzeeSchoolDb]    Script Date: 3/31/2020 2:53:14 PM ******/
CREATE DATABASE [KidzeeSchoolDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KidzeeSchoolDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KidzeeSchoolDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KidzeeSchoolDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\KidzeeSchoolDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KidzeeSchoolDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KidzeeSchoolDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KidzeeSchoolDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KidzeeSchoolDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KidzeeSchoolDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KidzeeSchoolDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KidzeeSchoolDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KidzeeSchoolDb] SET  MULTI_USER 
GO
ALTER DATABASE [KidzeeSchoolDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KidzeeSchoolDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KidzeeSchoolDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KidzeeSchoolDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KidzeeSchoolDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KidzeeSchoolDb] SET QUERY_STORE = OFF
GO
USE [KidzeeSchoolDb]
GO
/****** Object:  Table [dbo].[Admissions]    Script Date: 3/31/2020 2:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admissions](
	[AdmissionId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](30) NOT NULL,
	[Dob] [date] NOT NULL,
	[BirthPlace] [varchar](30) NOT NULL,
	[Nationality] [varchar](20) NOT NULL,
	[Height] [float] NOT NULL,
	[Weight] [float] NOT NULL,
	[BloodGroup] [varchar](10) NOT NULL,
	[AadharNumber] [varchar](15) NOT NULL,
	[StandardTypeId] [int] NOT NULL,
	[StudentTypeId] [int] NOT NULL,
	[GuardianId] [int] NOT NULL,
	[ResultStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Admission] PRIMARY KEY CLUSTERED 
(
	[AdmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fees]    Script Date: 3/31/2020 2:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[FeesId] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[InstallmentId] [int] NOT NULL,
 CONSTRAINT [PK_Fees] PRIMARY KEY CLUSTERED 
(
	[FeesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GuardianDetails]    Script Date: 3/31/2020 2:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GuardianDetails](
	[GuardianId] [int] IDENTITY(1,1) NOT NULL,
	[FatherName] [varchar](30) NOT NULL,
	[FatherOccupation] [varchar](30) NOT NULL,
	[FatherEducation] [varchar](20) NOT NULL,
	[MotherName] [varchar](30) NOT NULL,
	[MotherOccupation] [varchar](30) NOT NULL,
	[MotherEducation] [varchar](20) NOT NULL,
	[Siblings] [int] NOT NULL,
	[MobileNumber] [bigint] NOT NULL,
	[EmailId] [varchar](30) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Pincode] [int] NOT NULL,
 CONSTRAINT [PK_GuardianDetails] PRIMARY KEY CLUSTERED 
(
	[GuardianId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installments]    Script Date: 3/31/2020 2:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installments](
	[InstallmentId] [int] IDENTITY(1,1) NOT NULL,
	[First] [int] NOT NULL,
	[Second] [int] NOT NULL,
	[Third] [int] NOT NULL,
	[Fourth] [int] NOT NULL,
 CONSTRAINT [PK_Installments] PRIMARY KEY CLUSTERED 
(
	[InstallmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StandardTypes]    Script Date: 3/31/2020 2:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StandardTypes](
	[StandardTypeId] [int] NOT NULL,
	[standardName] [varchar](30) NOT NULL,
	[StudentId] [int] NOT NULL,
	[FeesId] [int] NOT NULL,
 CONSTRAINT [PK_StandardTypes] PRIMARY KEY CLUSTERED 
(
	[StandardTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 3/31/2020 2:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](30) NOT NULL,
	[AdmissionId] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentTypes]    Script Date: 3/31/2020 2:53:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTypes](
	[StudentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[StudentType] [varchar](20) NOT NULL,
	[StudentName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_StudentTypes] PRIMARY KEY CLUSTERED 
(
	[StudentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admissions]  WITH CHECK ADD  CONSTRAINT [FK_Admissions_GuardianDetails] FOREIGN KEY([GuardianId])
REFERENCES [dbo].[GuardianDetails] ([GuardianId])
GO
ALTER TABLE [dbo].[Admissions] CHECK CONSTRAINT [FK_Admissions_GuardianDetails]
GO
ALTER TABLE [dbo].[Admissions]  WITH CHECK ADD  CONSTRAINT [FK_Admissions_StandardTypes] FOREIGN KEY([StandardTypeId])
REFERENCES [dbo].[StandardTypes] ([StandardTypeId])
GO
ALTER TABLE [dbo].[Admissions] CHECK CONSTRAINT [FK_Admissions_StandardTypes]
GO
ALTER TABLE [dbo].[Admissions]  WITH CHECK ADD  CONSTRAINT [FK_Admissions_StudentTypes] FOREIGN KEY([StudentTypeId])
REFERENCES [dbo].[StudentTypes] ([StudentTypeId])
GO
ALTER TABLE [dbo].[Admissions] CHECK CONSTRAINT [FK_Admissions_StudentTypes]
GO
ALTER TABLE [dbo].[Fees]  WITH CHECK ADD  CONSTRAINT [FK_Fees_Installments] FOREIGN KEY([InstallmentId])
REFERENCES [dbo].[Installments] ([InstallmentId])
GO
ALTER TABLE [dbo].[Fees] CHECK CONSTRAINT [FK_Fees_Installments]
GO
ALTER TABLE [dbo].[Fees]  WITH CHECK ADD  CONSTRAINT [FK_Fees_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[Fees] CHECK CONSTRAINT [FK_Fees_Students]
GO
ALTER TABLE [dbo].[StandardTypes]  WITH CHECK ADD  CONSTRAINT [FK_StandardTypes_Fees] FOREIGN KEY([FeesId])
REFERENCES [dbo].[Fees] ([FeesId])
GO
ALTER TABLE [dbo].[StandardTypes] CHECK CONSTRAINT [FK_StandardTypes_Fees]
GO
ALTER TABLE [dbo].[StandardTypes]  WITH CHECK ADD  CONSTRAINT [FK_StandardTypes_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[StandardTypes] CHECK CONSTRAINT [FK_StandardTypes_Students]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Admissions] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admissions] ([AdmissionId])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Admissions]
GO
USE [master]
GO
ALTER DATABASE [KidzeeSchoolDb] SET  READ_WRITE 
GO
