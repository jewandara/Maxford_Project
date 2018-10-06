-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_EmailType
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_EmailType
(
	EmailTypeID					INT				IDENTITY(1,1)	UNIQUE		NOT NULL,
	LoginID						INT											NULL			REFERENCES		dbo.MAX_SYS_Login(LoginID),
	EmailType					INT											NOT NULL,		-- / info@maxford.edu - send information for students / maxford@maxford.edu - used for officail Email / admin@maxford.edu - used for admin emails / advertiesment@maxford.edu - send advertiesments / teacher@maxford.edu/debate@maxford.edu/maxford@gmail.com/maxford@yahoo.com/maxford@hotmail.com/ Other
	EmailAddress				NVARCHAR(100)								NOT NULL,
	EmailPassword				NVARCHAR(50)								NOT NULL,
	EmailHeader					NVARCHAR(2000)								NULL,
	EmailHeaderImage			Image										NULL,
	EmailFooter					NVARCHAR(2000)								NULL,
	EmailFooterImage			Image										NULL,
	SmtpServerPort				NVARCHAR(20)								NULL,
	SmtpServerHost				NVARCHAR(100)								NULL,	
	SmtpServerEnableSsl			BIT											NULL,
	SmtpServerSettingOne		NVARCHAR(200)								NULL,		
	SmtpServerSettingTwo		NVARCHAR(200)								NULL,	
	SmtpServerSettingThree		NVARCHAR(200)								NULL,	

	Comments					NVARCHAR(50)								NULL,
	Codex						UNIQUEIDENTIFIER				UNIQUE		NOT NULL		DEFAULT (newid()),
	Activiated					BIT											NOT NULL		DEFAULT (0),
	InsertedDate				DATETIME									NOT NULL,
	ModifiedDate				DATETIME									NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (EmailTypeID)
);