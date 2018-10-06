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
----		Title		:	TABLE OF TIME TABLE								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_TimeTable_MONDAY		----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_TimeTable_MONDAY
(
	MONDAYID							INT							IDENTITY(1,1)		NOT NULL,
	TimeTableID							INT												NULL			REFERENCES dbo.MAX_PAGE_TimeTable(TimeTableID),
	StartTime							TIME											NOT NULL,
	EndTime								TIME											NOT NULL,
	TeacherID							INT												NOT NULL		REFERENCES dbo.MAX_PAGE_Teacher(TeacherID),
	SubjectId							INT												NOT NULL		REFERENCES dbo.MAX_PAGE_Subject(SubjectId),
	HallID								INT												NULL			REFERENCES dbo.MAX_PAGE_Hall(HallID),

	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate())
	PRIMARY KEY ( MONDAYID )
);



INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(1,'08:30','12:30',1,1,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(1,'09:30','10:30',2,1,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(1,'12:30','11:30',2,1,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(1,'12:30','10:30',2,1,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(1,'04:30','06:30',2,1,1,'TRUE',getdate(),getdate())

INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(2,'08:30','12:30',1,1,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(2,'09:30','10:30',2,1,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(3,'12:30','11:30',2,1,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(3,'12:30','10:30',2,1,1,'TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_TimeTable_MONDAY	VALUES	(3,'04:30','06:30',2,1,1,'TRUE',getdate(),getdate())
