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
----		Title		:	TABLE OF USERDATA								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_USERDATA			----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_USERDATA
(
	USERDATAID								UNIQUEIDENTIFIER		UNIQUE		NONCLUSTERED	NOT NULL		DEFAULT (NEWID()),
	UserID									UNIQUEIDENTIFIER									NOT NULL		REFERENCES dbo.MAX_SYS_USER(UserID) ON DELETE CASCADE,
	RoleID									INT													NOT NULL		REFERENCES dbo.MAX_SYS_USER_ROLE(RoleID) ON DELETE CASCADE,

	Codex									UNIQUEIDENTIFIER		UNIQUE						NOT NULL		DEFAULT (newid()),		-- Use For Transaction Data
	Activiated								BIT													NOT NULL		DEFAULT (0),			-- Activate & Deactivate the Recode Data
	Blocked									BIT													NOT NULL		DEFAULT (1),
	BlockedDate								DATETIME											NOT NULL,
	InsertedDate							DATETIME											NOT NULL,								-- First Time Inserted Date
	ModifiedDate							DATETIME											NOT NULL		DEFAULT (getdate()),	-- Last Time Updated Date
	PRIMARY KEY (USERDATAID)
);



CREATE SYMMETRIC KEY MAXPass			
WITH	ALGORITHM	=	DESX
		ENCRYPTION	BY	PASSWORD	=	'MAX@Login.PASS';
/*--------------------------DONT TRY AGAIN --------------------------------------*/






INSERT	INTO	dbo.MAX_SYS_Login	VALUES	(1,1,'administrator',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())

INSERT	INTO	dbo.MAX_SYS_Login	VALUES	(2,6,'teacher',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())

INSERT	INTO	dbo.MAX_SYS_Login	VALUES	(3,7,'student',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())

INSERT	INTO	dbo.MAX_SYS_Login	VALUES	(4,7,'student2',@enAppCode1,0,@enAppCode2,0,'My Name?',@enAppCode3,0,getdate(),getdate(),getdate(),'No Comments',newid(),1,getdate(),getdate())
