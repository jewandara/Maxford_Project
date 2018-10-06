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
----		Title		:	TABLE OF ACCESS LEVEL							----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.ACT_SYS_AccessLevel		----
----========================================================================----
CREATE TABLE dbo.ACT_SYS_AccessLevel
(
	LevelID							INT					IDENTITY(1,1)	UNIQUE			NOT NULL,
	LevelName						NVARCHAR(50)										NOT NULL,
	LevelDiscribe					NVARCHAR(1500)										NOT NULL,
	MaxAppPass						INT													NOT NULL,
	MaxUserName						INT													NOT NULL,
	MaxPassWord						INT													NOT NULL,
	MaxPin							INT													NOT NULL,
	MaxAnswer						INT													NOT NULL,
	MaxLogDay						INT													NULL		DEFAULT (10101010),
	SpecialRole						NVARCHAR(50)										NULL		DEFAULT (''),
	SpecialIP						NVARCHAR(50)										NULL		DEFAULT (''),
	SpecialMac						NVARCHAR(100)										NULL		DEFAULT (''),
	SpecialNetWork					NVARCHAR(20)										NULL		DEFAULT (''),

	InsertedDate					DATETIME											NOT NULL,
	ModifiedDate					DATETIME											NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY (LevelID)
);

INSERT	INTO	dbo.ACT_SYS_AccessLevel	VALUES	('SECURITY LEVEL ONE','This is SECURITY LEVEL ONE',10,50,10,6,6,10101010,'','','','',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_AccessLevel	VALUES	('SECURITY LEVEL TWO','This is SECURITY LEVEL TWO',5,20,5,3,3,10101010,'','','','',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_AccessLevel	VALUES	('SECURITY LEVEL THREE','This is SECURITY LEVEL THREE',3,10,3,3,3,10101010,'','','','',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_AccessLevel	VALUES	('SECURITY LEVEL CUSTOMER','This is SECURITY LEVEL CUSTOMER',10,50,10,6,6,10101010,'CUSTOMER','','','',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_AccessLevel	VALUES	('SECURITY LEVEL ADMINISTRATOR','This is SECURITY LEVEL ADMINISTRATOR',10,50,10,6,6,10101010,'ADMINISTRATOR','','','',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_AccessLevel	VALUES	('SECURITY LEVEL IP','This is SECURITY LEVEL IP',10,50,10,6,6,10101010,'','192.168.1.1','','',getdate(),getdate())
INSERT	INTO	dbo.ACT_SYS_AccessLevel	VALUES	('SECURITY LEVEL INTERNET','This is SECURITY LEVEL INTERNET',10,50,10,6,6,10101010,'','','','NET',getdate(),getdate())
