-- ===============================================================================
CREATE PROCEDURE dbo.MAX_SP_PageUpdate
	@PageName							NVARCHAR(50),
	@PageBody							TEXT
AS
BEGIN
SET NOCOUNT ON;
IF EXISTS(SELECT MPageName FROM dbo.MAX_PAGE_MaxPage WHERE Activiated = 1 AND MPageName = @PageName)
BEGIN

	UPDATE	dbo.MAX_PAGE_MaxPage
	   SET	MPageBody = @PageBody,
			ModifiedDate = GETDATE()
	 WHERE	MPageName = @PageName

END
END



EXECUTE  dbo.MAX_SP_PageUpdate
	@PageName				= 'maxAboutUs_Default',
	@PageBody			= 'PageBody'