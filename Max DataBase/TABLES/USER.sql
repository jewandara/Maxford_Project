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
----		Title		:	TABLE OF USERS									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_USER				----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_USER
(
	UserID					UNIQUEIDENTIFIER			UNIQUE		 NONCLUSTERED 			NOT NULL	DEFAULT (NEWID()),
	AppID					INT																NOT NULL	REFERENCES MAX_SYS_Application(AppID),
	UserFirstName			NVARCHAR(80)													NULL,
	UserMiddleName			NVARCHAR(70)													NULL,		
	UserLastName			NVARCHAR(70)													NULL,		
	UserSurname				NVARCHAR(150)													NULL,
	UserInitialName			NVARCHAR(250)													NULL,
	Title					NVARCHAR(8)														NULL,
	DateOfBirth				NVARCHAR(30)													NULL,
	Gender					BIT																NULL		DEFAULT (1),
	Merried					BIT																NULL		DEFAULT (0),
	NICNumber				DECIMAL											UNIQUE			NULL,
	DriverLicen				DECIMAL											UNIQUE			NULL,
	HomeAddressOne			NVARCHAR(300)													NULL,
	HomeAddressTwo			NVARCHAR(300)													NULL,
	OfficeAddressOne		NVARCHAR(300)													NULL,
	OfficeAddressTwo		NVARCHAR(300)													NULL,
	ContactNo				DECIMAL															NULL,
	TelePhone				DECIMAL															NULL,
	HandPhone				DECIMAL											UNIQUE			NULL,
	FaxNumber				DECIMAL															NULL,
	PersonalEmail			NVARCHAR(300)									UNIQUE			NULL,
	OfficealEmail			NVARCHAR(300)													NULL,
	City					NVARCHAR(100)													NULL,
	States					NVARCHAR(75)													NULL,
	Region					NVARCHAR(75)													NULL,
	Province				NVARCHAR(100)													NULL,
	ZIPCode					INT																NULL,
	Country					NVARCHAR(200)													NOT NULL	DEFAULT ('Sri Lanka'),
	AboutUser				NVARCHAR(1024)													NULL,

	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (UserID)
);