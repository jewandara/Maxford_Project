

CREATE SYMMETRIC KEY MAXPass			
WITH	ALGORITHM	=	DESX
		ENCRYPTION	BY	PASSWORD	=	'MAX@Login.PASS';
/*--------------------------------------------------------------------*/



OPEN SYMMETRIC KEY MAXPass
DECRYPTION	BY	PASSWORD	=	'MAX@Login.PASS';	

DECLARE @max_AppID	nvarchar(110) SET @max_AppID		= 'ea9c948c-d318-4be6-ba71-b18cc7a06013{2222222244435555555533333333444444422222222222222222222222221234';
DECLARE @enAppCode	VARBINARY(MAX) SET @enAppCode = EncryptByKey(Key_GUID('MAXPass'), @max_AppID);
SELECT @enAppCode


DECLARE @decrypted_str VARBINARY(MAX) SET @decrypted_str = DecryptByKey(@enAppCode);
DECLARE @CodeX NVARCHAR(110) SET @CodeX =(SELECT CONVERT(NVARCHAR(100), @decrypted_str))
SELECT @CodeX



DECLARE @UserNamePassword NVARCHAR(2000) SET @UserNamePassword = 'Userx @xx1qqq qqqqghjghjghjghhghj12345 6789@@##@@Passxx errr r22 2ghjghjgh222qqqq qqqghjhgjqq123456789'
DECLARE @UserName NVARCHAR(37) SET @UserName = (SELECT SUBSTRING(@UserNamePassword,0,CHARINDEX('@@##@@',@UserNamePassword)))
DECLARE @PasswordX NVARCHAR(60) SET @PasswordX = (SELECT SUBSTRING(@UserNamePassword,CHARINDEX('@@##@@',@UserNamePassword),60))
DECLARE @Password NVARCHAR(60) SET @Password = (SELECT SUBSTRING(@PasswordX,7,67))
SELECT @UserName,@Password












CREATE PROCEDURE dbo.SP_ACTBANK_SYS_LOGIN
		@UserNamePassword		NVARCHAR(2000)
AS
BEGIN
    SET NOCOUNT ON;
	DECLARE @Mesage NVARCHAR(2000)
--DECLARE @UserNamePassword NVARCHAR(2000) SET @UserNamePassword = 'Userx @xx1 #xxa@@##@@Passxx jkaXX ddwd           22'
DECLARE @UserName NVARCHAR(50) SET @UserName = (SELECT SUBSTRING(@UserNamePassword,0,CHARINDEX('@@##@@',@UserNamePassword)))
DECLARE @PasswordX NVARCHAR(50) SET @PasswordX = (SELECT SUBSTRING(@UserNamePassword,CHARINDEX('@@##@@',@UserNamePassword),100))
DECLARE @Password NVARCHAR(50) SET @Password = (SELECT SUBSTRING(@PasswordX,7,57))
--SELECT @UserName,@Password

	IF EXISTS(SELECT EmpPassWordId FROM dbo.ACT_EmpLogin WHERE UserName = @UserName)
	BEGIN
		IF EXISTS(SELECT EmpPassWordId FROM dbo.ACT_EmpLogin WHERE UserName = @UserName AND Activiated = 1)
		BEGIN
			IF EXISTS(SELECT EmpPassWordId FROM dbo.ACT_EmpLogin WHERE UserName = @UserName AND FailedPassAttemptCount < 10)
			BEGIN
				IF EXISTS(SELECT EmpPassWordId FROM dbo.ACT_EmpLogin WHERE UserName = @UserName AND FailedMPinAttemptCount < 10)
				BEGIN
					IF EXISTS(SELECT EmpPassWordId FROM dbo.ACT_EmpLogin WHERE UserName = @UserName AND FailedPassAnswerAttemptCount < 10)
					BEGIN
							OPEN SYMMETRIC KEY SuSymtcKeyPass	
							DECRYPTION BY PASSWORD = 'ACT@act.lk';
							DECLARE @Code VARBINARY(MAX) SET @Code = (SELECT Password FROM dbo.ACT_EmpLogin WHERE UserName = @UserName)
							DECLARE @decrypted_str VARBINARY(MAX) SET @decrypted_str = DecryptByKey(@Code);
							DECLARE @CodeX NVARCHAR(50) SET @CodeX =(SELECT CONVERT(NVARCHAR(100), @decrypted_str))
							CLOSE SYMMETRIC KEY SuSymtcKeyPass;
						IF @CodeX = @Password
						BEGIN
							DECLARE @ID INT SET @ID = (SELECT EmpPassWordId FROM dbo.ACT_EmpLogin WHERE UserName = @UserName AND Password = @Password)
							UPDATE dbo.ACT_EmpLogin
							SET 
								FailedPassAttemptCount			=	0,
								FailedMPinAttemptCount			=	0,
								FailedPassAnswerAttemptCount	=	0,
								LastLoginDate					=	getdate()
							WHERE EmpPassWordId = @ID;
							SET @ID = (SELECT MemberShipID FROM dbo.ACT_EmpLogin WHERE UserName = @UserName)
							UPDATE dbo.ACT_Application
							SET 
								AppIncortUserCount			=	0,
								LogID	=  @ID 
							WHERE AppID = 777;
							OPEN SYMMETRIC KEY SuSymtcKeyPass	
							DECRYPTION BY PASSWORD = 'ACT@act.lk';
							DECLARE @POST VARBINARY(MAX) SET @POST = (SELECT EmployeePost FROM dbo.ACT_EmpLogin WHERE UserName = @UserName)
							DECLARE @POSTX VARBINARY(MAX) SET @POSTX = DecryptByKey(@POST);
							DECLARE @PX NVARCHAR(50) SET @PX =(SELECT CONVERT(NVARCHAR(100),@POSTX))
							CLOSE SYMMETRIC KEY SuSymtcKeyPass;
							SELECT @PX
						END
						ELSE
						BEGIN
							DECLARE @FPC INT SET @FPC = (SELECT FailedPassAttemptCount FROM dbo.ACT_EmpLogin WHERE UserName = @UserName)
							UPDATE dbo.ACT_EmpLogin
							SET 
								FailedPassAttemptCount			=	@FPC + 1
							WHERE UserName = @UserName
							SELECT 'PASSWORD'
						END
					END
					ELSE
					BEGIN
						SELECT 'FAILDANSWER'
					END
				END
				ELSE
				BEGIN
					SELECT 'FAILDMPIN'
				END
			END
			ELSE
			BEGIN
				SELECT 'FAILDPASS'
			END
		END
		ELSE
		BEGIN
			SELECT 'ACTIVE'
		END
	END
	ELSE
	BEGIN
		DECLARE @FPCS INT SET @FPCS = (SELECT AppIncortUserCount FROM dbo.ACT_Application WHERE AppID = 777)
		UPDATE dbo.ACT_Application
		SET 
			AppIncortUserCount			=	@FPCS + 1
		WHERE AppID = 777
		SELECT 'USERNAME'
	END
END