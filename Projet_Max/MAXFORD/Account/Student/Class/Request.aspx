<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Student/Student.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="MAXFORD.Account.Student.Class.Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .maxTopBarButton {text-decoration:none;background-color:#0f687c;color:#fff;border:none; font-size:18px; font-weight:bold; padding:10px;padding-left:20px;padding-right:20px; margin-top:20px;}
        .maxTopBarButton:hover {background:#143a57;color:#fff;}
        input[type='submit'] {background:#000;color:#fff;border:none; font-size:16px; font-weight:bold; padding:10px;padding-left:15px;padding-right:15px; margin-top:10px;}
        input[type='submit']:hover {background:#312d2d;color:#fff;}
        .maxSelectTable { border:2px solid #312d2d;padding:5px; margin:5px;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
  <div class="container">
    <div class="row">
        <asp:Panel ID="maxRegisterPanel" runat="server" >
            <ul class="maxFormSelectBox">
                <li style="display: block; padding: 15px;">
                    <div class="maxFormSelectBox-box-header">
                        <h1> Maxford Student Classes </h1><br />
                    </div>
                    <div class="box-content">
                        <div>
                            <a href="Default.aspx" class="maxTopBarButton">MY CLASSES</a>
                            <a href="Request.aspx" class="maxTopBarButton">REQUEST CLASS</a>
                        </div>         
                        <br />
                   
                        <asp:Panel ID="maxPanel" CssClass="maxPanel" runat="server">
                            <div class="maxFormSelectBox-box-header">
                                <h2> Maxford Student Request Classes </h2><br />
                            </div>   
                            
                            <table style="width:100%">
                              <tr>
                                <td style="padding:10px; margin:10px;">Select Your Teacher :</td>
                                <td style="padding:10px; margin:10px;">Select Your Class :</td> 
                              </tr>
                              <tr>
                                <td>
                                    <div>
                                        <asp:DropDownList ID="maxTeachersDropDownList" runat="server" Width="300px" ForeColor="#373737" CssClass="maxSelectTable" OnSelectedIndexChanged="maxTeachersDropDownList_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>
                                    </div>    
                                </td>
                                <td>  
                                    <div>
                                        <asp:DropDownList ID="maxClassesDropDownList" runat="server" Width="500px" ForeColor="#373737" CssClass="maxSelectTable"></asp:DropDownList>
                                    </div>
                                </td> 
                              </tr>
                            </table>
                        </asp:Panel>
                        <asp:Button ID="ButtonRequest" runat="server" Text="SEND REQUEST" OnClick="ButtonRequest_Click" />

                    </div>
                </li>
            </ul>
        </asp:Panel>
    </div>
  </div>
<script src="../assets/jquery/jquery.min.js"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/smooth-scroll/SmoothScroll.js"></script>
<script src="../assets/mobirise/js/script.js"></script>
</asp:Content>
