<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="maxACCOUNT.Teacher.web.Articles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TeacherHead" runat="server">
    <script src="../js/ScrollJquery.js" type="text/javascript"></script>
    <script src="../js/ScrollJquery_004.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maxTeacherMenuContentPlaceHolder" runat="server">
    <ul>
        <li><div class="max_side_menu_bar maxIconTecherHome"><a href="myPage.aspx">MY PAGE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherProfile"><a href="Profile.aspx">PROFILE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherTimeTable"><a href="TimeTable/Monday.aspx">TIME TABLE</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherClasses"><a href="Classes.aspx">CLASSES</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSubjects"><a href="Subjects.aspx">SUBJECTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherStudents"><a href="Students.aspx">STUDENTS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconSelect maxIconTecherArticals"><a href="Articles.aspx">ARICALS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherEvents"><a href="Events.aspx">EVENTS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherMail"><a href="Mails.aspx">MAILS<div class="max_slide_menu_data_number">0</div></a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherSettings"><a href="Settings.aspx">SETINGS</a></div></li>
        <li><div class="max_side_menu_bar maxIconTecherAbout"><a href="About.aspx">ABOUT</a></div></li>
    </ul>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Artical Page is under Construction."></asp:Label>
	<%--		<div>
                <br /><h4>Maxford Teacher's Student Only</h4><br />
				<ul class="breadcrumb">
					<li><a href="../Default.aspx">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="Articles.aspx">ARTICLES</a></li>
				</ul>
			</div>


			<div class="row-fluid sortable">
				<div class="box span12">

					<div class="box-header well" data-original-title>
						<h2> NEW ARTICLE</h2>
					</div>

					<div class="box-content">

						<form class="form-horizontal">
						  <fieldset>

							<div class="control-group">
							  <label class="control-label" for="typeahead">Subject Of The Article</label>
							  <div class="controls">
                                <asp:TextBox ID="TextBox1" runat="server" Width="50%"></asp:TextBox>
								<p class="help-block"></p>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="date01">Discription Of The Article</label>
							  <div class="controls">
                                <asp:TextBox ID="TextBox2" runat="server" Width="50%"></asp:TextBox>
								<p class="help-block"></p>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="fileInput">Click The Button To Upload The File</label>
							  <div class="controls">
								<input class="input-file uniform_on" id="fileInput" type="file">
							  </div>
							</div>      
                                
							<div class="control-group">
							  <label class="control-label" for="fileInput">Add Picture To Your Article</label>
							  <div class="controls">
								<input class="input-file uniform_on" id="file1" type="file">
							  </div>
							</div>    

							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">SAVE ARTICLE</button>
							  <button type="reset" class="btn">CANCEL</button>
							</div>

						  </fieldset>
						</form>   

					</div>
				</div>

			</div>
            

			<div class="row-fluid sortable">
				<div class="box span12">

					<div class="box-header well" data-original-title>
						<h2><i class="icon-picture"></i> ARTICLE</h2>
					</div>

					<div class="box-content">

						<p class="center">
                            <div class="control-group">
							  <label class="control-label" for="typeahead">Subject Of The Article</label>
							  <div class="controls">
                                <asp:TextBox ID="TextBox3" runat="server" Width="30%"></asp:TextBox>
                                <button type="submit" class="btn btn-primary">SEARCH ARTICLE</button>
								<p class="help-block"></p>
							  </div>
							</div>
						</p>

						<br/>
						<ul class="thumbnails gallery">

							<li id="image-1" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-pdf.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" OnClientClick="window.open('OtherPage.aspx?id=1', 'OtherPage');" />
                            </li>
							<li id="Li1" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-wrd.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" OnClientClick="window.open('OtherPage.aspx?id=1', 'OtherPage'); " />
                            </li>
							<li id="Li2" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-ptt.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" OnClientClick="window.open('OtherPage.aspx?id=2', 'OtherPage');" />
                            </li>
							<li id="Li3" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-exl.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" OnClientClick="window.open('OtherPage.aspx?id=3', 'OtherPage');" />
                            </li>
							<li id="Li4" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-wrd.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button5" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" />
                            </li>
							<li id="Li5" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-ptt.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button6" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" />
                            </li>
							<li id="Li6" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-pdf.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button7" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" />
                            </li>
							<li id="Li7" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-wrd.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button8" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" />
                            </li>
							<li id="Li8" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-ptt.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button9" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" />
                            </li>
							<li id="Li9" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-exl.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button10" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" />
                            </li>
							<li id="Li10" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-wrd.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button11" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" />
                            </li>
							<li id="Li11" class="thumbnail">
                                <a href="#" title="Sample Image 1">
                                    <img class="grayscale" src="../icon/icon-ptt.png" alt="Sample Image 1">
                                </a>
                            <br /><p>dfhysdf hrtg fhfghdfghfgh fgh dddfhdf uyu</p>
                                <asp:Button ID="Button12" runat="server" CssClass="btn btn-danger" Text="Delete" Height="25px" OnClientClick="window.open('OtherPage.aspx', 'OtherPage');"/>
                            </li>



                        </ul>
                        <div class="pagination pagination-centered">
						    <ul>
						    <li><a href="#">Prev</a></li>
						    <li><a href="#">Next</a></li>
						    </ul>
						</div>    
					</div>
				</div>
			
			</div>

--%>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
</asp:Content>
