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
	BaseIcon							nvarchar(2048)									NULL,
	BaseType							nvarchar(20)									NULL,
	Discripition						nvarchar(1024)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( BaseID )
);

INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'APPLICATION','Max_Data/Max_BaseIcon/APPLICATION.png','non','This is Database APPLICATION','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'MAX BASE','Max_Data/Max_BaseIcon/MAX_BASE.png','non','This is Database MAX BASE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'MAX MENU','Max_Data/Max_BaseIcon/MAX_MENU.png','non','This is Database MAX MENU','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'SUB MENU','Max_Data/Max_BaseIcon/SUB_MENU.png','non','This is Database SUB MENU','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'MAX USERS','Max_Data/Max_BaseIcon/MAX_USERS.png','non','This is Database MAX USERS','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'REGISTER','Max_Data/Max_BaseIcon/REGISTER.png','non','This is Database REGISTER','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'SLIDE','Max_Data/Max_BaseIcon/SLIDE.png','non','This is Database SLIDE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'EVENT','Max_Data/Max_BaseIcon/EVENT.png','non','This is Database EVENT','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'NEWS','Max_Data/Max_BaseIcon/NEWS.png','non','This is Database NEWS','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'DEBATE','Max_Data/Max_BaseIcon/DEBATE.png','non','This is Database DEBATE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'SUBJECT','Max_Data/Max_BaseIcon/SUBJECT.png','non','This is Database SUBJECT','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'TIMETABLE','Max_Data/Max_BaseIcon/TIMETABLE.png','non','This is Database TIMETABLE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'HALL','Max_Data/Max_BaseIcon/HALL.png','non','This is Database HALL','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'PAGE','Max_Data/Max_BaseIcon/PAGE.png','non','This is Database PAGE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'GALLERY','Max_Data/Max_BaseIcon/GALLERY.png','non','This is Database GALLERY','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_BASE	VALUES	(1,'DOWNLOAD','Max_Data/Max_BaseIcon/DOWNLOAD.png','non','This is Database DOWNLOAD','TRUE',getdate(),getdate())