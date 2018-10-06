-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_Subject
-- ===============================================================================
CREATE TABLE dbo.MAX_Subject
(
	SubjectId							int							IDENTITY(1,1)		NOT NULL,
	SubjectName							nvarchar(50)									NOT NULL,
	SubjectDiscription					nvarchar(256)									NULL,

	Comments							NVARCHAR(50)									NULL,
	Codex								UNIQUEIDENTIFIER			UNIQUE				NOT NULL		DEFAULT (newid()),
	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (SubjectId)
);