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
----		Title		:	TABLE OF APPLICATION							----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_Application		----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_Application
(
	AppID						INT				IDENTITY(1,1)	UNIQUE		NOT NULL,
	AppName						nvarchar(20)								NOT NULL,
	AppAuthor					nvarchar(25)								NOT NULL,
	AppAuthorFName				nvarchar(50)								NOT NULL,
	AppContact					nvarchar(20)								NULL,
	AppEmail					nvarchar(50)								NULL,
	AppWelcome					nvarchar(20)								NULL,
	AppDiscription				nvarchar(100)								NULL,
	AppImage					image										NULL,
	AppCodeImage				nvarchar(300)								NOT NULL,
	AppVision					nvarchar(10)								NOT NULL,
	AppPassCodeKeyWord			VARBINARY(MAX)								NOT NULL,
	AppIncortCodeKeyCount		int											NOT NULL,
	AppIncortUserNameCount		int											NOT NULL,
	AppIncortPassWordCount		int											NOT NULL,
	AppCodeKey					VARBINARY(MAX)								NOT NULL,
	AppDataKey					VARBINARY(MAX)								NOT NULL,
	AppActivate					bit											NOT NULL,
	AppActivateDate				datetime									NOT NULL,
	AppLastLoginDate			datetime									NOT NULL,
	PRIMARY KEY (AppID)
);



CREATE SYMMETRIC KEY SuSymtcAppKeyPass				
WITH	ALGORITHM	=	DESX
		ENCRYPTION	BY	PASSWORD	=	'ACT@Application.CODE';

CREATE SYMMETRIC KEY SuSymtcBaseKeyAct			
WITH	ALGORITHM	=	DESX
		ENCRYPTION	BY	PASSWORD	=	'ACT@Database.VARBINARY';


-----------------------------------------------------------------------------------------------
---------   DECLARE  @strCode1 NVARCHAR(100) SET @strCode1 = '1990-1991-0405-1029'   ----------
-----------------------------------------------------------------------------------------------
OPEN SYMMETRIC KEY SuSymtcAppKeyPass
DECRYPTION	BY	PASSWORD	=	'ACT@Application.CODE';	

DECLARE @encrypted_AppCode VARBINARY(MAX)
DECLARE @KEYX nvarchar(60)SET @KEYX = '1990-1991-0405-1029'
SET @encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcAppKeyPass'), @KEYX);
	--SELECT @encrypted_AppCode AS AppCode;			

DECLARE @encrypted_AppCodeAct VARBINARY(MAX)
DECLARE @CODEX nvarchar(60)SET @CODEX = 'ACT@Application.CODE'
SET @encrypted_AppCodeAct = EncryptByKey(Key_GUID('SuSymtcAppKeyPass'), @CODEX);

	
DECLARE @encrypted_AppDataAct VARBINARY(MAX)
DECLARE @PASSX nvarchar(60)SET @PASSX = 'ACT@Database.VARBINARY'
SET @encrypted_AppDataAct = EncryptByKey(Key_GUID('SuSymtcAppKeyPass'), @PASSX);

INSERT	INTO dbo.ACT_SYS_Application
VALUES
(
	'ACT Bank',
	'J. R. M. JEEWANDARA',
	'Jeewandarage Rachitha Madusanka Jeewandara',
	'+94 77 3632 682',
	'jewandara@gmail.com',
	'Welcome To ACT Bank',
	'ACT Bank Discription',
	'',
	'
******@@@@@@@@******
****@@@@O@@@@@@@****
***@@@@@@@@@@@@@@***
**@@@@********@@@@**
**@@@**********@@@*O
**@@*******O****@@**
***@************@***
O**@****O*******@***
****@**********@****
*****O********@*****
******@******@******
*******O@@@@@*******
	',
	'0.0.0.A',
	@encrypted_AppCode,
	0,
	0,
	0,
	@encrypted_AppCodeAct,
	@encrypted_AppDataAct,
	0,
	getdate(),
	getdate()
);

