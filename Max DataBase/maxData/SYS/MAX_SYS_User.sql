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
----		Title		:	TABLE OF REGISTER								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_REGISTER			----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_REGISTER
(
	UserID					UNIQUEIDENTIFIER												NOT NULL	REFERENCES MAX_SYS_USER(UserID),
	AppID					INT																NOT NULL	REFERENCES MAX_SYS_Application(AppID),
	RegUserID				UNIQUEIDENTIFIER												NOT NULL,
	RegRoleID				UNIQUEIDENTIFIER												NOT NULL,
	RegAppID				UNIQUEIDENTIFIER												NOT NULL,
	RegPassID				VARBINARY(MAX)													NOT NULL,
	                             
	Activiated				BIT																NOT NULL	DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (UserID)
);


-- ADMIN----------------------------------------------------REGISTER

DECLARE @UserID	UNIQUEIDENTIFIER SET @UserID = NEWID()
DECLARE @RegUserID	UNIQUEIDENTIFIER SET @RegUserID = '75e199c1-548d-4177-a0d6-b66612d67d6c'
DECLARE @RegRoleID	UNIQUEIDENTIFIER SET @RegRoleID = 'f17f7a3b-e4c0-4de5-8d48-dcb64e053cae'
DECLARE @RegAppID	UNIQUEIDENTIFIER SET @RegAppID = 'ea9c948c-d318-4be6-ba71-b18cc7a06013'

OPEN SYMMETRIC KEY MAXPass
DECRYPTION	BY	PASSWORD	=	'MAX@Login.PASS';
DECLARE @REGID	NVARCHAR(62) SET @REGID		= '75e199c1-548d-4177-a0d6-b66612d67d6c';
DECLARE @REGPASS	NVARCHAR(32) SET @REGPASS		= 'ukmabula123!@';
DECLARE @CODEREG	NVARCHAR(100) SET @CODEREG		= @REGID + '@#MX#@' + @REGPASS ;
DECLARE @RegPassID	VARBINARY(MAX) SET @RegPassID = EncryptByKey(Key_GUID('MAXPass'), @CODEREG);

INSERT	INTO	dbo.MAX_SYS_USER	VALUES	(@UserID,1,'U.K. Mabula','','','','U.K. Mabula','Mr','10/7/1970',1,0,901034567,0,'207 / E, Galahitiyawa East, Ganemulla,','','','',94112875468,0,0,0,'','','Ganemulla','','','',121,'Sri Lanka','',getdate(),getdate())
INSERT	INTO	dbo.MAX_SYS_REGISTER	VALUES	(@UserID,1,@RegUserID,@RegRoleID,@RegAppID,@RegPassID,'TRUE',getdate(),getdate())








---------------------------------------------------------------------
--DELETE FROM dbo.MAX_SYS_USER
--WHERE UserID = 'A5D220A0-7A35-4D20-B55A-B38F65D15245'
--SELECT * FROM dbo.MAX_SYS_REGISTER
SELECT * FROM dbo.MAX_SYS_USER
----------------------------------------------------------------------




--CLOSE SYMMETRIC KEY MAXPass
-----------------------------------------------------------
SELECT @REGID AS 'PASSWORD ID', @REGPASS AS 'PASSWORD', @RegPassID AS 'COLLET CODE'
SELECT @RegPassID AS 'SAVE PASSWORD AS CODE'



--OPEN SYMMETRIC KEY MAXPass
--DECRYPTION	BY	PASSWORD	=	'MAX@Login.PASS';
---------------------------------------------------------------COOKIES
DECLARE @decrypted_str VARBINARY(MAX) SET @decrypted_str = DecryptByKey(@RegPassID);
DECLARE @CodeX NVARCHAR(100) SET @CodeX =(SELECT CONVERT(NVARCHAR(100), @decrypted_str))
SELECT @CodeX  AS 'DECREPED PASS PASSWORD BEOFRE COOKE'
CLOSE SYMMETRIC KEY MAXPass

OPEN SYMMETRIC KEY AppKeyPass
DECRYPTION	BY	PASSWORD	= '1990-1991-0405-1029';
DECLARE @en_COOKIE	NVARCHAR(100) SET @en_COOKIE = @CodeX ;
DECLARE @COOKIE	VARBINARY(MAX) SET @COOKIE = EncryptByKey(Key_GUID('AppKeyPass'), @en_COOKIE);
--CLOSE SYMMETRIC KEY AppKeyPass

SELECT @COOKIE AS 'COOKE DATA'
-----------------------------------------------------------




--OPEN SYMMETRIC KEY AppKeyPass
--DECRYPTION	BY	PASSWORD	= '1990-1991-0405-1029';
DECLARE @decrypted_cook VARBINARY(MAX) SET @decrypted_cook = DecryptByKey(@COOKIE);
DECLARE @COOKIE_DATA NVARCHAR(100) SET @COOKIE_DATA =(SELECT CONVERT(NVARCHAR(100), @decrypted_cook))
--CLOSE SYMMETRIC KEY AppKeyPass


DECLARE @PASSID NVARCHAR(62) SET @PASSID = (SELECT SUBSTRING(@COOKIE_DATA,0,CHARINDEX('@#MX#@',@COOKIE_DATA)))
DECLARE @PasswordX NVARCHAR(38) SET @PasswordX = (SELECT SUBSTRING(@COOKIE_DATA,CHARINDEX('@#MX#@',@COOKIE_DATA),38))
DECLARE @Password NVARCHAR(32) SET @Password = (SELECT SUBSTRING(@PasswordX,7,45))

SELECT @PASSID AS 'COOK PASS',@Password AS 'COOK PASSWORD',@COOKIE_DATA AS 'COOKE GET DATA'



























--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF USER ACCESS						----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_USER_ACCESS								----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_USER_ACCESS
	@max_AppID			UNIQUEIDENTIFIER,
	@max_UserID			UNIQUEIDENTIFIER,
    @max_RoleID			UNIQUEIDENTIFIER		
AS
BEGIN
	IF (EXISTS (SELECT * FROM dbo.MAX_SYS_USER WHERE RoleIDCodex =  @max_RoleID AND Activiated = 1))
	BEGIN
		IF (EXISTS (SELECT * FROM dbo.MAX_SYS_USER WHERE UserID = @max_UserID AND RoleIDCodex =  @max_RoleID AND Activiated = 1))
		BEGIN
			IF (EXISTS (SELECT * FROM dbo.MAX_SYS_USER WHERE AppIDCodex = @max_AppID AND UserID = @max_UserID AND RoleIDCodex =  @max_RoleID AND Activiated = 1))
			BEGIN
				SELECT '501' AS 'CODE','Access Authorised' AS 'MSAGE'
			END
			ELSE
			BEGIN
				SELECT '401' AS 'CODE','Application ID Mismatch in Expression' AS 'MSAGE'
			END
		END
		ELSE
		BEGIN
			SELECT '402' AS 'CODE','Unauthorised Access' AS 'MSAGE'
		END
	END
	ELSE
	BEGIN
		SELECT '403' AS 'CODE','Access Type Mismatch in Expression' AS 'MSAGE'
	END
END



--EXECUTE dbo.SP_MAX_USER_ACCESS
--	@max_AppID		= 'ea9c948c-d318-4be6-ba71-b18cc7a06013', 
--	@max_UserID		= 'd950afba-57b9-4313-b6ec-a26aa6539634',
--	@max_RoleID		= 'f17f7a3b-e4c0-4de5-8d48-dcb64e053cae'









--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF USER MENU							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_USER_MENU								----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_USER_MENU
	@max_AppID			UNIQUEIDENTIFIER,
	@max_UserID			UNIQUEIDENTIFIER,
    @max_RoleID			UNIQUEIDENTIFIER		
AS
BEGIN
	IF (EXISTS (SELECT * FROM dbo.MAX_SYS_USER WHERE RoleIDCodex =  @max_RoleID AND Activiated = 1))
	BEGIN
		IF (EXISTS (SELECT * FROM dbo.MAX_SYS_USER WHERE UserID = @max_UserID AND RoleIDCodex =  @max_RoleID AND Activiated = 1))
		BEGIN
			IF (EXISTS (SELECT * FROM dbo.MAX_SYS_USER WHERE AppIDCodex = @max_AppID AND UserID = @max_UserID AND RoleIDCodex =  @max_RoleID AND Activiated = 1))
			BEGIN
				SELECT '500' AS 'CODE','Access Authorised' AS 'MSAGE'
			END
			ELSE
			BEGIN
				SELECT '401' AS 'CODE','Application ID Mismatch in Expression' AS 'MSAGE'
			END
		END
		ELSE
		BEGIN
			SELECT '402' AS 'CODE','Unauthorised Access' AS 'MSAGE'
		END
	END
	ELSE
	BEGIN
		SELECT '403' AS 'CODE','Access Type Mismatch in Expression' AS 'MSAGE'
	END
END



EXECUTE dbo.SP_MAX_USER_ACCESS
	@max_AppID		= 'ea9c948c-d318-4be6-ba71-b18cc7a06013', 
	@max_UserID		= 'd950afba-57b9-4313-b6ec-a26aa6539634',
	@max_RoleID		= 'f17f7a3b-e4c0-4de5-8d48-dcb64e053cae'






