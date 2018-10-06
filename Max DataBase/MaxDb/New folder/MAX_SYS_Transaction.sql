-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_Transaction
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_Transaction
(
	TransactionID				UNIQUEIDENTIFIER		PRIMARY KEY		NONCLUSTERED	NOT NULL	DEFAULT (newid()),
	UserID						INT														NOT NULL	REFERENCES		dbo.MAX_User(UserID),
	TransactionBase				NVARCHAR(50)											NOT NULL,	-- / dbo.ACT_User / dbo.ACT_AccountTypes /dbo.ACT_AccountRates / dbo.ACT_AccountNumber / dbo.ACT_Branch /
	TransactionType				NVARCHAR(50)											NOT NULL,	-- / ACTIVATE / DEACTIVATE / DELETE / CREATE / REMOVE / ADD / UPDATE ivate ctiviatADD / DELETE /
	TransactionDetails			NTEXT													NOT NULL,											
	TransactionDate				DATETIME												NOT NULL,

	Comments					NVARCHAR(100)											NULL,
	Codex						UNIQUEIDENTIFIER										NOT NULL,
	CommentModifiedDate			DATETIME												NULL
);