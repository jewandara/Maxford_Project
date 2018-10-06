----========================================================================----
----						******@@@@@@@@*******							----
----						****@@@@O@@@@@@@*****							----
----						***@@@@@@@@@@@@@@****							----
----						**@@@@********@@@@***							----
----						**@@@**********@@@**O							----
----						**@@*******O****@@***							----
----						***@************@****							----
----						O**@****O*******@****							----
----						****@**********@*****							----
----						*****O********@******							----
----						******@******@*******							----
----						*******O@@@@@********							----
--------------------------------------------------------------------------------
----		Title		:	TABLE OF EVENT									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Event				----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_Event
(
	EventID								UNIQUEIDENTIFIER	UNIQUE	  NONCLUSTERED 		NOT NULL	DEFAULT (NEWID()),
	AppID								INT												NOT NULL	REFERENCES	MAX_SYS_Application(AppID),
	EventTitleMain						nvarchar(100)									NOT NULL,
	EventTitleSub						nvarchar(400)									NULL,
	EventBodyMain						TEXT											NULL,
	EventBodySub						TEXT											NULL,
	EventLink							nvarchar(2048)									NULL,
	EventPictureLink					nvarchar(2048)									NULL,
	EventTheam							nvarchar(50)									NULL,
	EventDiscripition					nvarchar(1024)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( EventID )
);

--------------------------------------------------------------------------------
----		Title		:	TABLE OF PAGE EVENT MENU						----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Event_MENU		----
--------------------------------------------------------------------------------
CREATE TABLE dbo.MAX_PAGE_Event_MENU
(
	EventID			UNIQUEIDENTIFIER		NOT NULL		REFERENCES		MAX_PAGE_Event(EventID),
	MENUDATAID		INT						NOT NULL		REFERENCES		MAX_SYS_MENUDATA(MENUDATAID),
	
	Activiated		BIT						NOT NULL		DEFAULT (0),
	PRIMARY KEY ( EventID )
);


DECLARE @ID AS UNIQUEIDENTIFIER 
SET @ID = NEWID()
INSERT	INTO	dbo.MAX_PAGE_Event			VALUES		(@ID,1,'2015 TIME TABLE','','This is Time Table Of 2015','','http://www.maxford.lk/','','MAIN','No Discription','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Event_MENU		VALUES		(@ID,5,'TRUE');
-----------------------------------------------------
INSERT	INTO	dbo.MAX_PAGE_Event	VALUES	(NEWID(),'2015 TIME TABLE','<img src="Max_Data/Max_Images/timeTable.png"/>','This is Time Table Of 2015','','http://www.maxford.lk/maxSchedule/Default.aspx','','TOP','No Discription','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Event	VALUES	(NEWID(),'Our Little Footprints','<video controls width="320px"><source src="Max_Data/Max_Video/Maxford%20class%20mates.MP4" type="video/mp4"/></video>','Our Little Footprints','','http://www.maxford.lk/','','TOP','No Discription','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Event	VALUES	(NEWID(),'Elevation of The Building','<img src="Max_Data/Max_LocalResources/Max_Event/buildding.jpg"/>','Elevation of The Building','','http://www.maxford.lk/','','TOP','No Discription','TRUE',getdate(),getdate())




--------------------------------------------------------------------------------
----		Title		:	TABLE OF EVENT COMMENT							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Event_COMT		----
--------------------------------------------------------------------------------
CREATE TABLE dbo.MAX_PAGE_Event_COMT
(
	EventCommentID						UNIQUEIDENTIFIER	UNIQUE	  NONCLUSTERED 		NOT NULL	DEFAULT (NEWID()),
	EventID								UNIQUEIDENTIFIER								NOT NULL	REFERENCES MAX_PAGE_Event(EventID),
	EventCommentTitle					nvarchar(100)									NULL,
	EventCommentBody					TEXT											NULL,
	EventCommentType					nvarchar(10)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( EventCommentID )
);


















--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF PAGE EVENT CLICK MENUSUBEVENTDATA	----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_PAGE_EVENT_CLICK_MenuSubEventData		----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_PAGE_EVENT_CLICK_MenuSubEventData
	@max_AppID			INT,
	@max_BaseID			INT,
    @max_MenuID			INT,
    @max_SubMenuID		INT			
AS
BEGIN
		SELECT TB1.MENUDATAID,TB3.MenuID,TB3.SubMenuID,TB2.EventID,TB2.EventTitleMain,TB2.EventTitleSub,TB2.EventBodyMain,TB2.EventBodySub,TB2.EventLink,TB2.EventPictureLink 
		FROM dbo.MAX_PAGE_Event_MENU AS TB1, dbo.MAX_PAGE_Event AS TB2, dbo.MAX_SYS_MENUDATA AS TB3
		WHERE
		TB1.MENUDATAID =(SELECT MENUDATAID FROM dbo.MAX_SYS_MENUDATA WHERE MenuID = (SELECT MenuID FROM dbo.MAX_SYS_MENU WHERE BaseID = (SELECT BaseID FROM dbo.MAX_SYS_BASE WHERE (AppID = (SELECT AppID FROM MAX_SYS_Application WHERE AppID = @max_AppID AND AppActivate = 1) AND	Activiated = 1 AND  BaseID = @max_BaseID )) AND Activiated = 1 AND MenuID = @max_MenuID) AND SubMenuID = (SELECT SubMenuID FROM dbo.MAX_SYS_MENU_SUB WHERE Activiated = 1 AND SubMenuID = @max_SubMenuID) AND Activiated = 1)
		AND 
		TB1.Activiated = 1 AND TB2.Activiated = 1 AND TB1.EventID = TB2.EventID AND TB1.MENUDATAID = TB3.MENUDATAID
END

EXECUTE dbo.SP_MAX_PAGE_EVENT_CLICK_MenuSubEventData
@max_AppID = 1,
@max_BaseID	= 8,
@max_MenuID = 9,
@max_SubMenuID = 1


