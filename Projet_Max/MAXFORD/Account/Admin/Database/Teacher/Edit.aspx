﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="MAXFORD.Account.Admin.Database.Teacher.Edit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .box{
            margin-top: 10px; 
            margin-bottom: 10px ;
            background-color:#F8F9FA;
            padding:20px;
            }
        .topic {
            margin:10px; 
            padding:10px;
            text-decoration:none; 
            font-size:18px; 
            font-weight:bold
        }
        .topic:hover {
            background:#a8d9d9;
            text-decoration:none; 
        }
        .help-footer {
            display:block;
            width:100%;
            background:#aaa;
            padding:20px;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="pageContainer">
            <div style="border:solid 2px #099999; padding:15px;">
                <asp:ScriptManager runat="server" ID="ScriptManager1">
                </asp:ScriptManager>

                <div class="max_middle_nav_bar">
                    <ul>
                        <li><a id="A1" runat="server" href="~/Account/Admin/Manage.aspx" > HOME </a></li> >
                        <li><a id="A2" runat="server" href="~/Account/Admin/Teacher/View.aspx" > CLASS </a></li> >
                        <li><a id="A3" runat="server" href="~/Account/Admin/Teacher/Classes.aspx" > My CLASSES </a></li>
                    </ul>
                </div>

				<div class="box">
			        <h2> Maxford Teacher Details</h2>
                    <p><asp:Label ID="LabelTeacherName" runat="server" Text="Server Error"></asp:Label></p>
                    <hr />

                    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                        <ContentTemplate>        
                            <div>
                                <table border="0" style="width:100%;">
                                    <tr>
                                        <td style="width:150px;padding:5px;vertical-align: text-top;"><strong>Teacher ID : <br /></strong></td>
                                        <td style="width:600px;padding:5px;"><asp:Label runat="server" Width="100%" ID="labelRecordId" Text="New Teacher" ></asp:Label></td>
                                        <td style="width:200px;padding:5px; color:red"></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Title :<br /></strong></td>
                                        <td style="padding:5px;">
                                            <asp:DropDownList ID="DropDownListTitle" runat="server" Width="200px" Height="30px" ></asp:DropDownList>
                                        </td>
                                        <td style="padding:5px; color:red"></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Gender :<br /></strong></td>
                                        <td style="padding:5px;">
                                            <asp:DropDownList ID="DropDownListGender" runat="server" Width="200px" Height="30px" ></asp:DropDownList>
                                        </td>
                                        <td style="padding:5px; color:red"></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Teacher First Name :<br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="TeacherFirstName" Width="100%" MaxLength="50"></asp:TextBox></td>
                                        <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="TeacherFirstName" ErrorMessage="* Required field"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxLastName" runat="server" ControlToValidate = "TeacherFirstName" ValidationExpression = "^[\s\S]{4,50}$" ErrorMessage="* Minimum 4 characters allowed."></asp:RegularExpressionValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Teacher Last Name :<br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="TeacherLastName" Width="100%" MaxLength="50"></asp:TextBox></td>
                                        <td style="padding:5px; color:red"><asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="TeacherLastName" ErrorMessage="* Required field"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate = "TeacherLastName"  ValidationExpression = "^[\s\S]{4,60}$" ErrorMessage="* Minimum 4 characters allowed."></asp:RegularExpressionValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>About Teacher :<br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="AboutTeacher" Width="100%" MaxLength="50" TextMode="MultiLine"></asp:TextBox></td>
                                        <td style="padding:5px; color:red"></td>
                                    </tr>
                                    <tr>
                                        <td style="width:150px;padding:5px;vertical-align: text-top;"><strong><br /></strong></td>
                                        <td style="width:600px;padding:5px; color:red""><asp:Label runat="server" Width="100%" ID="CreateAccountResults" Text="" ></asp:Label></td>
                                        <td style="width:200px;padding:5px; color:red"></td>
                                    </tr>
                                

                                    <tr>
                                        <td style="padding:5px;"></td>
                                        <td style="padding:5px;">
                                            <asp:Button runat="server" ID="btnSave" Text="SUBMIT" Width="100px" Height="50px" OnClick="btnSave_Click" CausesValidation="True" type="submit"/>
                                            <asp:Button runat="server" ID="btnCancel" Text="CANCEL" Width="100px" Height="50px" CausesValidation="false" OnClick="btnCancel_Click" />    
                                        </td>
                                        <td style="padding:5px;"></td>
                                    </tr>

                                </table>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
                <CommonUC:MyUpdateProgress1 runat="server" id="UpdateProgress1" />
            </div>
        </div>
    </div>


<script src="../../assets/jquery/jquery.min.js"></script>
<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/smooth-scroll/SmoothScroll.js"></script>
<script src="../../assets/mobirise/js/script.js"></script>
</asp:Content>
