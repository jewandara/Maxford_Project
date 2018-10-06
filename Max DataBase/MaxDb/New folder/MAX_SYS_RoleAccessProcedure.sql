-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_RoleAccessProcedure
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_RoleAccessProcedure
(
	RoleID				INT				NOT NULL	REFERENCES dbo.MAX_SYS_Role(RoleID) ON DELETE CASCADE,
	ProcedureID			INT				NOT NULL	REFERENCES dbo.MAX_SYS_Procedure(ProcedureID) ON DELETE CASCADE,
	Block				BIT				NOT NULL	DEFAULT (0)
);
