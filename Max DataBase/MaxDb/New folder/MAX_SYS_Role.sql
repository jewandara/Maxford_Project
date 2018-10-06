-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_Role
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_Role
(
	RoleID							INT					IDENTITY(1,1)	UNIQUE			NOT NULL,
	RoleName						VARBINARY(MAX)										NOT NULL,

	Comments						NVARCHAR(50)										NULL,									-- Comments By Users Only
	Codex							UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),		-- Use For Transaction Data
	Activiated						BIT													NOT NULL		DEFAULT (0),			-- Activate & Deactivate the Recode Data
	InsertedDate					DATETIME											NOT NULL,								-- First Time Inserted Date
	ModifiedDate					DATETIME											NOT NULL		DEFAULT (getdate()),	-- Last Time Updated Date
	PRIMARY KEY (RoleID)
);