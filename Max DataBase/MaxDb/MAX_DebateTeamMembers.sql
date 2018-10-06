-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of MAX_DebateTeamMembers
-- ===============================================================================
CREATE TABLE MAX_DebateTeamMembers
(
	DebateTeamID						int																NOT NULL		REFERENCES MAX_DebateTeam(DebateTeamID),
	UserId								int																NOT NULL		REFERENCES MAX_User(UserId),
	ProferRate							nvarchar(20)													NULL,
	TeacherAboutStudent					nvarchar(1024)													NULL,
	GestAboutStudent					nvarchar(1024)													NULL,
	TolkingTime							nvarchar(10)													NULL			DEFAULT ('10.00'),
	ProferOne							nvarchar(50)													NULL,
	ProferTwo							nvarchar(50)													NULL,
	ProferThree							nvarchar(50)													NULL,
	ProferFore							nvarchar(50)													NULL,
	ProferFive							nvarchar(50)													NULL,
	PresentageOne						int																NULL,
	PresentageTwo						int																NULL,
	StudentComment						nvarchar(1024)													NULL,

	Comments				NVARCHAR(50)													NULL,
	Codex					UNIQUEIDENTIFIER								UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT																NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL		DEFAULT (getdate())
);