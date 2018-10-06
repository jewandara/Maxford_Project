-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_Exam
-- ===============================================================================
CREATE TABLE dbo.MAX_Exam
(
	ExamId								int						IDENTITY(1,1)			NOT NULL,
	ExamDate							date											NOT NULL,
	TeacherID							int												NULL			REFERENCES dbo.MAX_Teacher(TeacherID),
	SubjectID							int												NULL			REFERENCES dbo.MAX_Subject(SubjectId),
	HallID								int												NULL			REFERENCES dbo.MAX_Hall(HallID),
	ExamStartTime						time											NOT NULL,
	ExamEndTime							time											NULL,
	IsExamHeld							bit												NOT NULL		DEFAULT (0),
	ExamHeldComent						nvarchar(100)									NULL,
	
	Comments							NVARCHAR(50)									NULL,
	Codex								UNIQUEIDENTIFIER		UNIQUE					NOT NULL		DEFAULT (newid()),
	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY ( ExamId )
);
