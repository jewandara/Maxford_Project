<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MAXFORD.Max_Data.Max_Php.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="EventID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="EventID" HeaderText="EventID" ReadOnly="True" 
                    SortExpression="EventID" />
                <asp:BoundField DataField="AppID" HeaderText="AppID" SortExpression="AppID" />
                <asp:BoundField DataField="EventTitleMain" HeaderText="EventTitleMain" 
                    SortExpression="EventTitleMain" />
                <asp:BoundField DataField="EventTitleSub" HeaderText="EventTitleSub" 
                    SortExpression="EventTitleSub" />
                <asp:BoundField DataField="EventBodyMain" HeaderText="EventBodyMain" 
                    SortExpression="EventBodyMain" />
                <asp:BoundField DataField="EventBodySub" HeaderText="EventBodySub" 
                    SortExpression="EventBodySub" />
                <asp:BoundField DataField="EventLink" HeaderText="EventLink" 
                    SortExpression="EventLink" />
                <asp:BoundField DataField="EventPictureLink" HeaderText="EventPictureLink" 
                    SortExpression="EventPictureLink" />
                <asp:BoundField DataField="EventTheam" HeaderText="EventTheam" 
                    SortExpression="EventTheam" />
                <asp:BoundField DataField="EventDiscripition" HeaderText="EventDiscripition" 
                    SortExpression="EventDiscripition" />
                <asp:CheckBoxField DataField="Activiated" HeaderText="Activiated" 
                    SortExpression="Activiated" />
                <asp:BoundField DataField="InsertedDate" HeaderText="InsertedDate" 
                    SortExpression="InsertedDate" />
                <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" 
                    SortExpression="ModifiedDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ZionxMaxDatabaseNet16ConnectionString %>" 
            SelectCommand="SELECT * FROM [MAX_PAGE_Event]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
