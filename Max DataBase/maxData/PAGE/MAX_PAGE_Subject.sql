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
----		Title		:	TABLE OF SUBJECTS								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Subject			----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_Subject
(
	SubjectId							INT							IDENTITY(1,1)		NOT NULL,
	AppID								INT												NOT NULL	REFERENCES MAX_SYS_Application(AppID),
	SubjectTitle						NVARCHAR(100)									NOT NULL,
	SubjectBody							TEXT											NOT NULL,
	SubjectName							NVARCHAR(75)									NOT NULL,
	SubjectCatogory						NVARCHAR(25)									NOT NULL,
	SubjectDiscription					nvarchar(500)									NULL,
	SubjectImage						IMAGE											NULL,

	Activiated							BIT												NOT NULL		DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (SubjectId)
);



INSERT	INTO	dbo.MAX_PAGE_Subject	VALUES	(1,'English','English Body','English','OL/A','No Discription','','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Subject	VALUES	(1,'Maths','Maths Body','Maths','OL/A','No Discription','','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Subject 	VALUES	(1,'Sinhala','Sinhala Body','Sinhala','OL/A','No Discription','','TRUE',getdate(),getdate())

