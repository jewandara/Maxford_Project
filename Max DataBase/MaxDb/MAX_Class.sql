-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_Class
-- ===============================================================================
CREATE TABLE dbo.MAX_Class
(
	ClassID								int							IDENTITY(1,1)		NOT NULL,
	TeacherID							int												NOT NULL		REFERENCES dbo.MAX_Teacher(TeacherID),
	SubjectID							int												NOT NULL		REFERENCES dbo.MAX_Subject(SubjectId),
	HallID								int												NOT NULL		REFERENCES dbo.MAX_Hall(HallID),
	ClassName							nvarchar(30)									NULL,
	ClassDay							nvarchar(5)										NULL		DEFAULT ('MON'),
	ClassStartTime						time											NOT NULL,
	ClassEndTime						time											NULL,
	IsClassHeld							bit												NOT NULL		DEFAULT (0),
	ClasHeldComent						nvarchar(100)									NULL,
	
	Comments							NVARCHAR(50)									NULL,
	Codex								UNIQUEIDENTIFIER			UNIQUE				NOT NULL		DEFAULT (newid()),
	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY ( ClassID )
);