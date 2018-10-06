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
----		Title		:	TABLE OF ACCESS User							----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_AccessUser			----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_AccessUser
(
	AccessRoleID					INT													NOT NULL	REFERENCES dbo.ACT_SYS_AccessRole(AccessRoleID),
	LogUserID						INT													NOT NULL	REFERENCES dbo.ACT_SYS_User(UserID),
	AccUserID						INT													NOT NULL	REFERENCES dbo.ACT_SYS_User(UserID),
	Access							BIT													NOT NULL	DEFAULT (0),

	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL	DEFAULT (getdate()),
);