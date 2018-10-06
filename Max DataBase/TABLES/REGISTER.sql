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
----		Title		:	TABLE OF REGISTER								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_SYS_REGISTER			----
----========================================================================----
CREATE TABLE dbo.MAX_SYS_REGISTER
(
	UserID					UNIQUEIDENTIFIER												NOT NULL	REFERENCES MAX_SYS_USER(UserID),
	AppID					INT																NOT NULL	REFERENCES MAX_SYS_Application(AppID),
	RegUserID				UNIQUEIDENTIFIER												NOT NULL,
	RegRoleID				UNIQUEIDENTIFIER												NOT NULL,
	RegAppID				UNIQUEIDENTIFIER												NOT NULL,
	RegPassID				VARBINARY(MAX)													NOT NULL,
	                             
	Activiated				BIT																NOT NULL	DEFAULT (0),
	InsertedDate			DATETIME														NOT NULL,
	ModifiedDate			DATETIME														NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (UserID)
);