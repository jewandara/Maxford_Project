-- ===============================================================================
-- Author      : J. R. M. Jeewandara
-- Contact     : +94 773632682
-- Email       : jewandara@gmail.com / jewandara@yahoo.com
-- Create date : Monday, June 30, 2014
-- Description : This is a TABLE of dbo.MAX_SYS_Application
-- ===============================================================================
CREATE TABLE dbo.MAX_SYS_Application
(
	AppID						INT				IDENTITY(1,1)	UNIQUE		NOT NULL,
	AppName						nvarchar(50)								not null,
	AppDiscription				nvarchar(51)								not null,
	AppPassWord					nvarchar(60)								not null,
	AppIncortKeyCount			nvarchar(3)									not null,
	AppIncortUserCount			nvarchar(3)									not null,
	AppIncortPassCount			nvarchar(3)									not null,
	AppDate						nvarchar(23)								not null,
	AppCreateBy					nvarchar(17)								not null,
	AppKey						VARBINARY(MAX)								not null,
	AppSSKey					VARBINARY(MAX)								not null,
	Activate					bit											not null,
	ActivateDate				datetime									not null,
	PRIMARY KEY (AppID)
);


CREATE SYMMETRIC KEY SuSymtcKeyPass				
WITH	ALGORITHM	=	DESX
		ENCRYPTION	BY	PASSWORD	=	'MAX@maxford.edu';

CREATE SYMMETRIC KEY SuSymtcKeyMax		
WITH	ALGORITHM	=	DESX
		ENCRYPTION	BY	PASSWORD	=	'MaxFordAdmin';


-----------------------------------------------------------------------------------------------
---------   DECLARE  @strCode1 NVARCHAR(100) SET @strCode1 = '1990-1991-0405-1029'   ----------
-----------------------------------------------------------------------------------------------
OPEN SYMMETRIC KEY SuSymtcKeyMax
DECRYPTION	BY	PASSWORD	=	'MaxFordAdmin';			

DECLARE @Encrypted_AppCode VARBINARY(MAX)
DECLARE @KEYX nvarchar(60)SET @KEYX = '1990-1991-0405-1029'
SET @Encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcKeyMax'), @KEYX);
	--SELECT @encrypted_AppCode AS AppCode;			

DECLARE @Encrypted_AppMax VARBINARY(MAX)
DECLARE @PASSX nvarchar(60)SET @PASSX = 'MaxFordAdmin'
SET @Encrypted_AppMax = EncryptByKey(Key_GUID('SuSymtcKeyMax'), @PASSX);
	--SELECT @encrypted_AppAct AS AppACT;

INSERT	INTO dbo.MAX_SYS_Application
VALUES
(
	'ACTBank',
	'Email:jewandara@gmail.com / Telephone:+94773632682',
	'ACTBankAdmin - ACT@act.lk',
	'0',
	'0',
	'0',
	'Wednesday,April,02,2014',
	'J.R.M.Jeewandara',
	@Encrypted_AppCode,
	@Encrypted_AppMax,
	0,
	getdate()
);

