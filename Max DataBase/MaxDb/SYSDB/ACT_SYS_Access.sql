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
----		Title		:	TABLE OF ACCESS									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_Access				----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_Access
(
	AccessID						INT					IDENTITY(1,1)	UNIQUE			NOT NULL,
	AccessTable						NVARCHAR(75)										NOT NULL,
	AccessNEW						BIT													NOT NULL		DEFAULT (0),
	AccessACTIVE					BIT													NOT NULL		DEFAULT (0),
	AccessDEACTIVE					BIT													NOT NULL		DEFAULT (0),
	AccessDELETE					BIT													NOT NULL		DEFAULT (0),
	AccessCOMMENT					BIT													NOT NULL		DEFAULT (0),
	AccessUPDATE					BIT													NOT NULL		DEFAULT (0),
	AccessSEARCH					BIT													NOT NULL		DEFAULT (0),

	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (AccessID)
);