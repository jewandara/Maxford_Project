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
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_Application		----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_Application
(
	AppID						INT				IDENTITY(1,1)	UNIQUE		NOT NULL,
	AppName						nvarchar(20)								NOT NULL,
	AppAuthor					nvarchar(25)								NOT NULL,
	AppAuthorFName				nvarchar(50)								NOT NULL,
	AppContact					nvarchar(20)								NULL,
	AppEmail					nvarchar(50)								NULL,
	AppWelcome					nvarchar(20)								NULL,
	AppDiscription				nvarchar(100)								NULL,
	AppMission					nvarchar(500)								NULL,
	AppVission					nvarchar(500)								NULL,
	AppImage					image										NULL,
	AppCodeImage				nvarchar(300)								NOT NULL,
	AppVersion					nvarchar(10)								NOT NULL,
	AppIncortCodeKeyCount		int											NOT NULL,
	AppIncortUserNameCount		int											NOT NULL,
	AppIncortPassWordCount		int											NOT NULL,
	AppPassKey					VARBINARY(MAX)								NOT NULL,
	AppCodeKey					VARBINARY(MAX)								NOT NULL,
	AppDataKey					VARBINARY(MAX)								NOT NULL,
	AppActivate					bit											NOT NULL,
	AppActivateDate				datetime									NOT NULL,
	AppLastLoginDate			datetime									NOT NULL,
	PRIMARY KEY (AppID)
);



CREATE SYMMETRIC KEY AppKeyPass				
WITH	ALGORITHM	=	DESX
		ENCRYPTION	BY	PASSWORD	=	'1990-1991-0405-1029';
/*--------------------------------------------------------------------*/
OPEN SYMMETRIC KEY AppKeyPass
DECRYPTION	BY	PASSWORD	= '1990-1991-0405-1029';	



DECLARE @encrypted_AppCode VARBINARY(MAX)
DECLARE @KEYX nvarchar(60)SET @KEYX = 'MAX@Login.PASS'
SET @encrypted_AppCode = EncryptByKey(Key_GUID('AppKeyPass'), @KEYX);			

DECLARE @encrypted_AppCodeAct VARBINARY(MAX)
DECLARE @CODEX nvarchar(60)SET @CODEX = 'MAX@Application.CODE'
SET @encrypted_AppCodeAct = EncryptByKey(Key_GUID('AppKeyPass'), @CODEX);

DECLARE @encrypted_AppDataAct VARBINARY(MAX)
DECLARE @PASSX nvarchar(60)SET @PASSX = 'MAX@Database.VARBINARY'
SET @encrypted_AppDataAct = EncryptByKey(Key_GUID('AppKeyPass'), @PASSX);



INSERT	INTO dbo.MAX_SYS_Application
VALUES
(
	'WWW.MAXFORD.LK',
	'J. R. M. JEEWANDARA',
	'Jeewandarage Rachitha Madusanka Jeewandara',
	'+94 77 3632 682',
	'jewandara@gmail.com',
	'Welcome To MAXFORD',
	'http://www.maxford.lk',
	'Maxford Higher Educational Institute adheres to the purposes of providing reliable learning opportunities at the highest level of excellence for the students to explore their capabilities and interests in order to develop their full intellectual and human potential in a highly disciplined environment.',
	'Vission',
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
	0,
	0,
	0,
	@encrypted_AppCode,
	@encrypted_AppCodeAct,
	@encrypted_AppDataAct,
	0,
	getdate(),
	getdate()
);

