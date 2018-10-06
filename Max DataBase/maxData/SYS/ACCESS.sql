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
----		Title		:	TABLE OF ACCESS									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_ACCESS				----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_ACCESS
(
	ACCESSID					INT								IDENTITY(1,1)					NOT NULL,
	RoleID						UNIQUEIDENTIFIER												NOT NULL,
	MenuID						INT																NOT NULL	REFERENCES	dbo.MAX_SYS_MENU(MenuID),
	ACCESSMethod				nvarchar(10)													NOT NULL,
	ACCESSType					nvarchar(5)														NOT NULL,
	AppID						INT																NOT NULL	REFERENCES MAX_SYS_Application(AppID),
	AppIDCodex					UNIQUEIDENTIFIER												NOT NULL,
	Activiated					BIT																NOT NULL	DEFAULT (0),
	InsertedDate				DATETIME														NOT NULL,
	PRIMARY KEY (ACCESSID)
);

CREATE TABLE dbo.MAX_SYS_ACCESS_NOT_USER
(
	ACCESSID					INT																NOT NULL	REFERENCES	dbo.MAX_SYS_ACCESS(ACCESSID),
	UserID						UNIQUEIDENTIFIER												NOT NULL	REFERENCES	dbo.MAX_SYS_USER(UserID),

	InsertedDate				DATETIME														NOT NULL,
	PRIMARY KEY (ACCESSID)
);


--===============================================================================ADMIN
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',1,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',1,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',1,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',1,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',2,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',2,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',2,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',2,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',2,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',3,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',3,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',3,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',3,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',3,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',4,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',4,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',4,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',4,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',4,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',5,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',5,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',5,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',5,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',5,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',6,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',6,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',6,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',6,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',6,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',7,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',7,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',7,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',7,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',7,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',8,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',8,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',8,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',8,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',8,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',9,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',9,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',9,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',9,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',9,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',10,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',10,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',10,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',10,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',10,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',11,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',11,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',11,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',11,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',11,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',12,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',12,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',12,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',12,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',12,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',13,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',13,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',13,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',13,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',13,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',14,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',14,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',14,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',14,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',14,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',15,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',15,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',15,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',15,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',15,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',16,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',16,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',16,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',16,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',16,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',17,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',17,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',17,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',17,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',17,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',18,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',18,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',18,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',18,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',18,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',19,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',19,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',19,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',19,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',19,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',20,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',20,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',20,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',20,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',20,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',21,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',21,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',21,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',21,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',21,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',22,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',22,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',22,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',22,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',22,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',23,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',23,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',23,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',23,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',23,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',24,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',24,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',24,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',24,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',25,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',25,'SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',25,'INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',25,'UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',25,'CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('f17f7a3b-e4c0-4de5-8d48-dcb64e053cae',25,'DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
------------




























----===============================================================================USER
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','PAGE','SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','PAGE','INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','PAGE','UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','PAGE','CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','PAGE','DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--------------
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-EVENT','SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-EVENT','INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-EVENT','UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-EVENT','CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-EVENT','DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-NEWS','SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-NEWS','INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-NEWS','UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-NEWS','CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','DATA-NEWS','DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--------------
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','TEACHER','SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','TEACHER','INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','TEACHER','UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','TEACHER','CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','TEACHER','DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--------------
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('54883ab7-7c42-4c0d-a946-32277e3ec516','USER','UPDATE','ONLY',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())


----===============================================================================TEACHER
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-EVENT','SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-EVENT','INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-EVENT','UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-EVENT','CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-EVENT','DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-NEWS','SELECT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-NEWS','INSERT','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-NEWS','UPDATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-NEWS','CREATE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','DATA-NEWS','DELETE','ALL',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--------------
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','USER','INSERT','ONLY',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
--INSERT	INTO	dbo.MAX_SYS_ACCESS	VALUES	('027746d7-bd6f-4cf0-b971-5bf8e3f5fdf5','TEACHER','UPDATE','ONLY',1,'ea9c948c-d318-4be6-ba71-b18cc7a06013',1,getdate())
