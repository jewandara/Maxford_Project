-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_Hall
-- ===============================================================================
CREATE TABLE dbo.MAX_Hall
(
	HallID								int							IDENTITY(1,1)		NOT NULL,
	HallName							nvarchar(50)									NOT NULL,
	HallLocation						nvarchar(256)									NULL,
	HallType							nvarchar(20)									NULL			DEFAULT ('STUDY'), -- / STUDY / CAFTREEN / TOILET / LECTURE / CAR PARK
	HallCapacity						int												NOT NULL		DEFAULT	(50),
	HallFlow							int												NOT NULL		DEFAULT	(1),
	HallNumberOfDesk					int												NOT NULL		DEFAULT	(50),
	HallNumberOfChires					int												NOT NULL		DEFAULT	(50),
	HallPicture							image											NULL,
	HallDiscripition					nvarchar(1024)									NULL,

	Comments							NVARCHAR(50)									NULL,
	Codex								UNIQUEIDENTIFIER			UNIQUE				NOT NULL		DEFAULT (newid()),
	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY ( HallID )
);
