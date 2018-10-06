-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_ExamResult
-- ===============================================================================
CREATE TABLE dbo.MAX_ExamResult
(
	ExamId								int												NOT	NULL		REFERENCES dbo.MAX_Exam(ExamId),
	StudentId							int												NOT NULL		REFERENCES dbo.MAX_Student(StudentId),
	Presentage							int												NOT NULL,

	Comments							NVARCHAR(50)									NULL,
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate())
);