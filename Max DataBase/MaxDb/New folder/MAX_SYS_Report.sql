-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_Report
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_Report
(
	ReportID						INT				IDENTITY(1,1)	UNIQUE				NOT NULL,
	ReportDate						DATETIME											NOT NULL,
	ReportDetails					NTEXT												NOT NULL,
	ReportView						BIT													NOT NULL		DEFAULT (0),
	ReportLocation					NVARCHAR(2024)										NOT NULL,
	
	Comments						NVARCHAR(50)										NULL,
	Codex							UNIQUEIDENTIFIER				UNIQUE				NOT NULL		DEFAULT (newid()),
	InsertedDate					DATETIME											NOT NULL,
	PRIMARY KEY (ReportID)
);