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
----		Title		:	TABLE OF PAGE TIME TABLE						----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_TimeTable				----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_TimeTable
(
	TimeTableID							INT						IDENTITY(1,1)			NOT NULL,
	AppID								INT												NOT NULL		REFERENCES MAX_SYS_Application(AppID),
	TimeTableVersion					NVARCHAR(20)									NOT NULL,
	TimeTableTitle						NVARCHAR(50)									NOT NULL,
	Discription							TEXT											NULL,
	
	Comments							NVARCHAR(50)									NULL,
	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate())
	PRIMARY KEY ( TimeTableID )
);



INSERT	INTO	dbo.MAX_PAGE_TimeTable		VALUES	(1,'2014.1','2015 TIME TABLE','','No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable		VALUES	(1,'2015.0','2015 TIME TABLE','','No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable		VALUES	(1,'2015.1','2015 TIME TABLE','','No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable		VALUES	(1,'2015.2','2015 TIME TABLE','','No Comments','TRUE',getdate(),getdate())
