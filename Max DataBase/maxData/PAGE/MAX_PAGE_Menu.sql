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
----		Title		:	TABLE OF SYSTEM BASE							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_BASE				----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_BASE
(
	BaseID								INT							IDENTITY(1,1)		NOT NULL,
	AppID								INT												NOT NULL	REFERENCES MAX_SYS_Application(AppID),
	BaseName							nvarchar(50)									NOT NULL,
	BaseIcon							nvarchar(3048)									NULL,
	BaseType							nvarchar(20)									NULL,
	Discripition						nvarchar(1024)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( BaseID )
);

INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'APPLICATION','http://www.maxford.lk/Max_Data/Max_BaseIcon/APPLICATION.png','non','This is Database APPLICATION','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'MAX BASE','http://www.maxford.lk/Max_Data/Max_BaseIcon/MAX_BASE.png','non','This is Database MAX BASE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'MAX MENU','http://www.maxford.lk/Max_Data/Max_BaseIcon/MAX_MENU.png','non','This is Database MAX MENU','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'SUB MENU','http://www.maxford.lk/Max_Data/Max_BaseIcon/SUB_MENU.png','non','This is Database SUB MENU','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'MAX USERS','http://www.maxford.lk/Max_Data/Max_BaseIcon/MAX_USERS.png','non','This is Database MAX USERS','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'REGISTER','http://www.maxford.lk/Max_Data/Max_BaseIcon/REGISTER.png','non','This is Database REGISTER','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'SLIDE','http://www.maxford.lk/Max_Data/Max_BaseIcon/SLIDE.png','non','This is Database SLIDE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'EVENT','http://www.maxford.lk/Max_Data/Max_BaseIcon/EVENT.png','non','This is Database EVENT','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'NEWS','http://www.maxford.lk/Max_Data/Max_BaseIcon/NEWS.png','non','This is Database NEWS','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'DEBATE','http://www.maxford.lk/Max_Data/Max_BaseIcon/DEBATE.png','non','This is Database DEBATE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'SUBJECT','http://www.maxford.lk/Max_Data/Max_BaseIcon/SUBJECT.png','non','This is Database SUBJECT','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'TIMETABLE','http://www.maxford.lk/Max_Data/Max_BaseIcon/TIMETABLE.png','non','This is Database TIMETABLE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'HALL','http://www.maxford.lk/Max_Data/Max_BaseIcon/HALL.png','non','This is Database HALL','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'PAGE','http://www.maxford.lk/Max_Data/Max_BaseIcon/PAGE.png','non','This is Database PAGE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'GALLERY','http://www.maxford.lk/Max_Data/Max_BaseIcon/GALLERY.png','non','This is Database GALLERY','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'DOWNLOAD','http://www.maxford.lk/Max_Data/Max_BaseIcon/DOWNLOAD.png','non','This is Database DOWNLOAD','TRUE',getdate(),getdate())





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
----		Title		:	TABLE OF SYSTEM MENU							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_MENU				----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_MENU
(
	MenuID								INT							IDENTITY(1,1)		NOT NULL,
	BaseID								INT												NOT NULL	REFERENCES MAX_SYS_BASE(BaseID),
	MenuName							nvarchar(70)									NOT NULL,
	MenuIcon							nvarchar(3048)									NULL,
	MenuType							nvarchar(20)									NULL,
	MenuTitle							nvarchar(200)									NULL,
	Discripition						nvarchar(2048)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( MenuID )
);


INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(1,'APPLICATION','http://www.maxford.lk/Max_Data/Max_MenuIcon/APPLICATION.png','non','This is Menu APPLICATION','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(2,'MAX BASE','http://www.maxford.lk/Max_Data/Max_MenuIcon/MAX_BASE.png','non','This is Menu MAX BASE','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(3,'MAX MENU','http://www.maxford.lk/Max_Data/Max_MenuIcon/MAX_MENU.png','non','This is Menu MAX MENU','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(4,'SUB MENU','http://www.maxford.lk/Max_Data/Max_MenuIcon/SUB_MENU.png','non','This is Menu SUB MENU','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(5,'MAX USERS','http://www.maxford.lk/Max_Data/Max_MenuIcon/MAX_USERS.png','non','This is Menu MAX USERS','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(6,'REGISTER','http://www.maxford.lk/Max_Data/Max_MenuIcon/REGISTER.png','non','This is Menu REGISTER','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(7,'SLIDE','http://www.maxford.lk/Max_Data/Max_BaseIcon/SLIDE.png','non','This is Menu SLIDE','No Discripition','TRUE',getdate(),getdate())

-- EVENTS
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Special','http://www.maxford.lk/Max_Data/Max_MenuIcon/Special.png','non','This is Menu Special Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Featured','http://www.maxford.lk/Max_Data/Max_MenuIcon/Featured.png','non','This is Menu Featured Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Parents','http://www.maxford.lk/Max_Data/Max_MenuIcon/Parents.png','non','This is Menu Parents Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Students','http://www.maxford.lk/Max_Data/Max_MenuIcon/Students.png','non','This is Menu Students Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Teachers','http://www.maxford.lk/Max_Data/Max_MenuIcon/Teachers.png','non','This is Menu Teachers Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Articles','http://www.maxford.lk/Max_Data/Max_MenuIcon/Articles.png','non','This is Menu Articles Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Books','http://www.maxford.lk/Max_Data/Max_MenuIcon/Books.png','non','This is Menu Books Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Education','http://www.maxford.lk/Max_Data/Max_MenuIcon/Education.png','non','This is Menu Education Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Awards','http://www.maxford.lk/Max_Data/Max_MenuIcon/Awards.png','non','This is Menu Awards Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Games','http://www.maxford.lk/Max_Data/Max_MenuIcon/Games.png','non','This is Menu Games Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Upcomming','http://www.maxford.lk/Max_Data/Max_MenuIcon/Upcomming.png','non','This is Menu Upcomming Events','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(8,'Ongoing','http://www.maxford.lk/Max_Data/Max_MenuIcon/Ongoing.png','non','This is Menu Ongoing Events','No Discripition','TRUE',getdate(),getdate())

-- NEWS
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(9,'Top News','http://www.maxford.lk/Max_Data/Max_MenuIcon/Top_News.png','non','This is Menu Top News','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(9,'Maxford','http://www.maxford.lk/Max_Data/Max_MenuIcon/Maxford.png','non','This is Menu News of Maxford','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(9,'Debates News','http://www.maxford.lk/Max_Data/Max_MenuIcon/Debates_News.png','non','This is Menu Debates News','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(9,'New Teachers','http://www.maxford.lk/Max_Data/Max_MenuIcon/New_Teachers.png','non','This is Menu News of New Teachers','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(9,'New Subjects','http://www.maxford.lk/Max_Data/Max_MenuIcon/New_Subjects.png','non','This is Menu News of New Subjects','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(9,'Class Room','http://www.maxford.lk/Max_Data/Max_MenuIcon/Class_Room.png','non','This is Menu News of Class Room','No Discripition','TRUE',getdate(),getdate())

INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(10,'DEBATE','http://www.maxford.lk/Max_Data/Max_MenuIcon/Debates.png','non','This is Menu DEBATE','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(11,'SUBJECT','http://www.maxford.lk/Max_Data/Max_MenuIcon/Subject.png','non','This is Menu SUBJECT','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(12,'TIMETABLE','http://www.maxford.lk/Max_Data/Max_MenuIcon/TimeTable.png','non','This is Menu TIMETABLE','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(13,'HALL','http://www.maxford.lk/Max_Data/Max_MenuIcon/Hall.png','non','This is Menu HALL','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(14,'PAGE','http://www.maxford.lk/Max_Data/Max_MenuIcon/Page.png','non','This is Menu PAGE','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(15,'GALLERY','http://www.maxford.lk/Max_Data/Max_MenuIcon/Gallery.png','non','This is Menu GALLERY','No Discripition','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_MENU	VALUES	(16,'DOWNLOAD','http://www.maxford.lk/Max_Data/Max_MenuIcon/Download.png','non','This is Menu DOWNLOAD','No Discripition','TRUE',getdate(),getdate())


















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






--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF SYS PAGE CLICK MENU				----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_SYS_PAGE_CLICK_Menu						----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_SYS_PAGE_CLICK_Menu
	@max_AppID			INT,
	@max_BaseID			INT
AS
BEGIN
    SET NOCOUNT ON;
		SELECT MenuID,MenuName,MenuIcon,MenuType,MenuTitle,Discripition 
		FROM dbo.MAX_SYS_MENU 
		WHERE BaseID = (SELECT BaseID FROM dbo.MAX_SYS_BASE WHERE (AppID = (SELECT AppID FROM MAX_SYS_Application WHERE AppID = @max_AppID AND AppActivate = 1) AND	Activiated = 1 AND  BaseID = @max_BaseID )) AND Activiated = 1
END

--EXECUTE dbo.SP_MAX_SYS_PAGE_CLICK_Menu @max_AppID = 1, @max_BaseID = 4












--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF SYS PAGE CLICK MENU SUB			----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_SYS_PAGE_CLICK_MenuSub					----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_SYS_PAGE_CLICK_MenuSub
	@max_AppID			INT,
	@max_BaseID			INT,
    @max_MenuID			INT
AS
BEGIN
    SET NOCOUNT ON;
	BEGIN
			SELECT TableMenu2.MenuID,TableMenu2.SubMenuID,TableMenu1.SubMenuName,TableMenu1.SubMenuIcon,TableMenu1.SubMenuTitle,TableMenu1.Discripition
			FROM dbo.MAX_SYS_MENU_SUB AS TableMenu1, dbo.MAX_SYS_MENUDATA AS TableMenu2 
			WHERE TableMenu1.SubMenuID = TableMenu2.SubMenuID AND TableMenu1.Activiated = 1 AND TableMenu2.MenuID = (SELECT MenuID FROM dbo.MAX_SYS_MENU WHERE BaseID = (SELECT BaseID FROM dbo.MAX_SYS_BASE WHERE (AppID = (SELECT AppID FROM MAX_SYS_Application WHERE AppID = @max_AppID AND AppActivate = 1) AND	Activiated = 1 AND  BaseID = @max_BaseID )) AND Activiated = 1 AND MenuID = @max_MenuID) AND TableMenu2.Activiated = 1
	END
END

--EXECUTE dbo.SP_MAX_SYS_PAGE_CLICK_MenuSub @max_AppID = 1,@max_BaseID = 4 ,@max_MenuID = 17




