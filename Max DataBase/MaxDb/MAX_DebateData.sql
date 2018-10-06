-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of MAX_DebateData
-- ===============================================================================
CREATE TABLE MAX_DebateData
(
	DebateDataID			uniqueidentifier		PRIMARY KEY			NONCLUSTERED		NOT NULL		DEFAULT (newid()),		
	DebateID				int																NOT NULL		REFERENCES MAX_Debate(DebateID),				
	DebateDataType			nvarchar(25)													NOT NULL		DEFAULT ('Image'),	
	DebateDataTitle			nvarchar(25)													NULL,	
	DebateDataLink			nvarchar(2048)													NULL,
	DebateDataLocation		nvarchar(1024)													NULL,
	DebateDataDiscription	nvarchar(1024)													NULL,

	Comments				NVARCHAR(50)													NULL,
	Codex					UNIQUEIDENTIFIER								UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT																NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL		DEFAULT (getdate())
);