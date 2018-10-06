--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF MAIN PAGE							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_MAIN_PAGE_TopNewsBox						----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_MAIN_PAGE_TopNewsBox
	@max_AppID			INT,
	@max_BaseID			INT,
	@max_SubMenuID		INT
AS
BEGIN
		SELECT TOP 3
			TB5.BaseID,
			TB3.MENUDATAID,
			TB4.MenuID,
			TB2.SubMenuID,
			TB0.NewsID,
			TB0.NewsTitleMain,
			TB0.NewsTitleSub,
			TB0.NewsBodyMain,
			TB0.NewsBodySub,
			TB0.NewsLink,
			TB0.NewsPictureLink,
			TB0.NewsTheam,
			TB0.NewsImage,
			datename(HOUR, TB0.NewsTime) As 'NewsTimeHOUR',
			datename(MINUTE, TB0.NewsTime) As 'NewsTimeMINUTE',
			datename(SECOND, TB0.NewsTime) As 'NewsTimeSECOND',
			datename(DD, TB0.NewsDate) AS 'NewsDateDATE',
			datename(mm, TB0.NewsDate) AS 'NewsDateMONTH',
			datename(yyyy, TB0.NewsDate) AS 'NewsDateYEAR',
			TB0.NewsDateOne,
			datename(HOUR, TB0.NewsDatePre) As 'NewsDatePreHOUR',
			datename(MINUTE, TB0.NewsDatePre) As 'NewsDatePreMINUTE',
			datename(SECOND, TB0.NewsDatePre) As 'NewsDatePreSECOND',
			datename(DD, TB0.NewsDatePre) AS 'NewsDatePreDATE',
			datename(mm, TB0.NewsDatePre) AS 'NewsDatePreMONTH',
			datename(yyyy, TB0.NewsDatePre) AS 'NewsDatePreYEAR',
			datename(DD, TB0.InsertedDate) + ' : ' + datename(mm, TB0.InsertedDate) + ' : ' + datename(yyyy, TB0.InsertedDate) AS 'InsertDate'
		FROM
			dbo.MAX_PAGE_News AS TB0, 
			dbo.MAX_PAGE_News_MENU AS TB1, 
			dbo.MAX_SYS_MENU_SUB AS TB2,
			dbo.MAX_SYS_MENUDATA AS TB3,
		    dbo.MAX_SYS_MENU AS TB4,
		    dbo.MAX_SYS_BASE AS TB5
		WHERE 
			TB5.AppID = (SELECT AppID FROM MAX_SYS_Application WHERE AppID = @max_AppID AND AppActivate = 1) 
			AND	TB5.BaseID = @max_BaseID AND TB5.Activiated = 1 
			AND TB5.BaseID = TB4.BaseID
			AND TB4.MenuID = TB3.MenuID
			AND TB3.SubMenuID = TB2.SubMenuID AND TB2.SubMenuID = @max_SubMenuID AND TB2.Activiated = 1 
			AND TB3.MENUDATAID = TB1.MENUDATAID
			AND TB1.NewsID = TB0.NewsID	
		ORDER BY 
			TB0.NewsID DESC
END

--EXECUTE dbo.SP_MAX_MAIN_PAGE_TopNewsBox	@max_AppID		=	1,	@max_BaseID		=	9,	@max_SubMenuID	=	1





--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF MAIN PAGE							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_MAIN_PAGE_TopEventBox					----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_MAIN_PAGE_TopEventBox
	@max_AppID			INT,
	@max_BaseID			INT,
	@max_SubMenuID		INT
AS
BEGIN
		SELECT TOP 3
			TB5.BaseID,
			TB3.MENUDATAID,
			TB4.MenuID,
			TB2.SubMenuID,
			TB0.EventID,
			TB0.EventTitleMain,
			TB0.EventTitleSub,
			TB0.EventBodyMain,
			TB0.EventBodySub,
			TB0.EventLink,
			TB0.EventPictureLink,
			TB0.EventTheam,
			datename(DD, TB0.InsertedDate) + ' : ' + datename(mm, TB0.InsertedDate) + ' : ' + datename(yyyy, TB0.InsertedDate) AS 'InsertDate'
		FROM
			dbo.MAX_PAGE_Event AS TB0, 
			dbo.MAX_PAGE_Event_MENU AS TB1, 
			dbo.MAX_SYS_MENU_SUB AS TB2,
			dbo.MAX_SYS_MENUDATA AS TB3,
		    dbo.MAX_SYS_MENU AS TB4,
		    dbo.MAX_SYS_BASE AS TB5
		WHERE 
			TB5.AppID = (SELECT AppID FROM MAX_SYS_Application WHERE AppID = @max_AppID AND AppActivate = 1) 
			AND	TB5.BaseID = @max_BaseID AND TB5.Activiated = 1 
			AND TB5.BaseID = TB4.BaseID
			AND TB4.MenuID = TB3.MenuID
			AND TB3.SubMenuID = TB2.SubMenuID AND TB2.SubMenuID = @max_SubMenuID AND TB2.Activiated = 1 
			AND TB3.MENUDATAID = TB1.MENUDATAID
			AND TB1.EventID = TB0.EventID	
		ORDER BY 
			TB0.EventID DESC
END

--EXECUTE dbo.SP_MAX_MAIN_PAGE_TopEventBox @max_AppID = 1, @max_BaseID	= 8, @max_SubMenuID	= 1




--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF MAIN PAGE							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_MAIN_PAGE_BownEventBox					----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_MAIN_PAGE_BownEventBox
	@max_AppID			INT,
	@max_BaseID			INT,
	@max_MenuID			INT,
	@max_SubMenuID		INT
AS
BEGIN
		SELECT TOP 4
			TB5.BaseID,
			TB3.MENUDATAID,
			TB4.MenuID,
			TB2.SubMenuID,
			TB0.EventID,
			TB0.EventTitleMain,
			TB0.EventTitleSub,
			TB0.EventBodyMain,
			TB0.EventBodySub,
			TB0.EventLink,
			TB0.EventPictureLink,
			TB0.EventTheam,
			datename(DD, TB0.InsertedDate) + ' : ' + datename(mm, TB0.InsertedDate) + ' : ' + datename(yyyy, TB0.InsertedDate) AS 'InsertDate'
		FROM
			dbo.MAX_PAGE_Event AS TB0, 
			dbo.MAX_PAGE_Event_MENU AS TB1, 
			dbo.MAX_SYS_MENU_SUB AS TB2,
			dbo.MAX_SYS_MENUDATA AS TB3,
		    dbo.MAX_SYS_MENU AS TB4,
		    dbo.MAX_SYS_BASE AS TB5
		WHERE 
			TB5.AppID = (SELECT AppID FROM MAX_SYS_Application WHERE AppID = @max_AppID AND AppActivate = 1) 
			AND	TB5.BaseID = @max_BaseID AND TB5.Activiated = 1 
			AND TB5.BaseID = TB4.BaseID
			AND TB4.MenuID = TB3.MenuID
			AND TB3.SubMenuID = TB2.SubMenuID AND TB2.SubMenuID = @max_SubMenuID AND TB2.Activiated = 1 
			AND TB3.MENUDATAID = TB1.MENUDATAID
			AND TB1.EventID = TB0.EventID
			AND TB4.MenuID = @max_MenuID
		ORDER BY 
			TB0.EventID DESC
END

--EXECUTE dbo.SP_MAX_MAIN_PAGE_BownEventBox @max_AppID = 1, @max_BaseID	= 8, @max_MenuID = 5, @max_SubMenuID = 1













