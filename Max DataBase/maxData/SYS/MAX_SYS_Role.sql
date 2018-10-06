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
----		Title		:	TABLE OF ROLE									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_ROLE				----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_USER_ROLE
(
	RoleID							INT					IDENTITY(1,1)	UNIQUE			NOT NULL,
	AppID							INT													NOT NULL	REFERENCES dbo.MAX_SYS_Application(AppID) ON DELETE CASCADE,
	RoleName						VARBINARY(MAX)										NOT NULL,
	RoleDiscrption					NVARCHAR(1000)										NULL,

	Comment							NVARCHAR(200)										NULL,
	Codex							UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated						BIT													NOT NULL		DEFAULT (0),
	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (RoleID)
);


/*--------------------------------------------------------------------------*/
CREATE SYMMETRIC KEY MAXApp
WITH	ALGORITHM	=	DESX
		ENCRYPTION	BY	PASSWORD	=	'MAX@Application.CODE';
/*-------------------------------DONT TRY again------------------------------*/

OPEN SYMMETRIC KEY MAXApp
DECRYPTION	BY	PASSWORD	=	'MAX@Application.CODE';	

DECLARE @encrypted_AppCode	VARBINARY(MAX)
DECLARE @KEYX				nvarchar(60)

SET @KEYX = 'DatabaseAdministrator';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('MAXApp'), @KEYX);
INSERT	INTO	dbo.MAX_SYS_USER_ROLE	VALUES	(1,@encrypted_AppCode,'This is Database Administrator of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'ApplicationAdministrator';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('MAXApp'), @KEYX);
INSERT	INTO	dbo.MAX_SYS_USER_ROLE	VALUES	(1,@encrypted_AppCode,'This is Application Administrator of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'Manager';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('MAXApp'), @KEYX);
INSERT	INTO	dbo.MAX_SYS_USER_ROLE	VALUES	(1,@encrypted_AppCode,'This is Manager of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'Accounten';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('MAXApp'), @KEYX);
INSERT	INTO	dbo.MAX_SYS_USER_ROLE	VALUES	(1,@encrypted_AppCode,'This is Accounten of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'ApplicationUser';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('MAXApp'), @KEYX);
INSERT	INTO	dbo.MAX_SYS_USER_ROLE	VALUES	(1,@encrypted_AppCode,'This is Application User of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'Teacher';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('MAXApp'), @KEYX);
INSERT	INTO	dbo.MAX_SYS_USER_ROLE	VALUES	(1,@encrypted_AppCode,'This is Teacher of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'Student';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('MAXApp'), @KEYX);
INSERT	INTO	dbo.MAX_SYS_USER_ROLE	VALUES	(1,@encrypted_AppCode,'This is Student of the Application.','No Comments',newid(),1,getdate(),getdate())


