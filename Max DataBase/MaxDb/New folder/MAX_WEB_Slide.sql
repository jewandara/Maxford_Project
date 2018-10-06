-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_WEB_Slide
-- ===============================================================================
CREATE TABLE dbo.MAX_WEB_Slide
(
	WebSlideID					uniqueidentifier	PRIMARY KEY		NONCLUSTERED	NOT NULL		DEFAULT (newid()),
	WebDataID					uniqueidentifier									NOT NULL		REFERENCES MAX_WEB_Data(WebDataID),
	WebSlideType				nvarchar(25)										NOT NULL,		-- / TOP / BOTTOM / --
	WebSlideScript				nvarchar(2048)										NULL,
	WebSlideTitle				nvarchar(25)										NULL,
	WebSlideTitleLink			nvarchar(2048)										NULL,
	WebSlideSubTitle			nvarchar(50)										NULL,
	WebSlideSubTitleLink		nvarchar(2048)										NULL,
	WebSlideDiscription			nvarchar(200)										NULL,
	WebSlidePictureLink			nvarchar(2048)										NULL,
	WebSlideWidth				int													NULL,
	WebSlideHeight				int													NULL,

	Comments				NVARCHAR(50)										NULL,
	Codex					UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT													NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME											NOT NULL,
	ModifiedDate			DATETIME											NOT NULL		DEFAULT (getdate())
);