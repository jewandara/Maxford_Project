--	IF THIS IS A COMPUTER PAYMENT METHOD --
--	CREATE TABLE maxUsersPayments(
--	PaymentId							int						PRIMARY KEY			IDENTITY(1,1)		NOT NULL,
--	UserId								uniqueidentifier												NOT NULL,		-- Reference--
--	PaymentMonth						date															NOT NULL,
--	PaymentAmount						money															NOT NULL,
--	IsPaymentPaid						bit																NOT NULL		DEFAULT ('False'),
--	PaymentType							nvarchar(8)														NOT NULL        DEFAULT ('Income'),
--	PaymentComments						nvarchar(1024)													NULL,
--	UpdateUserId						uniqueidentifier												NOT NULL,
--	PaymentUpDate						datetime																		DEFAULT (GETDATE()),
--	);
GO
--	IF THIS IS A COMPUTER PAYMENT METHOD --
--	CREATE TABLE maxMonthReport(
--	ReportID							int						PRIMARY KEY			IDENTITY(1,1)		NOT NULL,
--	ReportMonth							date															NOT NULL,
--	StudentTotal						money															NOT NULL,
--	TeachersTotal						money															NOT NULL,
--	TotalAccout							money															NOT NULL,
--	ReportDetails						nvarchar(1024)													NULL,
--	AdminNote							nvarchar(1024)													NULL,
--	AdminCheck							bit																NOT NULL		DEFAULT ('False'),
--	PaymentUpDate						datetime														NOT NULL		DEFAULT (GETDATE())
--	);
GO

CREATE TABLE maxPresent(
PresentId								uniqueidentifier		PRIMARY KEY			NONCLUSTERED		NOT NULL		DEFAULT (newid()),
UserMaxId							nvarchar(16)			PRIMARY KEY								NOT NULL,
Email								nvarchar(256)													NULL,
LoweredEmail						nvarchar(256)													NULL,
MobileAlias							nvarchar(16)													NULL			DEFAULT (NULL),
IsAnonymous							bit																NOT NULL		DEFAULT ((0)),
LastActivityDate					datetime														NOT NULL,
)

