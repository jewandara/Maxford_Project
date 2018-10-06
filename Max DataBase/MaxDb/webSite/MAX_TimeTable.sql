-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_TimeTable
-- ===============================================================================
CREATE TABLE dbo.MAX_TimeTable
(
	TableID								uniqueidentifier		PRIMARY KEY			NONCLUSTERED		NOT NULL		DEFAULT (newid()),		
	TableDate							date															NOT NULL,
	TableTime							time															NOT NULL,
	ClassID								int																NULL			REFERENCES dbo.MAX_Class(ClassID),
	ExamId								int																NULL			REFERENCES dbo.MAX_Exam(ExamID),
	DebateID							int																NULL			REFERENCES dbo.MAX_Debate(DebateID),
	TecherEventID						int																NULL			REFERENCES dbo.MAX_TeacherEvent(TecherEventID),
	NewsID								uniqueidentifier												NULL			REFERENCES dbo.MAX_News(NewsID),

	Comments							NVARCHAR(50)									NULL,
	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate())
);