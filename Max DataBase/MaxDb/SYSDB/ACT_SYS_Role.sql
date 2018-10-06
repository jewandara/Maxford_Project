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
----		Title		:	TABLE OF ROLES									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_Role				----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_Role
(
	RoleID							INT					IDENTITY(1,1)	UNIQUE			NOT NULL,
	RoleName						VARBINARY(MAX)										NOT NULL,
	RoleDiscrption					NVARCHAR(1000)										NULL,

	Comment							NVARCHAR(200)										NULL,
	Codex							UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated						BIT													NOT NULL		DEFAULT (0),
	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (RoleID)
);

OPEN SYMMETRIC KEY SuSymtcBaseKeyAct
DECRYPTION	BY	PASSWORD	=	'ACT@Database.VARBINARY';	

DECLARE @encrypted_AppCode	VARBINARY(MAX)
DECLARE @KEYX				nvarchar(60)

SET @KEYX = 'DatabaseAdministrator';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @KEYX);
INSERT	INTO	dbo.ACT_SYS_Role	VALUES	(@encrypted_AppCode,'This is Database Administrator of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'ApplicationAdministrator';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @KEYX);
INSERT	INTO	dbo.ACT_SYS_Role	VALUES	(@encrypted_AppCode,'This is Application Administrator of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'Manager';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @KEYX);
INSERT	INTO	dbo.ACT_SYS_Role	VALUES	(@encrypted_AppCode,'This is Bank Manager of the Application.','No Comments',newid(),1,getdate(),getdate())
SET @KEYX = 'Accounten';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @KEYX);
INSERT	INTO	dbo.ACT_SYS_Role	VALUES	(@encrypted_AppCode,'This is Bank Accounten of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'ApplicationUser';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @KEYX);
INSERT	INTO	dbo.ACT_SYS_Role	VALUES	(@encrypted_AppCode,'This is Application User of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'Employee';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @KEYX);
INSERT	INTO	dbo.ACT_SYS_Role	VALUES	(@encrypted_AppCode,'This is Employee of the Application.','No Comments',newid(),1,getdate(),getdate())

SET @KEYX = 'Customer';
SET @encrypted_AppCode = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @KEYX);
INSERT	INTO	dbo.ACT_SYS_Role	VALUES	(@encrypted_AppCode,'This is Custmer of the Application.','No Comments',newid(),1,getdate(),getdate())


