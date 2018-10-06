-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_Student
-- ===============================================================================
CREATE TABLE dbo.MAX_Student
(
	StudentID				INT						IDENTITY(1,1)			UNIQUE			NOT NULL,
	UserID					INT																NOT NULL		REFERENCES MAX_User(UserID),
	IsDebatingMember		BIT																NOT NULL		DEFAULT ('False'),
	PrimarySchool			NVARCHAR(150)													NULL,
	SecoundarySchool		NVARCHAR(150)													NULL,
	OllExtraSubjects		NVARCHAR(150)													NULL,
	OllMedume				NVARCHAR(150)													NULL,
	AllStream				NVARCHAR(50)													NULL,
	AboutSchoolLife			NVARCHAR(200)													NULL,
	Univercuty				NVARCHAR(100)													NULL,
	AboutUnivercutyLife		NVARCHAR(250)													NULL,
	Company 				NVARCHAR(50)													NULL,
	AboutCompanyLife		NVARCHAR(256)													NULL,
	StudentPicture			IMAGE															NULL,
	AboutStudent			NVARCHAR(1024)													NULL,

	Comments				NVARCHAR(50)													NULL,
	Codex					UNIQUEIDENTIFIER								UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT																NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (StudentID)
);
