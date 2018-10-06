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
----		Title		:	TABLE OF NEWS									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_News				----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_News
(
	NewsID								UNIQUEIDENTIFIER	UNIQUE	  NONCLUSTERED 		NOT NULL	DEFAULT (NEWID()),
	AppID								INT												NOT NULL	REFERENCES	MAX_SYS_Application(AppID),
	NewsTitleMain						nvarchar(100)									NOT NULL,
	NewsTitleSub						nvarchar(400)									NULL,
	NewsBodyMain						TEXT											NULL,
	NewsBodySub							TEXT											NULL,
	NewsLink							nvarchar(2048)									NULL,
	NewsPictureLink						nvarchar(2048)									NULL,
	NewsTheam							nvarchar(50)									NULL,
	NewsImage							IMAGE											NULL,
	NewsTime							TIME											NULL,
	NewsDate							DATE											NULL,
	NewsDateOne							DATETIME										NULL,
	NewsDatePre							DATETIME										NULL,
	NewsDiscripition					nvarchar(1024)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( NewsID )
);

--------------------------------------------------------------------------------
----		Title		:	TABLE OF PAGE NEWS MENU							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Event_MENU		----
--------------------------------------------------------------------------------
CREATE TABLE dbo.MAX_PAGE_News_MENU
(
	NewsID			UNIQUEIDENTIFIER		NOT NULL		REFERENCES		MAX_PAGE_News(NewsID),
	MENUDATAID		INT						NOT NULL		REFERENCES		MAX_SYS_MENUDATA(MENUDATAID),

	Activiated		BIT						NOT NULL		DEFAULT (0),
	PRIMARY KEY ( NewsID )
);


DECLARE @ID AS UNIQUEIDENTIFIER 
SET @ID = NEWID()
INSERT	INTO	dbo.MAX_PAGE_News			VALUES		(@ID,1,'2015 TIME TABLE','','This is Time Table Of 2015','','http://www.maxford.lk/','','MAIN','',GETDATE(),GETDATE(),'','','No Discription','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_News_MENU		VALUES		(@ID,109,'TRUE'); --73 to 108














--------------------------------------------------------------------------------
----		Title		:	TABLE OF NEWS COMMENT							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_News_COMT			----
--------------------------------------------------------------------------------
CREATE TABLE dbo.MAX_PAGE_News_COMT
(
	NewsCommentID						UNIQUEIDENTIFIER	UNIQUE	  NONCLUSTERED 		NOT NULL	DEFAULT (NEWID()),
	NewsID								UNIQUEIDENTIFIER								NOT NULL	REFERENCES MAX_PAGE_News(NewsID),
	NewsCommentTitle					nvarchar(100)									NULL,
	NewsCommentBody						TEXT											NULL,
	NewsCommentType						nvarchar(10)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( NewsCommentID )
);




























--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF PAGE NEWS CLICK MENUSUBNEWSDATA	----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_PAGE_NEWS_CLICK_MenuSubNewsData			----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_PAGE_NEWS_CLICK_MenuSubNewsData
	@max_AppID			INT,
	@max_BaseID			INT,
    @max_MenuID			INT,
    @max_SubMenuID		INT			
AS
BEGIN
		SELECT 
			TB1.MENUDATAID,
			TB3.MenuID,
			TB3.SubMenuID,
			TB2.NewsID,
			TB2.NewsTitleMain,
			TB2.NewsTitleSub,
			TB2.NewsBodyMain,
			TB2.NewsBodySub,
			TB2.NewsLink,
			TB2.NewsPictureLink,
			TB2.NewsTheam,
			TB2.NewsImage,
			TB2.NEWSTime,
			TB2.NewsDate,
			TB2.NewsDateOne,
			TB2.NewsDatePre
		FROM 
			dbo.MAX_PAGE_News_MENU AS TB1, 
			dbo.MAX_PAGE_News AS TB2, 
			dbo.MAX_SYS_MENUDATA AS TB3
		WHERE
			TB1.MENUDATAID =(SELECT MENUDATAID FROM dbo.MAX_SYS_MENUDATA WHERE MenuID = (SELECT MenuID FROM dbo.MAX_SYS_MENU WHERE BaseID = (SELECT BaseID FROM dbo.MAX_SYS_BASE WHERE (AppID = (SELECT AppID FROM MAX_SYS_Application WHERE AppID = @max_AppID AND AppActivate = 1) AND	Activiated = 1 AND  BaseID = @max_BaseID )) AND Activiated = 1 AND MenuID = @max_MenuID) AND SubMenuID = (SELECT SubMenuID FROM dbo.MAX_SYS_MENU_SUB WHERE Activiated = 1 AND SubMenuID = @max_SubMenuID) AND Activiated = 1)
			AND TB1.NewsID = TB2.NewsID
			AND TB1.MENUDATAID = TB3.MENUDATAID
			AND TB1.Activiated = 1 
			AND TB2.Activiated = 1 
END

--EXECUTE dbo.SP_MAX_PAGE_NEWS_CLICK_MenuSubNewsData
--@max_AppID = 1,
--@max_BaseID = 4,
--@max_MenuID = 17,
--@max_SubMenuID = 2




