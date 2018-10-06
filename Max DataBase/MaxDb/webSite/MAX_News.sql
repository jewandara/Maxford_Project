-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_News
-- ===============================================================================
CREATE TABLE dbo.MAX_News
(
	NewsID					UNIQUEIDENTIFIER	PRIMARY KEY		NONCLUSTERED	NOT NULL	DEFAULT (newid()),		
	LoginId					INT													NOT NULL	REFERENCES	dbo.MAX_SYS_Login(LoginID),
	NewsTitle				NVARCHAR(100)										NOT NULL,
	NewsSubTitle			NVARCHAR(200)										NULL,
	NewsType				NVARCHAR(10)										NOT NULL,	-- / LATEST / POPULAR / EVENT / NOTICE
	NewsImage				IMAGE												NULL,
	NewsImageLink			NVARCHAR(2024)										NULL,
	NewsImageDiscribe		NVARCHAR(200)										NULL,
	NewsDetails				NTEXT												NOT NULL,
	NewsDateTimeOne			NVARCHAR(30)										NULL,
	NewsDateTimeTwo			NVARCHAR(30)										NULL,
	NewsBlock				BIT													NOT NULL	DEFAULT (0),

	Comments				NVARCHAR(50)										NULL,
	Codex					UNIQUEIDENTIFIER					UNIQUE			NOT NULL	DEFAULT (newid()),
	Activiated				BIT													NOT NULL	DEFAULT (0),
	InsertedDate			DATETIME											NOT NULL,
	ModifiedDate			DATETIME											NOT NULL	DEFAULT (getdate())
);
