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
----		Title		:	TABLE OF ACCESS ROLE							----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_AccessRole			----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_AccessRole
(
	AccessRoleID					INT					IDENTITY(1,1)	UNIQUE			NOT NULL,
	AccessID						INT													NOT NULL	REFERENCES dbo.ACT_SYS_Access(AccessID),
	LogRoleID						INT													NOT NULL	REFERENCES dbo.ACT_SYS_Role(RoleID),
	AccRoleID						INT													NOT NULL	REFERENCES dbo.ACT_SYS_Role(RoleID),
	Access							BIT													NOT NULL	DEFAULT (0),

	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (AccessRoleID)
);