-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_TeacherEvent
-- ===============================================================================
CREATE TABLE dbo.MAX_TeacherEvent
(
	TecherEventID						int									IDENTITY(1,1)				NOT NULL,
	TeacherID							int																NOT NULL		REFERENCES MAX_Teacher(TeacherID),	
	TechEventDate						DateTime														NOT NULL,
	TechEventTime						DateTime														NOT NULL,
	TechEventLocation					nvarchar(50)													NOT NULL,
	TechEventTitle						nvarchar(256)													NOT NULL,
	TechEventLink						nvarchar(2024)													NULL,
	TechEventDiscription				nvarchar(1024)													NULL,
	TechEventDetails					nvarchar(1024)													NULL,
	TechEventComments					nvarchar(1024)													NULL,
	IsEeventHeld						bit																NOT NULL		DEFAULT ('False'),

	Comments							NVARCHAR(50)													NULL,
	Codex								UNIQUEIDENTIFIER					UNIQUE						NOT NULL		DEFAULT (newid()),
	Activiated							BIT																NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME														NOT NULL,
	ModifiedDate						DATETIME														NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (TecherEventID)
);
