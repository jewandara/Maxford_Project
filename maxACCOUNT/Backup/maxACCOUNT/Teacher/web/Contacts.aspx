<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="maxACCOUNT.Teacher.web.Contacts" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TeacherHead" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTeacherBody" runat="server">
    <asp:Repeater ID="RepeaterTeacherProfileBody" runat="server" DataSourceID="TeacherProfileBodySqlDataSource">
    <ItemTemplate>
			<div>
				<ul class="breadcrumb">
					<li><a href="#">MAXFORD</a> <span class="divider">/</span></li>
					<li><a href="#">PROFILE</a> -> <%# Eval("UserFirstName")%></li>
				</ul>
			</div>
			

			<div class="row-fluid sortable">
				<div class="box span12">

					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> Maxford Teacher Personal Profile</h2>
					</div>

					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>
							<legend><%# Eval("Title")%>. <%# Eval("UserFirstName")%> <%# Eval("UserMiddleName")%> <%# Eval("UserLastName")%>  <%# Eval("UserSurname")%> [ ID : <%# Eval("UserID")%> ]</legend>
							<div class="control-group">













                            <table style=" display:block; border: 1px solid #000; border-radius:5px; padding:15px;">

                            <label class="control-label" for="typeahead">Title yjetyj</label>
                            <tr>
                                <th width="25%"></th>
                                <th width="5%"></th>
                                <th width="40%"></th>
                                <th width="5%"></th>
                                <th></th>
                            </tr>
                            <tr>
                                <td align="right"><label class="control-label" for="typeahead">Title</label></td>
                                <td align="right"></td>
                                <td align="right">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="310px"></asp:DropDownList>
                                </td>
                                <td align="right"></td>
                                <td align="left">
									<i class="btn btn-danger" >S eyty jety AVE</i>
                                </td>
                            </tr>




                            <tr>
                                <td align="right"><label class="control-label" for="typeahead">First Name </label></td>
                                <td align="right"></td>
                                <td align="right">
                                    <asp:TextBox ID="TextBox5" runat="server" Width="300px" Text='<%#Eval("UserFirstName")%>'></asp:TextBox>
                                </td>
                                <td align="right"></td>
                                <td align="left">
									<i class="btn btn-danger" >SA rhe ther r eh yVE</i>
                                </td>
                            </tr>










                            <tr>
                                <td align="right"><label class="control-label" for="typeahead">Auto complete </label></td>
                                <td align="right"></td>
                                <td align="right">
                                    <asp:TextBox ID="TextBox8" runat="server" Width="300px" Text='<%#Eval("UserMiddleName")%>'></asp:TextBox>
                                </td>
                                <td align="right"></td>
                                <td align="left">
									<i class="btn btn-danger" >erterve wery rt yrtSAVE</i>
                                </td>
                            </tr>



                            <tr>
                                <td align="right"><label class="control-label" for="typeahead">Auto complete </label></td>
                                <td align="right"></td>
                                <td align="right">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="300px" Text='<%#Eval("UserMiddleName")%>'></asp:TextBox>
                                </td>
                                <td align="right"></td>
                                <td align="left">
									<i class="btn btn-danger" >erterve wery rt yrtSAVE</i>
                                </td>
                            </tr>



                            <tr>
                                <td align="right"><label class="control-label" for="typeahead">Auto complete </label></td>
                                <td align="right"></td>
                                <td align="right">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="300px" Text='<%#Eval("UserMiddleName")%>'></asp:TextBox>
                                </td>
                                <td align="right"></td>
                                <td align="left">
									<i class="btn btn-danger" ></i>
                                </td>
                            </tr>






                            <tr>
                                <td align="right"></td>
                                <td align="right"></td>
                                <td align="right"><asp:Button ID="Button1" runat="server" Text="SAVE" CssClass="btn btn-primary" /></td>
                                <td align="right"></td>
                                <td align="left"></td>
                            </tr>


                            </table>























							  <label class="control-label" for="typeahead">Auto complete </label>
							  <div class="controls">
                                <asp:TextBox ID="TextBox1" runat="server" class="span6 typeahead">rtyrtyrtyrt</asp:TextBox>
								<p class="help-block">Start typing to activate auto complete!</p>
							  </div>
                               <td class="center">
									        <a class="btn btn-success" href="#">
										        <i class="icon-zoom-in icon-white"></i>  
										        View                                            
									        </a>
									        <a class="btn btn-info" href="#">
										        <i class="icon-edit icon-white"></i>  
										        Edit                                            
									        </a>
									        <a class="btn btn-danger" href="#">
										        <i class="icon-trash icon-white"></i> 
										        Delete
									        </a>
								        </td>

							</div>
							<div class="control-group">
							  <label class="control-label" for="date01">Date input</label>
							  <div class="controls">
								<input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12">
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="fileInput">File input</label>
							  <div class="controls">
								<input class="input-file uniform_on" id="fileInput" type="file">
							  </div>
							</div>          
							<div class="control-group">
							  <label class="control-label" for="textarea2">Textarea WYSIWYG</label>
							  <div class="controls">
								<textarea class="cleditor" id="textarea2" rows="3"></textarea>
							  </div>
							</div>
							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Save changes</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div>

			</div>

    </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="TeacherProfileBodySqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>" 
        SelectCommand="SELECT * FROM [aspnet_UsersTeacher] WHERE (UserID = '6E58A659-2F5C-4943-A94D-055061F16786' )">
    </asp:SqlDataSource>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMaxfordTeacherScriptFooter" runat="server">
</asp:Content>
