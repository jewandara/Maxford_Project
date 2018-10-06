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
----		Title		:	TABLE OF SYSTEM MENU SUB						----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_MENU_SUB			----
--------------------------------------------------------------------------------
CREATE TABLE dbo.MAX_SYS_MENU_SUB
(
	SubMenuID							INT							IDENTITY(1,1)		NOT NULL,
	SubMenuName							nvarchar(100)									NOT NULL	DEFAULT ('NON'),
	SubMenuIcon							nvarchar(2048)									NULL,
	SubMenuTitle						nvarchar(200)									NULL,
	Discripition						nvarchar(2048)									NULL,
	
	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( SubMenuID )
);

-- For Events
INSERT	INTO	dbo.MAX_SYS_MENU_SUB	VALUES	('LETEST','http://www.maxford.lk/Max_Data/Max_MenuSubIcon/LETEST.png','This is LETEST','','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU_SUB	VALUES	('POPULAR','http://www.maxford.lk/Max_Data/Max_MenuSubIcon/POPULAR.png','This is POPULAR','','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU_SUB	VALUES	('UPCOMMING','http://www.maxford.lk/Max_Data/Max_MenuSubIcon/UPCOMMING.png','This is UPCOMMING','','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU_SUB	VALUES	('RELATED','http://www.maxford.lk/Max_Data/Max_MenuSubIcon/RELATED.png','This is RELATED','','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU_SUB	VALUES	('FAVORITE','http://www.maxford.lk/Max_Data/Max_MenuSubIcon/FAVORITE.png','This is FAVORITE','','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU_SUB	VALUES	('IMPORTANT','http://www.maxford.lk/Max_Data/Max_MenuSubIcon/IMPORTANT.png','This is IMPORTANT','','TRUE',getdate(),getdate())

--------------------------------------------------------------------------------
----		Title		:	TABLE OF SYSTEM MENU DATA						----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_MENUDATA			----
--------------------------------------------------------------------------------
CREATE TABLE dbo.MAX_SYS_MENUDATA
(
	MENUDATAID							INT							IDENTITY(1,1)		NOT NULL,
	MenuID								INT												NOT NULL	REFERENCES dbo.MAX_SYS_MENU(MenuID),
	SubMenuID							INT												NOT NULL	REFERENCES dbo.MAX_SYS_MENU_SUB(SubMenuID),
	
	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( MENUDATAID )
);

--	EVENTS BASE --
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(8,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(8,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(8,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(8,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(8,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(8,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(9,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(9,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(9,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(9,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(9,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(9,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(10,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(10,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(10,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(10,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(10,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(10,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(11,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(11,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(11,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(11,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(11,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(11,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(12,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(12,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(12,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(12,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(12,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(12,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(13,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(13,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(13,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(13,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(13,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(13,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(14,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(14,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(14,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(14,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(14,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(14,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(15,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(15,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(15,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(15,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(15,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(15,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(16,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(16,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(16,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(16,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(16,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(16,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(17,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(17,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(17,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(17,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(17,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(17,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(18,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(18,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(18,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(18,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(18,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(18,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(19,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(19,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(19,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(19,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(19,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(19,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(20,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(20,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(20,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(20,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(20,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(20,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(21,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(21,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(21,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(21,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(21,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(21,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(22,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(22,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(22,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(22,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(22,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(22,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(23,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(23,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(23,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(23,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(23,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(23,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(24,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(24,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(24,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(24,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(24,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(24,6,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(25,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(25,2,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(25,3,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(25,4,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(25,5,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENUDATA	VALUES	(25,6,'TRUE',getdate(),getdate())

