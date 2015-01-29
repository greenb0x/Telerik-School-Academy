USE [master]
GO
CREATE DATABASE [Universities]
GO
ALTER DATABASE [Universities] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Universities].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Universities] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Universities] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Universities] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Universities] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Universities] SET ARITHABORT OFF 
GO
ALTER DATABASE [Universities] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Universities] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Universities] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Universities] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Universities] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Universities] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Universities] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Universities] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Universities] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Universities] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Universities] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Universities] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Universities] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Universities] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Universities] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Universities] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Universities] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Universities] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Universities] SET  MULTI_USER 
GO
ALTER DATABASE [Universities] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Universities] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Universities] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Universities] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Universities] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Universities]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProfessorId] [int] NOT NULL,
	[DepartamentId] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departaments](
	[DepartamentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[FacultyId] [int] NOT NULL,
 CONSTRAINT [PK_Departaments] PRIMARY KEY CLUSTERED 
(
	[DepartamentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[FacultyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[FacultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[ProfessorId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DepartamentId] [int] NOT NULL,
 CONSTRAINT [PK_Professors] PRIMARY KEY CLUSTERED 
(
	[ProfessorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessorsTitles](
	[ProfessorId] [int] NOT NULL,
	[TitleId] [int] NOT NULL,
 CONSTRAINT [PK_ProfessorsTitles] PRIMARY KEY CLUSTERED 
(
	[ProfessorId] ASC,
	[TitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FacultyId] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsCourses](
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_StudentsCourses] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[TitleId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED 
(
	[TitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [Name], [ProfessorId], [DepartamentId]) VALUES (1, N'Introduction to Computers and Computing', 1, 6)
INSERT [dbo].[Courses] ([CourseId], [Name], [ProfessorId], [DepartamentId]) VALUES (2, N'Programming Concepts', 1, 6)
INSERT [dbo].[Courses] ([CourseId], [Name], [ProfessorId], [DepartamentId]) VALUES (3, N'Basic Drawing', 2, 8)
INSERT [dbo].[Courses] ([CourseId], [Name], [ProfessorId], [DepartamentId]) VALUES (4, N'Graphic Communications', 3, 9)
INSERT [dbo].[Courses] ([CourseId], [Name], [ProfessorId], [DepartamentId]) VALUES (5, N'History of Architecture and Urbanism', 4, 8)
INSERT [dbo].[Courses] ([CourseId], [Name], [ProfessorId], [DepartamentId]) VALUES (6, N'Electronic Devices and Analog Circuits', 5, 1)
INSERT [dbo].[Courses] ([CourseId], [Name], [ProfessorId], [DepartamentId]) VALUES (7, N'Signals and Systems', 5, 2)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Departaments] ON 

INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (1, N'Mechanical Engineering', 1)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (2, N'Mechanical Systems Engineering', 1)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (3, N'Applied Chemistry', 1)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (4, N'Environmental and Energy Chemistry', 1)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (5, N'Electrical Engineering', 1)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (6, N'Information and Communications Engineering', 1)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (7, N'Urban Design and Planning', 2)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (8, N'Architecture', 2)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (9, N'Architectural Design', 2)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (10, N'Computer Science', 3)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (11, N'Information Design', 3)
INSERT [dbo].[Departaments] ([DepartamentId], [Name], [FacultyId]) VALUES (12, N'Innovative Mechanical Engineering', 3)
SET IDENTITY_INSERT [dbo].[Departaments] OFF
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([FacultyId], [Name]) VALUES (1, N'Engineering')
INSERT [dbo].[Faculties] ([FacultyId], [Name]) VALUES (2, N'Architecture')
INSERT [dbo].[Faculties] ([FacultyId], [Name]) VALUES (3, N'Informatics')
INSERT [dbo].[Faculties] ([FacultyId], [Name]) VALUES (4, N'Global Engineering')
SET IDENTITY_INSERT [dbo].[Faculties] OFF
SET IDENTITY_INSERT [dbo].[Professors] ON 

INSERT [dbo].[Professors] ([ProfessorId], [Name], [DepartamentId]) VALUES (1, N'Ivanov', 1)
INSERT [dbo].[Professors] ([ProfessorId], [Name], [DepartamentId]) VALUES (2, N'Petrov', 1)
INSERT [dbo].[Professors] ([ProfessorId], [Name], [DepartamentId]) VALUES (3, N'Georgiev', 2)
INSERT [dbo].[Professors] ([ProfessorId], [Name], [DepartamentId]) VALUES (4, N'Penchev', 4)
INSERT [dbo].[Professors] ([ProfessorId], [Name], [DepartamentId]) VALUES (5, N'Matev', 5)
SET IDENTITY_INSERT [dbo].[Professors] OFF
INSERT [dbo].[ProfessorsTitles] ([ProfessorId], [TitleId]) VALUES (1, 1)
INSERT [dbo].[ProfessorsTitles] ([ProfessorId], [TitleId]) VALUES (2, 1)
INSERT [dbo].[ProfessorsTitles] ([ProfessorId], [TitleId]) VALUES (3, 2)
INSERT [dbo].[ProfessorsTitles] ([ProfessorId], [TitleId]) VALUES (4, 3)
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [Name], [FacultyId]) VALUES (1, N'Naoya Yoshida', 1)
INSERT [dbo].[Students] ([StudentId], [Name], [FacultyId]) VALUES (2, N'Kazuki Akamatsu', 1)
INSERT [dbo].[Students] ([StudentId], [Name], [FacultyId]) VALUES (3, N'Tetsuo Sakamoto', 2)
INSERT [dbo].[Students] ([StudentId], [Name], [FacultyId]) VALUES (4, N'Norimitsu Ichikawa', 2)
INSERT [dbo].[Students] ([StudentId], [Name], [FacultyId]) VALUES (6, N'Teruo Serizawa', 4)
SET IDENTITY_INSERT [dbo].[Students] OFF
INSERT [dbo].[StudentsCourses] ([StudentId], [CourseId]) VALUES (1, 1)
INSERT [dbo].[StudentsCourses] ([StudentId], [CourseId]) VALUES (1, 2)
INSERT [dbo].[StudentsCourses] ([StudentId], [CourseId]) VALUES (1, 3)
INSERT [dbo].[StudentsCourses] ([StudentId], [CourseId]) VALUES (1, 4)
INSERT [dbo].[StudentsCourses] ([StudentId], [CourseId]) VALUES (2, 1)
INSERT [dbo].[StudentsCourses] ([StudentId], [CourseId]) VALUES (3, 2)
INSERT [dbo].[StudentsCourses] ([StudentId], [CourseId]) VALUES (4, 5)
INSERT [dbo].[StudentsCourses] ([StudentId], [CourseId]) VALUES (6, 2)
SET IDENTITY_INSERT [dbo].[Titles] ON 

INSERT [dbo].[Titles] ([TitleId], [Type]) VALUES (1, N'Ph. D')
INSERT [dbo].[Titles] ([TitleId], [Type]) VALUES (2, N'Academician')
INSERT [dbo].[Titles] ([TitleId], [Type]) VALUES (3, N'Senior assistant')
SET IDENTITY_INSERT [dbo].[Titles] OFF
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Departaments] FOREIGN KEY([DepartamentId])
REFERENCES [dbo].[Departaments] ([DepartamentId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Departaments]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Professors] FOREIGN KEY([ProfessorId])
REFERENCES [dbo].[Professors] ([ProfessorId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Professors]
GO
ALTER TABLE [dbo].[Departaments]  WITH CHECK ADD  CONSTRAINT [FK_Departaments_Faculties] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([FacultyId])
GO
ALTER TABLE [dbo].[Departaments] CHECK CONSTRAINT [FK_Departaments_Faculties]
GO
ALTER TABLE [dbo].[Professors]  WITH CHECK ADD  CONSTRAINT [FK_Professors_Departaments] FOREIGN KEY([DepartamentId])
REFERENCES [dbo].[Departaments] ([DepartamentId])
GO
ALTER TABLE [dbo].[Professors] CHECK CONSTRAINT [FK_Professors_Departaments]
GO
ALTER TABLE [dbo].[ProfessorsTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorsTitles_Professors] FOREIGN KEY([ProfessorId])
REFERENCES [dbo].[Professors] ([ProfessorId])
GO
ALTER TABLE [dbo].[ProfessorsTitles] CHECK CONSTRAINT [FK_ProfessorsTitles_Professors]
GO
ALTER TABLE [dbo].[ProfessorsTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorsTitles_Titles] FOREIGN KEY([TitleId])
REFERENCES [dbo].[Titles] ([TitleId])
GO
ALTER TABLE [dbo].[ProfessorsTitles] CHECK CONSTRAINT [FK_ProfessorsTitles_Titles]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Faculties] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([FacultyId])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Faculties]
GO
ALTER TABLE [dbo].[StudentsCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentsCourses_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[StudentsCourses] CHECK CONSTRAINT [FK_StudentsCourses_Courses]
GO
ALTER TABLE [dbo].[StudentsCourses]  WITH CHECK ADD  CONSTRAINT [FK_StudentsCourses_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[StudentsCourses] CHECK CONSTRAINT [FK_StudentsCourses_Students]
GO
USE [master]
GO
ALTER DATABASE [Universities] SET  READ_WRITE 
GO