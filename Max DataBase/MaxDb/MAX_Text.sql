-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_TextSettings
-- ===============================================================================
CREATE TABLE dbo.MAX_TextSettings
(
	TextID						uniqueidentifier		PRIMARY KEY		NOT	NULL,
	TextType					NVARCHAR(1)								NOT NULL,	-- / B / U / I / S - Small / L - Large / C - Cut / 
	TextIndex					NTEXT									NOT NULL
);

-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_TextLink
-- ===============================================================================
CREATE TABLE dbo.MAX_TextLink
(
	TextID						uniqueidentifier						NOT NULL		REFERENCES dbo.MAX_TextSettings(TextID),
	NewsID						uniqueidentifier						NOT NULL		REFERENCES dbo.MAX_News(NewsID)
);