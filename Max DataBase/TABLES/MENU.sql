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
