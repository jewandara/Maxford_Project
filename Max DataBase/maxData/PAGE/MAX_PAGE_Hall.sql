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
----		Title		:	TABLE OF HALL									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Hall				----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_Hall
(
	HallID								INT							IDENTITY(1,1)		NOT NULL,
	AppID								INT												NOT NULL	REFERENCES MAX_SYS_Application(AppID),
	HallTitle							nvarchar(100)									NOT NULL,
	HallBody							TEXT											NOT NULL,
	HallName							nvarchar(50)									NOT NULL,
	HallLocation						nvarchar(256)									NULL,
	HallType							nvarchar(20)									NULL		DEFAULT ('STUDY'), -- / STUDY / CAFTREEN / TOILET / LECTURE / CAR PARK
	HallCapacity						int												NULL		DEFAULT	(50),
	HallFlow							int												NULL		DEFAULT	(1),
	HallNumberOfDesk					int												NULL		DEFAULT	(50),
	HallNumberOfChires					int												NULL		DEFAULT	(50),
	HallPicture							image											NULL,
	HallDiscripition					nvarchar(1024)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( HallID )
);




INSERT	INTO	dbo.MAX_PAGE_Hall	VALUES	(1,'Main Hall','Main Hall BODY','Main Hall','','',0,1,0,0,'','No Discription','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Hall	VALUES	(1,'Top Hall','Top Hall BODY','Hall Top','','',0,2,0,0,'','No Discription','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Hall	VALUES	(1,'Down Hall','Down Hall BODY','Down Hall','','',0,2,0,0,'','No Discription','TRUE',getdate(),getdate())

