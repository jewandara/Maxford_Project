<%@ Page Title="" Language="C#" MasterPageFile="~/maxTeacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.maxTeacher.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTeacherHeader" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentTeacherDetailsHeader" runat="server">
        <asp:Image ID="maxTeacherImage" runat="server" CssClass="maxTeacherProfileImage" />
        <h4><asp:Label ID="maxLabelTeacherName" runat="server" Text=""></asp:Label></h4>
        <br />
        <p><asp:Label ID="maxLabelHead" runat="server" Text=""></asp:Label></p>
</asp:Content>





<asp:Content ID="Content3" ContentPlaceHolderID="maxContentPlaceHolderTeacherContacts" runat="server">
<td valign="top">
        <h3 style="color:#333">CONTACTS</h3>
                <table cellspacing="3" style="margin-left:10px; width:400px;" >
                        <tr>
                            <th width="40%"></th>
                            <th width="5%"></th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>Contact Number</td>
                            <td>: </td>
                            <td><asp:Label ID="maxLabelContactNumber" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>  </td>
                            <td><asp:Label ID="maxLabelContactNumberTwo" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>  </td>
                            <td><asp:Label ID="maxLabelContactNumberThree" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>E-mail Address</td>
                            <td>: </td>
                            <td><asp:Label ID="maxLabelEmailAddress" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> </td>
                            <td><asp:Label ID="maxLabelEmailAddressTwo" runat="server" Text=""></asp:Label></td>
                        </tr>
                </table>

</td>
<td valign="top">
        <h3 style="color:#333">CLASSES</h3>
            <table cellspacing="5" style="margin-left:10px; width:550px;">
                <tr>
                    <th width="20%"></th>
                    <th width="30%"></th>
                    <th width="2%"></th>
                    <th width="15%"></th>
                    <th></th>
                </tr>
                <asp:Repeater ID="maxTeacherClassTimeTableRepeater" runat="server" DataSourceID="TeacherClassTimeTableSqlDataSource">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("GradeName")%></td>
                            <td><%# Eval("SubjectName")%></td>
                            <td>: </td>
                            <td><%# Eval("TimeDate")%></td>
                            <td><%# Eval("TimeDuretion")%></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource 
                        ID="TeacherClassTimeTableSqlDataSource"
                        runat="server"
                        ConnectionString="<%$ ConnectionStrings:ZionxMaxUserDB %>"
                        SelectCommand="SELECT * FROM [vw_aspnet_TimeTable] WHERE ([UserID] = @UserID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" Type="String" />
                        </SelectParameters>
                </asp:SqlDataSource>

                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </table>
                            <br />                
                            <br />               
                            <br />
</td>
</asp:Content>







<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderTeacherBodyDetails" runat="server">
    <td valign="top">
        <h2 style="color:Black;"><asp:Label ID="maxLabelTeacherInistName" runat="server" Text=""></asp:Label></h2>
        <br />
        <p><asp:Label ID="maxLabelTeacherBody" runat="server" Text=""></asp:Label></p>
    </td>

    <td valign="top" class="maxTeacherProfileBodyArticals">
        <h3 style="color:#333">NEWS</h3>
        <p><asp:Label ID="maxLabelTeacherNews" runat="server" Text=""></asp:Label></p>
    </td>

    <td valign="top" class="maxTeacherProfileBodyArticals">
        <h3 style="color:#333">ARICALS</h3>
        <br />
        <p><asp:Label ID="maxLabelTeacherArticals" runat="server" Text=""></asp:Label></p>
    </td>

    <td valign="top" class="maxTeacherProfileBodyArticals" style=" z-index:100;">
        <h3 style="color:#333">ABOUT TEACHER</h3>
        <br />
        <p><asp:Label ID="maxLabelAboutTeacher" runat="server" Text=""></asp:Label></p>
    </td>
</asp:Content>