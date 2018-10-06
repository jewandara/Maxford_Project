<%@ Control Language="C#" AutoEventWireup="true" Inherits="design_controls_MyUpdateProgress1" Codebehind="MyUpdateProgress1.ascx.cs" %>

<asp:UpdateProgress runat="server" ID="UpdateProgress1">
    <ProgressTemplate>
        <div class="blockElem blockOverlay MyUpdateProgress1Background"></div>
        <div class="blockElem blockMsg MyUpdateProgress1Window"> 
        <div>
            <asp:Image runat="server" ID="imgWait" ImageUrl="~/Store/design/gfx/loding.gif" AlternateText="Loading" Width="24" Height="24" CssClass="blockElem blockProgressImage" />
            Loading...
        </div>
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>