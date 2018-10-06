--------------------------------------------------------------------------------
----		Title		:	GET USER DATA									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	 dbo.aspnet_MAX_USER_DATA from ASP.NET Batabase	----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.aspnet_MAX_USER_DATA
	@maxUserName	varchar(100)
AS
BEGIN
    SET NOCOUNT ON;
	SELECT UserId AS 'USERID', RoleId AS 'ROLEID' 
	From dbo.aspnet_UsersInRoles 
	WHERE UserId = (SELECT UserId FROM dbo.aspnet_Users WHERE UserName = @maxUserName)
END


--EXECUTE dbo.aspnet_MAX_USER_DATA
--	@maxUserName	= 'ukmabula'




















--------------------------------------------------------------------------------
----		Title		:	VIEW SYSTEM BASE								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	dbo.SP_MAX_USER_LOAD_MENU						----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_USER_LOAD_MENU
	@UserID NVARCHAR(70)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS(SELECT * From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
	BEGIN
			DECLARE @RoleID varchar(4000) SET @RoleID = (SELECT RegRoleID From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
			IF (@RoleID = 'F17F7A3B-E4C0-4DE5-8D48-DCB64E053CAE')
			BEGIN
					IF(@UserID = 'D1B3ADEF-909E-499B-BB87-DA08FCDFBCF5')
					BEGIN
							SELECT BaseID AS 'TOP_LEVEL_ID', BaseName AS 'MENU_DATA'
							FROM dbo.MAX_SYS_BASE
							ORDER BY InsertedDate 
					END
					ELSE
					BEGIN
							SELECT BaseID AS 'TOP_LEVEL_ID', BaseName AS 'MENU_DATA'
							FROM dbo.MAX_SYS_BASE 
							WHERE 
							BaseID IN (	SELECT BaseID 
										FROM dbo.MAX_SYS_MENU 
										WHERE MenuID IN (	SELECT MenuID	
															FROM dbo.MAX_SYS_MENUDATA 
															WHERE MENUDATAID IN (	SELECT MenuDataID 
																					From dbo.MAX_SYS_ACCESS 
																					WHERE Activiated = 1) 
															AND Activiated = 1) 
										AND Activiated = 1) 
							AND Activiated = 1
							ORDER BY InsertedDate 
					END
			END
			ELSE
			BEGIN
					SELECT MenuID AS 'TOP_LEVEL_ID', MenuName AS 'MENU_DATA'
					FROM dbo.MAX_SYS_MENU 
					WHERE MenuID IN (	SELECT MenuID	
										FROM dbo.MAX_SYS_MENUDATA 
										WHERE MENUDATAID IN (	SELECT MenuDataID 
																From dbo.MAX_SYS_ACCESS 
																WHERE	RoleID = @RoleID AND
																		ACCESSID NOT IN	(	SELECT ACCESSID 
																							From dbo.MAX_SYS_ACCESS_NOT_USER
																							WHERE UserID = @UserID)
																	AND Activiated = 1) 
										AND Activiated = 1) 
					AND Activiated = 1 
					ORDER BY MenuName
			END
	END
	ELSE
	BEGIN
			SELECT 'E401' AS 'TOP_LEVEL_ID','Unauthorised Access' AS 'MENU_DATA'
	END
END

EXECUTE dbo.SP_MAX_USER_LOAD_MENU
@UserID = 'D1B3ADEF-909E-499B-BB87-DA08FCDFBCF5'
















--------------------------------------------------------------------------------
----		Title		:	VIEW SYSTEM SUB MENU							----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	dbo.SP_MAX_USER_LOAD_SUB_MENU					----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_USER_LOAD_SUB_MENU
	@UserID NVARCHAR(70),
	@TOP_LEVEL_ID	NVARCHAR(1000)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS(SELECT * From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
	BEGIN
			DECLARE @RoleID varchar(4000) SET @RoleID = (SELECT RegRoleID From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
			IF (@RoleID = 'F17F7A3B-E4C0-4DE5-8D48-DCB64E053CAE')
			BEGIN
					IF(@UserID = 'D1B3ADEF-909E-499B-BB87-DA08FCDFBCF5')
					BEGIN
							SELECT BaseID AS 'TOP_LEVEL_ID', MenuID AS 'MIDDEL_LEVEL_ID',MenuName AS 'SUB_MENU_DATA'
							FROM dbo.MAX_SYS_MENU
							WHERE BaseID = @TOP_LEVEL_ID
					END
					ELSE
					BEGIN
							SELECT BaseID AS 'TOP_LEVEL_ID', MenuID AS 'MIDDEL_LEVEL_ID',MenuName AS 'SUB_MENU_DATA'
							FROM dbo.MAX_SYS_MENU 
							WHERE BaseID = @TOP_LEVEL_ID
							AND MenuID IN (		SELECT MenuID	
												FROM dbo.MAX_SYS_MENUDATA 
												WHERE MENUDATAID IN (	SELECT MenuDataID 
																		From dbo.MAX_SYS_ACCESS 
																		WHERE Activiated = 1) 
												AND Activiated = 1) 
							AND Activiated = 1
							ORDER BY MenuName 
					END
			END
			ELSE
			BEGIN
					SELECT @TOP_LEVEL_ID  AS 'TOP_LEVEL_ID', SubMenuID AS 'MIDDEL_LEVEL_ID',SubMenuName AS 'SUB_MENU_DATA'
					FROM dbo.MAX_SYS_MENU_SUB
					WHERE SubMenuID IN (	SELECT SubMenuID	
											FROM dbo.MAX_SYS_MENUDATA 
											WHERE MenuID = @TOP_LEVEL_ID
											AND MENUDATAID IN (	SELECT MenuDataID 
																From dbo.MAX_SYS_ACCESS 
																WHERE	RoleID = @RoleID AND
																		ACCESSID NOT IN	(	SELECT ACCESSID 
																							From dbo.MAX_SYS_ACCESS_NOT_USER
																							WHERE UserID = @UserID)
																	AND Activiated = 1) 
										AND Activiated = 1) 
					AND Activiated = 1 
					ORDER BY SubMenuName
			END
	END
	ELSE
	BEGIN
			SELECT 'E401' AS 'TOP_LEVEL_ID','E401' AS 'MIDDEL_LEVEL_ID','Unauthorised Access' AS 'SUB_MENU_DATA'
	END
END



--EXECUTE dbo.SP_MAX_USER_LOAD_SUB_MENU
--@UserID = 'D1B3ADEF-909E-499B-BB87-DA08FCDFBCF5',
--@TOP_LEVEL_ID	= '3'










































--------------------------------------------------------------------------------
----		Title		:	VIEW SYSTEM FUNCTION MENU						----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	dbo.SP_MAX_USER_LOAD_FUNCTION_MENU				----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_USER_LOAD_FUNCTION_MENU
	@UserID				NVARCHAR(4000),
	@TOP_LEVEL_ID		NVARCHAR(1000),
	@MIDDEL_LEVEL_ID	NVARCHAR(1000)
AS
BEGIN
    SET NOCOUNT ON;
    
    IF EXISTS(SELECT * From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
	BEGIN
			DECLARE @RoleID varchar(4000) SET @RoleID = (SELECT RegRoleID From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
			
			SELECT @TOP_LEVEL_ID  AS 'TOP_LEVEL_ID', @MIDDEL_LEVEL_ID AS 'MIDDEL_LEVEL_ID',ACCESSMethod AS 'FUNCTION_DATA'
			FROM dbo.MAX_SYS_ACCESS 
			WHERE MenuDataID IN (	SELECT MENUDATAID	
									FROM dbo.MAX_SYS_MENUDATA 
									WHERE MenuID = @TOP_LEVEL_ID
									AND MENUDATAID IN (	SELECT MenuDataID 
														From	dbo.MAX_SYS_ACCESS 
														WHERE	RoleID = @RoleID AND
																ACCESSID NOT IN	(	SELECT ACCESSID 
																					From dbo.MAX_SYS_ACCESS_NOT_USER
																					WHERE UserID = @UserID)
														AND Activiated = 1)
									AND SubMenuID IN (	SELECT SubMenuID
														FROM dbo.MAX_SYS_MENU_SUB
														WHERE SubMenuID = @MIDDEL_LEVEL_ID
														AND Activiated = 1 )						
								AND Activiated = 1) 
			AND Activiated = 1 
	END
	ELSE
	BEGIN
			SELECT 'E401'  AS 'TOP_LEVEL_ID', 'E401' AS 'MIDDEL_LEVEL_ID','Unauthorised Access' AS 'FUNCTION_DATA'
	END
END



--EXECUTE dbo.SP_MAX_USER_LOAD_FUNCTION_MENU
--@UserID = 'eb81821a-bd5f-48b2-8949-84b3ed274d4c',
--@TOP_LEVEL_ID	= '5',
--@MIDDEL_LEVEL_ID = '1'




















--------------------------------------------------------------------------------
----		Title		:	VIEW SYSTEM COOKIE								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	dbo.SP_MAX_USER_COOKIE							----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_USER_COOKIE
	@UserID NVARCHAR(70),
	@RoleID NVARCHAR(70)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS(SELECT * From dbo.MAX_SYS_REGISTER WHERE RegUserID = @UserID AND RegRoleID = @RoleID AND Activiated = 1)
	BEGIN
		SET @UserID = (SELECT UserID From dbo.MAX_SYS_REGISTER WHERE RegUserID = @UserID AND RegRoleID = @RoleID AND Activiated = 1);
		DECLARE @MAXS varchar(4000) SET @MAXS = CONVERT(varchar(4000),@UserID);
		SELECT @MAXS AS 'COOKIE'
	END
	ELSE
	BEGIN
		SELECT '405' AS 'COOKIE'
	END
END

--EXEC dbo.SP_MAX_USER_COOKIE
--	@UserID = '75e199c1-548d-4177-a0d6-b66612d67d6c',
--	@RoleID = 'F17F7A3B-E4C0-4DE5-8D48-DCB64E053CAE'

