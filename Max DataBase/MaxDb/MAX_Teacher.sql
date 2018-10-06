-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_Teacher
-- ===============================================================================
CREATE TABLE dbo.MAX_Teacher
(
	TeacherID							INT						IDENTITY(1,1)			UNIQUE			NOT NULL,
	UserID								INT																NOT NULL	REFERENCES dbo.MAX_User(UserID),			
	NICNumber							nvarchar(20)													NULL,
	DriverLicen							nvarchar(50)													NULL,
	School								nvarchar(150)													NULL,
	InstrituteOne						nvarchar(150)													NULL,
	InstrituteTwo						nvarchar(150)													NULL,
	UnivercityOne						nvarchar(100)													NULL,
	UnivercityTwo						nvarchar(100)													NULL,
	AboutQulfication					nvarchar(1024)													NULL,
	AboutUnivercity						nvarchar(1024)													NULL,
	AboutDigri							nvarchar(1024)													NULL,
	DigrImage							image															NULL,
	OtherContactNo						numeric(20,0)													NULL,
	OtherEmail 							nvarchar(256)													NULL,
	TeacherPict							image															NULL,
	AboutTeacher						nvarchar(1024)													NULL,
	TeacherCategory						nvarchar(4)														NULL, //Primery / Scholarship /Ordinary Level/ Advanced level
	TecherComment						nvarchar(1024)													NULL,

	Comments							NVARCHAR(50)													NULL,
	Codex								UNIQUEIDENTIFIER					UNIQUE						NOT NULL		DEFAULT (newid()),
	Activiated							BIT																NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME														NOT NULL,
	ModifiedDate						DATETIME														NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (TeacherID)
);

