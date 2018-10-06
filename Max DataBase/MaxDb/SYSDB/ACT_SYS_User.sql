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
----		Title		:	TABLE OF USER									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_User				----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_User
(
	UserID					INT						IDENTITY(1,1)			UNIQUE			NOT NULL,
	APPID					INT																NOT NULL		REFERENCES dbo.ACT_SYS_Application(AppID) ON DELETE CASCADE,
	RoleID					INT																NOT NULL		REFERENCES dbo.ACT_SYS_Role(RoleID) ON DELETE CASCADE,
	UserFirstName			NVARCHAR(80)													NOT NULL,
	UserMiddleName			NVARCHAR(70)													NULL,		
	UserLastName			NVARCHAR(70)													NULL,		
	UserSurname				NVARCHAR(150)													NOT NULL,
	UserInitialName			NVARCHAR(250)													NOT NULL,
	Title					NVARCHAR(8)														NOT NULL		DEFAULT ('Mr'),
	DateOfBirth				NVARCHAR(30)													NOT NULL,
	Gender					BIT																NOT NULL		DEFAULT (1),
	Merried					BIT																NOT NULL		DEFAULT (0),
	NICNumber				DECIMAL											UNIQUE			NOT NULL,
	DriverLicen				DECIMAL															NULL,
	Occupation				NVARCHAR(50)													NULL,
	JobPoster				NVARCHAR(20)													NULL,
	MonthlySalary			MONEY															NULL,
	HomeAddressOne			NVARCHAR(300)													NOT NULL,
	HomeAddressTwo			NVARCHAR(300)													NULL,
	OfficeAddressOne		NVARCHAR(300)													NULL,
	OfficeAddressTwo		NVARCHAR(300)													NULL,
	ContactNo				DECIMAL															NULL,
	TelePhone				DECIMAL															NULL,
	HandPhone				DECIMAL															NULL,
	FaxNumber				DECIMAL															NULL,
	PersonalEmail			NVARCHAR(300)													NULL,
	OfficealEmail			NVARCHAR(300)													NULL,
	City					NVARCHAR(100)													NULL,
	State					NVARCHAR(75)													NULL,
	Region					NVARCHAR(75)													NULL,
	Province				NVARCHAR(100)													NULL,
	ZIPCode					INT																NULL,
	Country					NVARCHAR(200)													NOT NULL		DEFAULT ('Sri Lanka'),
	AboutUser				NVARCHAR(1024)													NULL,

	Comments				NVARCHAR(200)													NULL,
	Codex					UNIQUEIDENTIFIER								UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT																NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (UserID)
);


GO
INSERT	INTO	dbo.ACT_SYS_User	VALUES	(1,1,'Rachitha','','','Admin','R.Admin','Mr','8/25/1989',1,0,890825376,2300110945,'Sanken','Engineer',130000.00,'67,Kandy Road,Kadawatha','','','',94112256068,0,0,0,'','','Kadawatha','','','',1001,'Sri Lanka','','',newid(),'TRUE',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_User	VALUES	(1,2,'Dilhari','','','Admin','D.Admin','Miss','9/14/1983',1,1,830943453,0,'Gampaha Hospital','Doctor',90000.00,'45,Nilwala Road,Mathara','','','',94332256927,0,0,0,'udara@yahoo.com','','Mathara','','','',1201,'Sri Lanka','','',newid(),'TRUE',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_User	VALUES	(1,3,'Amila','Nuwan','Kumara','De Selva','A.N.K.De Selva','Mr','10/7/1990',1,0,901034567,0,'Bandaranayaka Collage','Student',0,'12/6,HawaAliya Road,Kandy','','','',94112875468,0,0,0,'','','Kandy','','','',121,'Sri Lanka','','',newid(),'TRUE',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_User	VALUES	(1,5,'Nuwan','Kumara','','Fernando','N.K.Fernando','Mr','3/3/1989',1,1,890367456,0,'','',50000.00,'Colombo 4,Colombo','','','',94115656068,0,0,0,'nuwan@gmail.com','','Gampaha','','','',101201,'Sri Lanka','','',newid(),'TRUE',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_User	VALUES	(1,7,'Gayathri','Nadeshani','','Perera','G.N.Perera','Miss','12/5/1989',0,0,891212565,0,'UINIC','',500000.00,'32/1,Kandy Road,Colombo','','','',94112256068,0,0,0,'nadeshani@gmail.com','','Colombo','','','',1011,'Sri Lanka','','',newid(),'TRUE',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_User	VALUES	(1,7,'Ruwanara','','','De Zoiza','R.De Zoiza','Dr','11/23/1985',0,1,851123891,0,'Arogya','Doctor',120000.00,'Colombo 5,Colombo','','','',94112346038,0,0,0,'zoiza@arogya.com','','Colombo','','','',1021,'Sri Lanka','','',newid(),'TRUE',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_User	VALUES	(1,7,'Himali','Samanthika','','Perera','H.S.Perera','Prof','7/21/1975',0,1,750723556,0,'University of Ruhuna','Professor',210000.00,'23/243,Malwatha Road,Colombo','','','',94332256927,0,0,0,'himali@col.org','','Colombo','','','',1001,'Sri Lanka','','',newid(),'TRUE',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_User	VALUES	(1,7,'Dilhari','','','Rajapaksha','D.Rajapaksha','Mrs','6/2/1989',0,1,890654423,0,'Maga','Engineer',140000.00,'34/1,Pitagam Road,Kandy','','','',94332253937,0,0,0,'dilhari@gmail.com','','Kandy','','','',1012,'Sri Lanka','','',newid(),'TRUE',getdate(),getdate())

