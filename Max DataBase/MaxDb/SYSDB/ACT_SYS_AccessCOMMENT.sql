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
----		Title		:	TABLE OF ACCESS	COMMENT							----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_AccessCOMMENT		----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_AccessCOMMENT
(
	AccessID						INT													NOT NULL	REFERENCES dbo.ACT_SYS_Access(AccessID),
	CommentBy						NVARCHAR(75)										NOT NULL,
	Access							BIT													NULL		DEFAULT (0),
	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL	DEFAULT (getdate()),
);