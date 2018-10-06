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
----		Title		:	TABLE OF SLIDE									----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_Slide				----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_Slide
(
	SlideID								UNIQUEIDENTIFIER	UNIQUE	  NONCLUSTERED 		NOT NULL	DEFAULT (NEWID()),
	AppID								INT												NOT NULL	REFERENCES	MAX_SYS_Application(AppID),
	SlideTitle							nvarchar(100)									NOT NULL,
	SlideReadMe							nvarchar(300)									NOT NULL,
	SlideTitleSub						nvarchar(400)									NULL,
	SlideBodyMain						TEXT											NULL,
	SlideBodySub						TEXT											NULL,
	SlideLink							nvarchar(3048)									NULL,
	SlidePictureLink					nvarchar(3048)									NULL,
	SlideTheamColorOne					nvarchar(100)									NULL,
	SlideTheamColorTwo					nvarchar(100)									NULL,
	SlideDiscripition					nvarchar(1024)									NULL,
	SlideSelect							BIT												NULL		DEFAULT (0),
	
	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( SlideID )
);



INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_002.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_002.jpg','background:#233; border-color:#233;','#C51445','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_003.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_003.jpg','background:#FF4D00;border-color:#FF4D00;','background:#6C330D;border-color:#6C330D;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WE ARE DIFFERENT FROM OTHERS','Maxfordians are trained to be different and face challenges.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_004.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_004.jpg','background:#F9C806;border-color:#F9C806;','background:#726329;border-color:#726329;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_005.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_005.jpg','background:#52DC59;border-color:#52DC59;','background:#376C38;border-color:#376C38;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_006.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_006.jpg','background:#098FF2;border-color:#098FF2;','background:#2C6167;border-color:#2C6167;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_007.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_007.jpg','background:#FD5375;border-color:#FD5375;','background:#853255;border-color:#853255;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_002.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_002.jpg','background:#233; border-color:#233;','#C51445','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_003.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_003.jpg','background:#FF4D00;border-color:#FF4D00;','background:#6C330D;border-color:#6C330D;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WE ARE DIFFERENT FROM OTHERS','Maxfordians are trained to be different and face challenges.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_004.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_004.jpg','background:#F9C806;border-color:#F9C806;','background:#726329;border-color:#726329;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_005.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_005.jpg','background:#52DC59;border-color:#52DC59;','background:#376C38;border-color:#376C38;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_006.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_006.jpg','background:#098FF2;border-color:#098FF2;','background:#2C6167;border-color:#2C6167;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_007.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_007.jpg','background:#FD5375;border-color:#FD5375;','background:#853255;border-color:#853255;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_002.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_002.jpg','background:#233; border-color:#233;','#C51445','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_003.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_003.jpg','background:#FF4D00;border-color:#FF4D00;','background:#6C330D;border-color:#6C330D;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WE ARE DIFFERENT FROM OTHERS','Maxfordians are trained to be different and face challenges.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_004.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_004.jpg','background:#F9C806;border-color:#F9C806;','background:#726329;border-color:#726329;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_005.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_005.jpg','background:#52DC59;border-color:#52DC59;','background:#376C38;border-color:#376C38;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'WHY STUDY ENGLISH AT MAXFORD?','Maxford is recognized for excellence in teaching English.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_006.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_006.jpg','background:#098FF2;border-color:#098FF2;','background:#2C6167;border-color:#2C6167;','No Discription','TRUE','TRUE',getdate(),getdate())
INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(NEWID(),1,'TOGETHERNESS & OUR TEAM SPIRIT','We maintain healthy relationship with our fellow teachers.','','','','http://www.maxford.lk/Max_Data/Max_Slide/maxford_slide_007.jpg','http://www.maxford.lk/Max_Data/Max_Slide/LinkTwo/maxford_slide_007.jpg','background:#FD5375;border-color:#FD5375;','background:#853255;border-color:#853255;','No Discription','TRUE','TRUE',getdate(),getdate())


CREATE VIEW dbo.VIEW_MAXIN_PAGE_TOP_SLIDES AS
	SELECT TOP 8 SlideID,SlideTitle,SlideReadMe,SlideTitleSub,SlideBodyMain,SlideBodySub,SlideLink,SlidePictureLink,SlideTheamColorOne,SlideTheamColorTwo,SlideDiscripition,ModifiedDate
	FROM dbo.MAX_PAGE_Slide
	WHERE SlideSelect = 1 AND Activiated = 1 AND AppID = 1
	ORDER BY ModifiedDate DESC




--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF PAGE INSERT SLIDE					----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_PAGE_SLIDE_INSERT						----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_PAGE_SLIDE_INSERT
	@UserID							NVARCHAR(70),
	@SlideTitle						nvarchar(100),
	@SlideReadMe					nvarchar(300),
	@SlideTitleSub					nvarchar(400),
	@SlideBodyMain					TEXT,
	@SlideBodySub					TEXT,
	@SlideLink						nvarchar(3048),
	@SlidePictureLink				nvarchar(3048),
	@SlideTheamColorOne				nvarchar(100),
	@SlideTheamColorTwo				nvarchar(100),
	@SlideDiscripition				nvarchar(1024)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS(SELECT * From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
	BEGIN
		DECLARE @RoleID varchar(4000) SET @RoleID = (SELECT RegRoleID From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
		IF (@RoleID = 'F17F7A3B-E4C0-4DE5-8D48-DCB64E053CAE')
		BEGIN
			DECLARE @ID AS UNIQUEIDENTIFIER SET @ID = NEWID()
			INSERT	INTO	dbo.MAX_PAGE_Slide	VALUES	(@ID,1,@SlideTitle,@SlideReadMe,@SlideTitleSub,@SlideBodyMain,@SlideBodySub,@SlideLink,@SlidePictureLink,@SlideTheamColorOne,@SlideTheamColorTwo,@SlideDiscripition,'TRUE','TRUE',getdate(),getdate())
		END
	END
END

--'D1B3ADEF-909E-499B-BB87-DA08FCDFBCF5'
--DELETE FROM dbo.MAX_PAGE_Slide WHERE SlideID = 'A387BAAC-1E91-42AA-8822-297F4AF50DEB'
--SELECT * FROM dbo.MAX_PAGE_Slide


--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF PAGE UPDATE SLIDE					----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_PAGE_SLIDE_UPDATE						----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_PAGE_SLIDE_UPDATE
	@UserID							NVARCHAR(70),
	@SlideID						nvarchar(500),
	@SlideTitle						nvarchar(100),
	@SlideReadMe					nvarchar(300),
	@SlideTitleSub					nvarchar(400),
	@SlideBodyMain					TEXT,
	@SlideBodySub					TEXT,
	@SlideTheamColorOne				nvarchar(100),
	@SlideTheamColorTwo				nvarchar(100),
	@SlideDiscripition				nvarchar(1024)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS(SELECT * From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
	BEGIN
		DECLARE @RoleID varchar(4000) SET @RoleID = (SELECT RegRoleID From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
		IF (@RoleID = 'F17F7A3B-E4C0-4DE5-8D48-DCB64E053CAE')
		BEGIN
				UPDATE dbo.MAX_PAGE_Slide
				SET 
					SlideTitle = @SlideTitle,
					SlideReadMe = @SlideReadMe,
					SlideTitleSub = @SlideTitleSub,
					SlideBodyMain = @SlideBodyMain,
					SlideBodySub = @SlideBodySub,
					SlideTheamColorOne = @SlideTheamColorOne,
					SlideTheamColorTwo = @SlideTheamColorTwo,
					SlideDiscripition = @SlideDiscripition,
					ModifiedDate = getdate()
				WHERE SlideID = @SlideID
		END
	END
END


--EXECUTE dbo.SP_MAX_PAGE_SLIDE_UPDATE
--	@UserID			= 'D1B3ADEF-909E-499B-BB87-DA08FCDFBCF5',
--	@SlideID		= '8E3ACB80-209E-489C-A61C-0698C1BDE543',
--	@SlideTitle		= 'MAXFORD',
--	@SlideReadMe	= 'MAXFORD',
--	@SlideTitleSub	= 'MAXFORD',

--	@SlideBodyMain	= 'MAXFORD',
--	@SlideBodySub	= 'MAXFORD',
--	@SlideTheamColorOne		= 'background:#B27C7C;border-color:#B27C7C',
--	@SlideTheamColorTwo		= 'background:#B27C7C;border-color:#B27C7C',
--	@SlideDiscripition		= ''




--------------------------------------------------------------------------------
----		Title		:	PROCEDURE OF PAGE DELETE SLIDE					----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	SP_MAX_PAGE_SLIDE_DELETE						----
--------------------------------------------------------------------------------
CREATE PROCEDURE dbo.SP_MAX_PAGE_SLIDE_DELETE
	@UserID							NVARCHAR(70),
	@SlideID						nvarchar(500)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS(SELECT * From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
	BEGIN
		DECLARE @RoleID varchar(4000) SET @RoleID = (SELECT RegRoleID From dbo.MAX_SYS_REGISTER WHERE UserID = @UserID AND Activiated = 1)
		IF (@RoleID = 'F17F7A3B-E4C0-4DE5-8D48-DCB64E053CAE')
		BEGIN
				DELETE FROM dbo.MAX_PAGE_Slide		
				WHERE SlideID = @SlideID
		END
	END
END