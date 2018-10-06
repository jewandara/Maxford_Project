-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_WEB_Data
-- ===============================================================================
CREATE TABLE dbo.MAX_WEB_Data
(
	WebDataID				uniqueidentifier	PRIMARY KEY		NONCLUSTERED	NOT NULL		DEFAULT (newid()),
	WebDataType				nvarchar(25)										NOT NULL		DEFAULT ('JPG'),	-- / JPG / JPEG / PNG / GIF / TEXT / DOC / PTT / PDF / EXE / --
	WebDataPicture			image												NULL,
	WebDataLocation			nvarchar(2048)										NULL,

	Comments				NVARCHAR(50)										NULL,
	Codex					UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT													NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME											NOT NULL,
	ModifiedDate			DATETIME											NOT NULL		DEFAULT (getdate())
);