-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_WEB_PageAccess
-- ===============================================================================
CREATE TABLE dbo.MAX_WEB_PageAccess
(
	WebPageID					uniqueidentifier									NOT NULL		REFERENCES MAX_WEB_Data(WebDataID),
	RoleID						int													NOT NULL		REFERENCES MAX_SYS_Role(RoleID),
	WebDataID					uniqueidentifier									NULL			REFERENCES MAX_WEB_Data(WebDataID),
	WebSlideID					uniqueidentifier									NULL			REFERENCES MAX_WEB_Data(WebDataID),
	WebBlock					bit													NOT NULL		DEFAULT (1),
	
	Comments					NVARCHAR(50)										NULL,
	ModifiedDate				DATETIME											NOT NULL		DEFAULT (getdate())
);