<%@ Page Title="" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true"
    CodeBehind="Register-Category.aspx.cs" Inherits="maxACCOUNT.Register_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AccountHead" runat="server">
    <link href="style/register.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <br />
    <br />
    <table align="center" cellpadding="10px">
        <tr align="center">
            <th width="1000px">
            </th>
        </tr>
        <tr align="center">
            <td>

                <asp:Panel ID="maxPRIMARYPanel" runat="server">
                    <ul class="maxClassSelectBox">
                        <li style="display: block; padding: 15px;">
                            <table>
                                <tr>
                                    <td>
                                        <div class="row-fluid sortable">
                                            <div class="box span12">
                                                <div class="box-header well" data-original-title>
                                                    <h2>
                                                        Maxford Student Registration Form</h2>
                                                </div>
                                                <div class="box-content">
                                                    <form>
                                                    <fieldset>
                                                        <legend>New Student</legend>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your First Name">
                                                                <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Middle Name">
                                                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Middle Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Last Name">
                                                                <asp:TextBox ID="TextBox3" runat="server" placeholder="Last Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Surname">
                                                                <asp:TextBox ID="TextBox4" runat="server" placeholder="Surname"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Initial Name">
                                                                <asp:TextBox ID="TextBox5" runat="server" placeholder="Initial Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Birth Day">
                                                                <asp:DropDownList ID="maxDropDownListBDay" runat="server" Width="120px">
                                                                </asp:DropDownList>
                                                            </a><a class="tooltip-right" data-tooltip="Enter Your Birth Month">
                                                                <asp:DropDownList ID="maxDropDownListBMonth" runat="server" Width="220px">
                                                                </asp:DropDownList>
                                                            </a><a class="tooltip-right" data-tooltip="Enter Your Birth Year">
                                                                <asp:DropDownList ID="maxDropDownListBYear" runat="server" Width="160px">
                                                                </asp:DropDownList>
                                                            </a>
                                                        </div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Gender">
                                                                <asp:DropDownList ID="maxDropDownListGender" runat="server" Width="512px">
                                                                </asp:DropDownList>
                                                            </a>
                                                        </div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Home Address One">
                                                                <asp:TextBox ID="TextBox7" runat="server" placeholder="Home Address One"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Home Address Two">
                                                                <asp:TextBox ID="TextBox10" runat="server" placeholder="Home Address Two"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Contact Number">
                                                                <asp:TextBox ID="TextBox8" runat="server" placeholder="Contact Number"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Telephone Number">
                                                                <asp:TextBox ID="TextBox6" runat="server" placeholder="Telephone Number"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Email Address">
                                                                <asp:TextBox ID="TextBox9" runat="server" placeholder="Email Address"></asp:TextBox></a></div>
                                                        <div>
                                                            <div class="small">
                                                                <a class="tooltip-right" data-tooltip="You must agree with the terms and conditions of Maxford.">
                                                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                                                    I agree with the <a class="tooltip-right" data-tooltip="Click here to view terms and conditions."
                                                                        href="/pages/terms-and-conditions">terms and conditions</a> </a>
                                                            </div>
                                                            <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
                                                        </div>
                                                    </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </asp:Panel>

                <asp:Panel ID="Panel2" runat="server">
                    <ul class="maxClassSelectBox">
                        <li style="display: block; padding: 15px;">
                            <table>
                                <tr>
                                    <td>
                                        <div class="row-fluid sortable">
                                            <div class="box span12">
                                                <div class="box-header well" data-original-title>
                                                    <h2>
                                                        Maxford Student Registration Form</h2>
                                                </div>
                                                <div class="box-content">
                                                    <form>
                                                    <fieldset>
                                                        <legend>Add Classes</legend>

                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Gender">
                                                                <asp:DropDownList ID="maxGradeCatogoryDropDownList" runat="server" Width="512px">
                                                                </asp:DropDownList>
                                                            </a>
                                                        </div>
                                                        <div>
                                                                    <asp:CheckBoxList ID="chklstStates" runat="server" Width="512px">
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Alaska" Value="Alaska"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Arizona" Value="Arizona"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Arkansas" Value="Arkansas"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; California" Value="California"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Connecticut" Value="Connecticut"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Florida" Value="Florida"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Delaware" Value="Delaware"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Hawaii" Value="Hawaii"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Kentucky" Value="Kentucky"></asp:ListItem>
                                                                                    <asp:ListItem class="maxCheckBox" Text="&nbsp; &nbsp; &nbsp; Maryland" Value="Maryland"></asp:ListItem>
                                                                      </asp:CheckBoxList>
                                                        </div>


                                                        <div>
                                                            <div class="small">
                                                                <a class="tooltip-right" data-tooltip="Click the next button to go next step.">
                                                                    <br />
                                                                    <asp:Button ID="Button2" runat="server" Text="NEXT" />
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </asp:Panel>


                <asp:Panel ID="Panel1" runat="server">
                    <ul class="maxClassSelectBox">
                        <li style="display: block; padding: 15px;">
                            <table>
                                <tr>
                                    <td>
                                        <div class="row-fluid sortable">
                                            <div class="box span12">
                                                <div class="box-header well" data-original-title>
                                                    <h2>
                                                        Maxford Student Registration Form</h2>
                                                </div>
                                                <div class="box-content">
                                                    <form>
                                                    <fieldset>
                                                        <legend>New Student</legend>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your First Name">
                                                                <asp:TextBox ID="TextBox11" runat="server" placeholder="First Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Middle Name">
                                                                <asp:TextBox ID="TextBox12" runat="server" placeholder="Middle Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Last Name">
                                                                <asp:TextBox ID="TextBox13" runat="server" placeholder="Last Name"></asp:TextBox></a></div>
                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="Enter Your Surname">
                                                                <asp:TextBox ID="TextBox14" runat="server" placeholder="Surname"></asp:TextBox></a>
                                                                </div>

                                                        <div>
                                                            <a class="tooltip-right" data-tooltip="You must agree with the terms and conditions of Maxford.">
                                                                <asp:Button ID="Button3" runat="server" Text="SAVE" />
                                                            </a>
                                                        </div>

                                                    </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </asp:Panel>

            </td>
        </tr>
    </table>
</asp:Content>
<%--        <div style=" margin-right:auto;  margin-left:auto; display:block; width:800px; border:1px solid #022; padding:5px 5px 5px 70px; background-color:#DCEFEA;">
            <table>
                <tr>
                    <th width="400px"></th>
                    <th></th>
                </tr>
                <tr>
                    <td>
                        <a href="PrimaryClasses.aspx?GradeID=1" ><img src="images/primary.jpg" style="width:280px; border:1px solid #000; margin-bottom:0px; margin-left:0px;" /></a>
                    </td>
                    <td valign="top">
                        <h1 style=" color:Green"><a href="PrimaryClasses.aspx?GradeID=1" >Primary Class</a></h1>
                        <br />
                        <asp:Repeater ID="maxTeacherPrimaryDataRepeater" runat="server" DataSourceID="maxPrimaryTeacherDataSqlDataSource">
                        <ItemTemplate>
                            <a href='../maxTeacher/teacher.aspx?UserID=<%# Eval("UserID")%>&GradeCatogory=<%# Eval("GradeCatogory")%>' ><p style="color:#000"><%# Eval("TimeName")%></p><p style=" font-size:x-small;  color:#555;"><%# Eval("GradeName")%> </p></a>
                            <br />
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource 
                            ID="maxPrimaryTeacherDataSqlDataSource"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>"
                            SelectCommand="SELECT * FROM [vw_aspnet_TimeTable] WHERE (GradeCatogory =  'Primary Classes')">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>--%>
