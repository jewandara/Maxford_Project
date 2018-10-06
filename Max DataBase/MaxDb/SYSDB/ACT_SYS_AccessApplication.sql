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
----		Title		:	TABLE OF ACCESS	APPLICATION						----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_AccesApplication	----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_AccessApplication
(	
	AccessAppID						INT					IDENTITY(1,1)	UNIQUE			NOT NULL,
	AccessRoleID					INT													NOT NULL	REFERENCES dbo.ACT_SYS_AccessRole(AccessRoleID),
	AppID							INT													NOT NULL	REFERENCES dbo.ACT_SYS_Application(AppID),
	LevelID							INT													NOT NULL	REFERENCES dbo.ACT_SYS_AccessLevel(LevelID),
	Access							BIT													NOT NULL	DEFAULT (0),

	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (AccessAppID)
);


