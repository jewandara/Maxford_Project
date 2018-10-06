<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="MAXFORD.Account.Teacher.Profile.Contacts" %>

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

        <asp:ScriptManager runat="server" ID="ScriptManager1">
        </asp:ScriptManager>


        <div class="pageContainer">
            <div style="border:solid 2px #099999; padding:15px;"> 

                <div class="max_middle_nav_bar">
                    <ul style="text-align:center">
                        <li><a id="A1" runat="server" href="~/Account/Teacher/Default.aspx" > HOME </a></li> >
                        <li><a id="A2" runat="server" href="~/Account/Teacher/Profile/View.aspx" > PROFILE </a></li> >
                        <li><a id="A4" runat="server" href="~/Account/Teacher/Profile/Contacts.aspx" > CONTACTS </a></li>
                    </ul>
                </div>


				<div class="box">

			        <h2> Maxford Teacher Contacts</h2>
                    <p><asp:Label ID="LabelTeacherName" runat="server" Text="Server Error"></asp:Label></p>
                    <hr />

                    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                        <ContentTemplate>
                            <div>
                                <table border="0" style="width:100%;">

                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Personal Email <br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="PersonalEmail" Width="100%" MaxLength="200" TextMode="Email" ></asp:TextBox></td>
                                        <td style="padding:5px; color:red"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PersonalEmail" ErrorMessage="Email field required." /></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Officeal Email <br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="OfficealEmail" Width="100%" MaxLength="200" ></asp:TextBox></td>
                                        <td style="padding:5px; color:red"></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Telephone <br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="TelePhone" Width="100%" MaxLength="15" TextMode="Number" ></asp:TextBox></td>
                                        <td style="padding:5px; color:red"></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Handphone <br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="HandPhone" Width="100%" MaxLength="15" TextMode="Number" ></asp:TextBox></td>
                                        <td style="padding:5px; color:red"></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>Contact No <br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="ContactNo" Width="100%" MaxLength="15" TextMode="Number" ></asp:TextBox></td>
                                        <td style="padding:5px; color:red"></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:5px;vertical-align: text-top;"><strong>FaxNumber <br /></strong></td>
                                        <td style="padding:5px;"><asp:TextBox runat="server" ID="FaxNumber" Width="100%" MaxLength="15" TextMode="Number" ></asp:TextBox></td>
                                        <td style="padding:5px; color:red"></td>
                                    </tr>

                                    <tr>
                                        <td style="padding:5px;"></td>
                                        <td style="padding:5px;">
                                            <asp:Button runat="server" ID="btnSave" Text="SAVE" Width="100px" Height="40px" OnClick="btnSave_Click" CausesValidation="True"/>
                                            <asp:Button runat="server" ID="btnCancel" Text="CANCEL" Width="100px" Height="40px" CausesValidation="false" OnClick="btnCancel_Click" />    
                                        </td>
                                        <td style="padding:5px;"></td>
                                    </tr>

                                </table>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                    <CommonUC:MyUpdateProgress1 runat="server" id="UpdateProgress1" />
                    <br />
					<div class="help-footer">
                        Help Desk Administrator (Rachitha) : +94 (77) 3632 682 <br />
                        <i style=" margin-right:-100px;">[ 7:00 PM &nbsp&nbsp to &nbsp&nbsp 11:PM ]</i>
					</div>
			    </div>

            </div>
        </div>

    </div>
    <script src="../assets/jquery/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/smooth-scroll/SmoothScroll.js"></script>
    <script src="../assets/mobirise/js/script.js"></script>
</asp:Content>

