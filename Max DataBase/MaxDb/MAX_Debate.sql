-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_Debate
-- ===============================================================================
CREATE TABLE dbo.MAX_Debate
(
	DebateID					INT										IDENTITY(1,1)		NOT NULL,
	DebateDate					DATETIME													NOT NULL,
	DebateTime					DATETIME													NOT NULL,
	DebateLocation				NVARCHAR(50)												NOT NULL,
	DebateTopic					NVARCHAR(256)												NOT NULL,
	DebateTolkingMetheds		NVARCHAR(1024)												NULL,
	DebateDetails				NVARCHAR(1024)												NULL,
	DebatTeachersIdia			NVARCHAR(1024)												NULL,
	DebateChifeGestName			NVARCHAR(256)												NULL,
	DebateChifeGestDetails		NVARCHAR(1024)												NULL,
	DebateBeforeIdia			NVARCHAR(1024)												NULL,
	DebateAfterIdia				NVARCHAR(1024)												NULL,
	DebateRateOfYear			INT															NULL,
	IsDebateHeld				BIT															NOT NULL		DEFAULT ('False'),

	Comments				NVARCHAR(50)													NULL,
	Codex					UNIQUEIDENTIFIER								UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT																NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (DebateID)
);	
