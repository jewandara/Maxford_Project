-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is Table of dbo.MAX_User
-- ===============================================================================
CREATE TABLE dbo.MAX_User
(
	UserID					INT						IDENTITY(1,1)			UNIQUE			NOT NULL,
	UserFirstName			NVARCHAR(80)													NOT NULL,
	UserMiddleName			NVARCHAR(70)													NULL,		
	UserLastName			NVARCHAR(70)													NULL,		
	UserSurname				NVARCHAR(150)													NOT NULL,
	UserInitialName			NVARCHAR(250)													NOT NULL,
	Title					NVARCHAR(8)														NOT NULL,
	DateOfBirth				NVARCHAR(30)													NOT NULL,
	Gender					BIT																NOT NULL		DEFAULT (1),
	Merried					BIT																NOT NULL		DEFAULT (0),
	NICNumber				DECIMAL											UNIQUE			NOT NULL,
	DriverLicen				DECIMAL															NULL,
	HomeAddressOne			NVARCHAR(300)													NOT NULL,
	HomeAddressTwo			NVARCHAR(300)													NULL,
	OfficeAddressOne		NVARCHAR(300)													NULL,
	OfficeAddressTwo		NVARCHAR(300)													NULL,
	ContactNo				DECIMAL															NOT NULL,
	TelePhone				DECIMAL															NULL,
	HandPhone				DECIMAL															NULL,
	FaxNumber				DECIMAL															NULL,
	PersonalEmail			NVARCHAR(300)													NULL,
	OfficealEmail			NVARCHAR(300)													NULL,
	City					NVARCHAR(100)													NULL,
	States					NVARCHAR(75)													NULL,
	Region					NVARCHAR(75)													NULL,
	Province				NVARCHAR(100)													NULL,
	ZIPCode					INT																NULL,
	Country					NVARCHAR(200)													NOT NULL		DEFAULT ('Sri Lanka'),
	AboutUser				NVARCHAR(1024)													NULL,

	Comments				NVARCHAR(50)													NULL,
	Codex					UNIQUEIDENTIFIER								UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated				BIT																NOT NULL		DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (UserID)
);