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
----		Title		:	TABLE OF VIDEO									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Video				----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_Video
(
	VideoID								UNIQUEIDENTIFIER	UNIQUE	  NONCLUSTERED 		NOT NULL	DEFAULT (NEWID()),
	AppID								INT												NOT NULL	REFERENCES	MAX_SYS_Application(AppID),
	VideoTitle							nvarchar(100)									NOT NULL,
	VideoReadMe							nvarchar(200)									NULL,
	VideoTopTitle						nvarchar(100)									NULL,
	VideoBody							TEXT											NULL,
	VideoLink							nvarchar(2000)									NULL,
	VideoPosterLink						nvarchar(2000)									NULL,
	VideoTheamColorOne					nvarchar(10)									NULL,
	VideoTheamColorTwo					nvarchar(10)									NULL,
	VideoDiscripition					nvarchar(500)									NULL,
	VideoView							BIT												NULL		DEFAULT (1),

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( VideoID )
);


INSERT	INTO	dbo.MAX_PAGE_Video	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','http://www.maxford.lk/Max_Data/Max_Video/maxford_vidio_2.mp4',':#233','#C51445','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Video	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','http://www.maxford.lk/Max_Data/Max_Video/maxford_vidio_3.mp4','#FF4D00','#6C330D','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Video	VALUES	(NEWID(),1,'WE ARE DIFFERENT FROM OTHERS','Maxfordians are trained to be different and face challenges.','','http://www.maxford.lk/Max_Data/Max_Video/maxford_vidio_4.mp4','#F9C806','#726329','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Video	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','http://www.maxford.lk/Max_Data/Max_Video/maxford_vidio_5.mp4','#52DC59','#376C38','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Video	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','http://www.maxford.lk/Max_Data/Max_Video/maxford_vidio_6.mp4','#098FF2','#2C6167','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Video	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','http://www.maxford.lk/Max_Data/Max_Video/maxford_vidio_7.mp4','#FD5375','#853255','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Video	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','http://www.maxford.lk/Max_Data/Max_Video/maxford_vidio_2.mp4','#233','#C51445','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Video	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','http://www.maxford.lk/Max_Data/Max_Video/maxford_vidio_3.mp4','#FF4D00','#6C330D','No Discription','TRUE','TRUE',getdate(),getdate())


DROP TABLE dbo.MAX_PAGE_Video