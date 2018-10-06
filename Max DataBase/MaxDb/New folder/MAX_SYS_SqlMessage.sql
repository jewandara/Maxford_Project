-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_SqlMessage
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_SqlMessage
(
	MsageID					INT						IDENTITY(1,1)		UNIQUE		NOT NULL,
	MsageNumber				INT											UNIQUE		NOT NULL,
	ReturnCode				NVARCHAR(2)												NOT NULL, -- A - ALART / W - WORNING / S - SUCCESS / E - ERROR
	Title					NVARCHAR(50)											NOT NULL,
	Discription				NVARCHAR(150)											NOT NULL,
	Base					NVARCHAR(30)											NULL,
	Solusation				NVARCHAR(255)											NULL,
	Codex					UNIQUEIDENTIFIER										NOT NULL	DEFAULT (newid()),
	InsertedDate			DATETIME                                                NOT NULL,
	ModifiedDate			DATETIME                                                NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (MsageID)
);