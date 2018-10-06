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
----		Title		:	TABLE OF TEACHERS								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Teacher			----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_TEACH
(
	TeacherID					UNIQUEIDENTIFIER			UNIQUE		 NONCLUSTERED 			NOT NULL	DEFAULT (NEWID()),
	UserID						UNIQUEIDENTIFIER												NOT NULL	REFERENCES dbo.MAX_SYS_USER(UserID),
	Category					nvarchar(4)														NULL,
	TeacherTitleAdd				text															null,
	TeachBodyAdd				text															null,
	School						nvarchar(150)													NULL,
	InstrituteOne				nvarchar(150)													NULL,
	InstrituteTwo				nvarchar(150)													NULL,
	UnivercityOne				nvarchar(100)													NULL,
	UnivercityTwo				nvarchar(100)													NULL,
	AboutQulfication			nvarchar(1024)													NULL,
	AboutUnivercity				nvarchar(1024)													NULL,
	AboutDigri					nvarchar(1024)													NULL,
	DigrImage					image															NULL,
	OtherContactNo				numeric(20,0)													NULL,
	OtherEmail 					nvarchar(256)													NULL,
	TeacherPict					image															NULL,
	AboutTeacher				nvarchar(1024)													NULL,
	TecherComment				nvarchar(1024)													NULL,

	RoleIDCodex					UNIQUEIDENTIFIER												NOT NULL,
	Activiated					BIT																NOT NULL	DEFAULT (0),
	InsertedDate				DATETIME														NOT NULL,
	ModifiedDate				DATETIME														NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (TeacherID)
);


INSERT	INTO	dbo.MAX_SYS_TEACH	VALUES	(NEWID(),'d950afba-57b9-4313-b6ec-a26aa6539634','AL','Good In All Best In One','','','','','','','','','','',0,'','','About Teacher','Teacher Comment','027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_TEACH	VALUES	(NEWID(),'cb6cc5d7-a4cf-4173-9b3f-57d0e16c78b4','O6i9','The KINGDOM of MATHMATICS','','','','','','','','','','',0,'','','About Teacher','Teacher Comment','027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','TRUE',getdate(),getdate())








