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
----		Description :	This is Table of dbo.MAX_TimeTable				----
----========================================================================----
CREATE TABLE dbo.MAX_TimeTable
(
	TimeTableID							INT							IDENTITY(1,1)		NOT NULL,
	PageTimeTableID						INT												NULL			REFERENCES dbo.MAX_PAGE_TimeTable(PageTimeTable),
	TimeWeek							NVARCHAR(30)									NOT NULL,
	StartTime							NVARCHAR(10)									NOT NULL,
	EndTime								NVARCHAR(10)									NOT NULL,
	TeacherID							INT												NOT NULL		REFERENCES dbo.MAX_Teacher(TeacherID),
	SubjectId							INT												NOT NULL		REFERENCES dbo.MAX_Subject(SubjectId),
	HallID								INT												NULL			REFERENCES dbo.MAX_Hall(HallID),

	Comments							NVARCHAR(50)									NULL,
	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate())
	PRIMARY KEY ( TimeTableID )
);


INSERT	INTO	dbo.MAX_TimeTable	VALUES	(1,'Mon Day','08:30','10:30',2,1,1,'No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_TimeTable	VALUES	(1,'Tues Day','08:30','10:30',2,1,1,'No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_TimeTable	VALUES	(1,'Wednes Day','08:30','10:30',2,1,1,'No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_TimeTable	VALUES	(1,'Thurs Day','08:30','10:30',2,1,1,'No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_TimeTable	VALUES	(1,'Fri Day','08:30','10:30',2,1,1,'No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_TimeTable	VALUES	(1,'Satur Day','08:30','10:30',2,1,1,'No Comments','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_TimeTable	VALUES	(1,'Sun Day','08:30','10:30',2,1,1,'No Comments','TRUE',getdate(),getdate())
