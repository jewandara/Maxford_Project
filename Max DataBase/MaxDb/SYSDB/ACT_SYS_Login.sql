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
----		Title		:	TABLE OF LOGIN									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_Login				----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_Login
(
	LoginID									INT						IDENTITY(1,1)	UNIQUE		NOT NULL,
	UserID									INT													NOT NULL	REFERENCES dbo.ACT_SYS_User(UserID) ON DELETE CASCADE,
	MemberPosiation							NVARCHAR(100)										NULL,
	MemberDetalis							NTEXT												NULL,
	UserName								NVARCHAR(50)							UNIQUE		NOT NULL,
	Password								VARBINARY(MAX)										NOT NULL,
	FailedPassAttemptCount					int													NOT NULL	DEFAULT (0),

	MobilePIN								VARBINARY(MAX)										NOT NULL,
	FailedMPinAttemptCount					int													NOT NULL	DEFAULT (0),

	PasswordQuestion						nvarchar(1000)										NOT NULL,
	PasswordAnswer							VARBINARY(MAX)										NOT NULL,
	FailedPassAnswerAttemptCount			int													NOT NULL	DEFAULT (0),

	LastLoginDate							datetime											NOT NULL,
	LastPasswordChangedDate					datetime											NOT NULL,
	LastLockoutDate							datetime											NOT NULL,

	Comments								NVARCHAR(200)										NULL,									-- Comments By Users Only
	Codex									UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),		-- Use For Transaction Data
	Activiated								BIT													NOT NULL		DEFAULT (0),			-- Activate & Deactivate the Recode Data
	InsertedDate							DATETIME											NOT NULL,								-- First Time Inserted Date
	ModifiedDate							DATETIME											NOT NULL		DEFAULT (getdate()),	-- Last Time Updated Date
	PRIMARY KEY (LoginId)
);

OPEN SYMMETRIC KEY SuSymtcBaseKeyAct
DECRYPTION	BY	PASSWORD	=	'ACT@Database.VARBINARY';	
DECLARE @enAppCode1	VARBINARY(MAX);
DECLARE @enAppCode2	VARBINARY(MAX);
DECLARE @enAppCode3	VARBINARY(MAX);
DECLARE @Pass				nvarchar(60);
DECLARE @PIN				nvarchar(60);
DECLARE @Answer				nvarchar(60);



SET @Pass = 'admin';
SET @PIN = 'admin';
SET @Answer = 'DatabaseAdministrator';
SET @enAppCode1 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Pass);
SET @enAppCode2 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @PIN);
SET @enAppCode3 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Answer);
INSERT	INTO	dbo.ACT_SYS_Login	VALUES	(1,'Bank Database Administrator','No Ditails','administrator',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())

SET @Pass = 'admin';
SET @PIN = 'admin';
SET @Answer = 'ApplicationAdministrator';
SET @enAppCode1 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Pass);
SET @enAppCode2 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @PIN);
SET @enAppCode3 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Answer);
INSERT	INTO	dbo.ACT_SYS_Login	VALUES	(2,'Bank Application Administrator','No Ditails','admin',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())

SET @Pass = 'manager';
SET @PIN = 'manager';
SET @Answer = 'Manager';
SET @enAppCode1 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Pass);
SET @enAppCode2 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @PIN);
SET @enAppCode3 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Answer);
INSERT	INTO	dbo.ACT_SYS_Login	VALUES	(3,'Bank Manager','No Ditails','manager',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())

SET @Pass = 'user';
SET @PIN = 'user';
SET @Answer = 'ApplicationUser';
SET @enAppCode1 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Pass);
SET @enAppCode2 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @PIN);
SET @enAppCode3 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Answer);
INSERT	INTO	dbo.ACT_SYS_Login	VALUES	(4,'Bank Application User','No Ditails','user',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())

SET @Pass = 'customer';
SET @PIN = 'customer';
SET @Answer = 'Customer';
SET @enAppCode1 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Pass);
SET @enAppCode2 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @PIN);
SET @enAppCode3 = EncryptByKey(Key_GUID('SuSymtcBaseKeyAct'), @Answer);
INSERT	INTO	dbo.ACT_SYS_Login	VALUES	(5,'Bank Customer','No Ditails','customer',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())
