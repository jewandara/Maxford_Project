-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_Mail
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_Mail
(
	MailID					UNIQUEIDENTIFIER	PRIMARY KEY		NONCLUSTERED	NOT NULL	DEFAULT (newid()),	
	LoginID					INT													NOT NULL	REFERENCES		dbo.MAX_SYS_Login(LoginId),
	EmailTypeID				INT													NOT NULL	REFERENCES		dbo.MAX_SYS_EmailType(EmailTypeID), -- / info@maxford.edu - send information for students / maxford@maxford.edu - used for officail Email / admin@maxford.edu - used for admin emails / advertiesment@maxford.edu - send advertiesments / teacher@maxford.edu/debate@maxford.edu/maxford@gmail.com/maxford@yahoo.com/maxford@hotmail.com/ Other
	MailType				NVARCHAR(20)										NOT NULL,	-- / INBOX / OUTBOX / SENT / SAVE / DELETE / --
	MailSubject				NVARCHAR(200)										NOT NULL,
	MailSender				NVARCHAR(100)										NOT NULL,	
	MailAddress				NVARCHAR(100)										NOT NULL,
	MailDetails				NTEXT												NOT NULL,
	MailImage				IMAGE												NULL,										
	MailView				BIT													NOT NULL	DEFAULT (0),

	Comments				NVARCHAR(50)										NULL,
	Codex					UNIQUEIDENTIFIER					UNIQUE			NOT NULL	DEFAULT (newid()),
	Activiated				BIT													NOT NULL	DEFAULT (0),
	InsertedDate			DATETIME											NOT NULL,
	ModifiedDate			DATETIME											NOT NULL	DEFAULT (getdate())
);
