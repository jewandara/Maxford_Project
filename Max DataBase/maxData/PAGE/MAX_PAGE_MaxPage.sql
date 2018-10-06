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
----		Title		:	TABLE OF MAX PAGE								----
----		Project		:	WWW.MAXFORD.LK									----
----		Author      :	J. R. M. Jeewandara								----
----		Contact     :	+947 7363 2682									----
----		Email       :	jewandara@gmail.com								----
----		Create date :	Wednesday, April  02, 2014						----
----		Description :	This is Table of dbo.MAX_PAGE_MaxPage			----
----========================================================================----
CREATE TABLE dbo.MAX_PAGE_MaxPage
(
	MPageID								INT							IDENTITY(1,1)		NOT NULL,
	AppID								INT												NOT NULL	REFERENCES MAX_SYS_Application(AppID),
	MPageName							nvarchar(50)									NOT NULL,
	MPageHtmlID							nvarchar(25)									NULL,
	MPageClass							nvarchar(25)									NULL,
	MPageLink							nvarchar(2000)									NULL,
	MPageHead							nvarchar(100)									NULL,
	MPageTitleHead						nvarchar(200)									NULL,
	MPageTitle							TEXT											NULL,
	MPageBodyHead						nvarchar(200)									NULL,
	MPageBody							TEXT											NULL,
	MPageFooterHead						nvarchar(200)									NULL,
	MPageFooter							TEXT											NULL,
	MPageTheamOne						nvarchar(50)									NULL,
	MPageTheamTwo						nvarchar(50)									NULL,
	MPageTheamThree						nvarchar(50)									NULL,
	MPageDescription					nvarchar(100)									NULL,

	Activiated							BIT												NOT NULL	DEFAULT (0),
	InsertedDate						DATETIME										NOT NULL,
	ModifiedDate						DATETIME										NOT NULL	DEFAULT (getdate()),
	PRIMARY KEY ( MPageID )
);




INSERT	INTO	dbo.MAX_PAGE_MaxPage	VALUES	(1,'maxAboutUs_Default','','','maxAboutUs/Default.aspx','',
'Welcome to Maxford',
'Institute of Maxford, a place with deep traditions focused on creating brighter futures. We invite you to explore the diverse and vibrant community that makes us the home of Leaders & Best.',
'',
'    <img src="images/AboutUs1.png" width="740px"/>
    <br />
    <br />
    <h1 style="font-size: large; font-style: inherit; font-family: Tahoma; text-transform: capitalize; color: #808080;">Maxford Higher Educational Institution</h1>
     <br /> <br />
    <p style="font-family: tahoma">Recognized for Excellence in Teaching English. Maxford Higher Educational Institution is recognized as the best destination for thousands of English learners in Sri Lanka. The Annual Debate is the culmination of years of hard work and the best platform for Maxfordians to display their talents. Mr. U.K. Mabula, who has become a revalutionary English teacher is the founder of this institution. </p>
    <br />
      <br />
    <address>
    Maxford Higher Educational Institute,<br/>
    207 / E, Galahitiyawa East, Ganemulla,<br/>
    Sri Lanka<br />
    </address>
    <br />
        <table style="width: 40%">
            <tr>
                <td>Contact No:&nbsp;</td>
                <td>(+94) 33 2264 876</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>(+94) 33 2264 276</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>(+94) 77 1303 217</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>(+94) 71 3047 998</td>
            </tr>
    </table>
        <br />
      <br />',
'','','',
'','','',
1,getdate(),getdate())



CREATE VIEW dbo.viewMaxPAGE AS
	SELECT * FROM dbo.MAX_PAGE_MaxPage WHERE Activiated = 1
