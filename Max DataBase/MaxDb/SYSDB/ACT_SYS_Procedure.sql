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
----		Title		:	TABLE OF PROCEDURE								----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_Procedure			----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_Procedure
(
	ProcedureID						INT					IDENTITY(1,1)	UNIQUE			NOT NULL,
	ProcedureName					VARBINARY(MAX)										NOT NULL,
	ProcedureDscrition				NVARCHAR(1000)										NULL,

	Comments						NVARCHAR(200)										NULL,
	Codex							UNIQUEIDENTIFIER					UNIQUE			NOT NULL		DEFAULT (newid()),
	Activiated						BIT													NOT NULL		DEFAULT (0),
	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL		DEFAULT (getdate()),
	PRIMARY KEY (ProcedureID)
);