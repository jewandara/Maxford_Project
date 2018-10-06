-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_Data
-- ===============================================================================
CREATE TABLE dbo.MAX_Data
(
	DataID					uniqueidentifier	PRIMARY KEY		NONCLUSTERED	NOT NULL		DEFAULT (newid()),
	DataType				nvarchar(25)										NOT NULL		DEFAULT ('JPG'),	-- / JPG / JPEG / PNG / GIF / TEXT / DOC / PTT / PDF / EXE / --
	DataPicture				image												NULL,
	DataLocation			nvarchar(2048)										NULL,

	Comments				NVARCHAR(50)										NULL,
	Codex					UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT													NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME											NOT NULL,
	ModifiedDate			DATETIME											NOT NULL		DEFAULT (getdate())
);