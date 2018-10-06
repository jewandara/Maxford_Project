<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="MAXFORD.Account.Teacher.Profile.Links" %>

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
                        <li><a id="A4" runat="server" href="~/Account/Teacher/Profile/Links.aspx" > SOCIAL LINKS </a></li>
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
                                        <td style="padding:5px;"></td>
                                        <td style="padding:5px;">
                                            <%--   <asp:Button runat="server" ID="btnSave" Text="SUBMIT" Width="100px" Height="50px" OnClick="btnSave_Click" CausesValidation="True" type="submit"/>
                                            <asp:Button runat="server" ID="btnCancel" Text="CANCEL" Width="100px" Height="50px" CausesValidation="false" OnClick="btnCancel_Click" />    --%>
                                        </td>
                                        <td style="padding:5px;"></td>
                                    </tr>

                                </table>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <CommonUC:MyUpdateProgress1 runat="server" id="UpdateProgress1" />

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

