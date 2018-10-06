-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_Login
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_Login
(
	LoginID									INT						IDENTITY(1,1)	UNIQUE		NOT NULL,
	RoleID									INT													NOT NULL	REFERENCES dbo.MAX_SYS_Role(RoleID),
	UserID									INT													NOT NULL	REFERENCES dbo.MAX_User(UserID),

	UserDetalis								NTEXT												NULL,
	UserName								NVARCHAR(50)							UNIQUE		NOT NULL,
	PassWord								VARBINARY(MAX)										NOT NULL,
	FailedPassAttemptCount					int													NOT NULL	DEFAULT (0),

	MobilePIN								VARBINARY(MAX)										NOT NULL,
	FailedMPinAttemptCount					int													NOT NULL	DEFAULT (0),

	PasswordQuestion						nvarchar(1000)										NOT NULL,
	PasswordAnswer							VARBINARY(MAX)										NOT NULL,
	FailedPassAnswerAttemptCount			int													NOT NULL	DEFAULT (0),

	LastLoginDate							datetime											NOT NULL,
	LastPasswordChangedDate					datetime											NOT NULL,
	LastLockoutDate							datetime											NOT NULL,

	Comments								NVARCHAR(50)										NULL,
	Codex									UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated								BIT													NOT NULL		DEFAULT (0),
	InsertedDate							DATETIME											NOT NULL,
	ModifiedDate							DATETIME											NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (LoginID)
);