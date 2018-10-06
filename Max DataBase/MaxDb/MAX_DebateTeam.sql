-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of MAX_DebateTeam
-- ===============================================================================
CREATE TABLE MAX_DebateTeam
(
	DebateTeamID						int						PRIMARY KEY			IDENTITY(1,1)		NOT NULL,
	DebateID							int																NOT NULL		REFERENCES MAX_Debate(DebateID),
	DebatertolkingTopic					nvarchar(1024)													NULL,
	DebateTeamParty						bit																NULL,
	StudentProfermenceDetails			nvarchar(1024)													NULL,
	AboutTheTeacher						nvarchar(1024)													NULL,
	BestDebeterInTeam					nvarchar(200)													NULL,
	DebaterProfermanserRate				int																NULL,

	Comments				NVARCHAR(50)													NULL,
	Codex					UNIQUEIDENTIFIER								UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT																NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL		DEFAULT (getdate())
);