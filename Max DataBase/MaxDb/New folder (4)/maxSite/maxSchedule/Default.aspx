<%@ Page Title="" Language="C#" MasterPageFile="~/maxSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAXFORD.maxSchedule.Default" %>







<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Schedule of Classes</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="css/style_max.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="slide" runat="server">
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div class="primary">

<!-- Top Page Discription Tab -->
<div class="intro-wrap">
    <div class="wrap intro" id="skip" role="main">
        <h1>The Schedule of Maxford Classes</h1>
		    <p>To find contact information for Maxford Time Table, using Maxford 
            directory. The links below provide information and resources for Maxford. More 
            information can be found on the websites of each classes.</p>
	</div>
</div>
	
<div class="wrap" id="threecol_content">
<div id="twocol_wrap">
<div class="main">





    
<!-- Middle Tab Discription -->
<div class="section">
<div class="region region-content">
<div id="block-system-main" class="block block-system">
<div class="content">
<div id="node-37" class="node node-page clearfix" about="/faculty" typeof="foaf:Document">
  <div class="content">
    <div class="field field-name-body field-type-text-with-summary field-label-hidden">
    <div class="field-items">
    <div class="field-item even" property="content:encoded">





<!-- Class Table -->
    <asp:Panel ID="primaryClassesPanel" runat="server" Visible="False">
<h2 class="compact">
    <strong>
        <span class="style1">Primary Classes</span>
    </strong>
</h2>
<p>--------------------------------------------------</p>
<table class="reference" style="width:100%">
<tbody>
<tr>
	<th class="style6" style="width:30%"><strong>SUBJECT&nbsp; :</strong></th>
	<th class="style5"><strong>TEACHER&nbsp; :</strong></th>
</tr>
<tr>
	<td class="style3">Mathematics</td>
    <td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Sinhala</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Tamil</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">English</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Dancing</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Art</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Music</td>
	<td class="style2">Mr.</td>
</tr>

</tbody>
</table>
    </asp:Panel>
    <asp:Panel ID="scolarshipExamsPanel" runat="server" Visible="False">
<h2 class="compact">
    <strong>
        <span class="style1">Scolarship Exams</span>
    </strong>
</h2>
<p>--------------------------------------------------</p>
<table class="reference" style="width:100%">
<tbody>
<tr>
	<th class="style6" style="width:30%"><strong>EXAM&nbsp; :</strong></th>
	<th class="style5"><strong>TEACHER&nbsp; :</strong></th>
</tr>
<tr>
	<td class="style3">Mathematics</td>
    <td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Sinhala</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Tamil</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">English</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Dancing</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Art</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Music</td>
	<td class="style2">Mr.</td>
</tr>

</tbody>
</table>
    </asp:Panel>
    <asp:Panel ID="ordinaryLevel69Panel" runat="server" Visible="False">
<h2 class="compact">
    <strong>
        <span class="style1">Ordinary Level Classes For Grade 6 To 9</span>
    </strong>
</h2>
<p>--------------------------------------------------</p>
<table class="reference" style="width:100%">
<tbody>
<tr>
	<th class="style6" style="width:50%"><strong>SUBJECT&nbsp; :</strong></th>
	<th class="style5"><strong>TEACHER&nbsp; :</strong></th>
</tr>
<tr>
	<td class="style3">Mathematics</td>
    <td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Science</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Sinhala</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Tamil</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">English</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Dancing</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Art</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Information & Communication Technology</td>
	<td class="style2">Mr.</td>
</tr>

</tbody>
</table>
    </asp:Panel>
    <asp:Panel ID="ordinaryLevel1011Panel" runat="server" Visible="False">
<h2 class="compact">
    <strong>
        <span class="style1">Ordinary Level Classes For Grade 10 And 11</span>
    </strong>
</h2>
<p>--------------------------------------------------</p>
<table class="reference" style="width:100%">
<tbody>
<tr>
	<th class="style6" style="width:50%"><strong>SUBJECT&nbsp; :</strong></th>
	<th class="style5"><strong>TEACHER&nbsp; :</strong></th>
</tr>
<tr>
	<td class="style3">Mathematics</td>
    <td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Science</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Sinhala</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Tamil</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">English</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Dancing</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Art</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Commerce</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">English Literature</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Information & Communication Technology</td>
	<td class="style2">Mr.</td>
</tr>

</tbody>
</table>
    </asp:Panel>
    <asp:Panel ID="advancedLevelPanel" runat="server" Visible="False">
<h2 class="compact">
    <strong>
        <span class="style1">Advanced Level Classes</span>
    </strong>
</h2>
<p>--------------------------------------------------</p>
<table class="reference" style="width:100%">
<tbody>
<tr>
	<th class="style6" style="width:30%"><strong>SUBJECT&nbsp; :</strong></th>
	<th class="style5"><strong>TEACHER&nbsp; :</strong></th>
</tr>
<tr>
	<td class="style3">Combined Mathematics</td>
    <td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Biology</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Art</td>
	<td class="style2">Mr.</td>
</tr>
<tr>
	<td class="style3">Commerce</td>
	<td class="style2">Mr.</td>
</tr>


</tbody>
</table>
    </asp:Panel>





</div>
</div>
</div>
</div>

  
  
</div>
</div>
</div>
  </div>
    </div>

</div>

</div>

<div class="secondary">

<!-- Side Page Navigation Tab -->
  <ul class="nav">
		<li class="first"><asp:LinkButton ID="primaryClasses" runat="server" 
                onclick="primaryClasses_Click">Primary Classes</asp:LinkButton></li>
		<li class="" ><asp:LinkButton ID="scolarshipExams" runat="server" 
                onclick="scolarshipExams_Click">Scholarship Exams</asp:LinkButton></li>
		<li class="" ><asp:LinkButton ID="ordinaryLevel69" runat="server" 
                onclick="ordinaryLevel69_Click">Ordinary Level [ 6 TO 9 ] </asp:LinkButton></li>
		<li class="" ><asp:LinkButton ID="ordinaryLevel1011" runat="server" 
                onclick="ordinaryLevel1011_Click">Ordinary Level [ 10 TO 11 ]</asp:LinkButton></li>
		<li class="" ><asp:LinkButton ID="advancedLevel" runat="server" 
                onclick="advancedLevel_Click">Advanced Level</asp:LinkButton></li>
  </ul>

<!-- Side Page Advertisment -->
<div class="sidebar_left">
    <div class="region region-sidebar-left">
        <div id="block-views-hedu-site-banner-block-4" class="block block-views">
            <div class="content">
                <div class="view view-hedu-site-banner view-id-hedu_site_banner view-display-id-block_4 view-dom-id-9136ee978f444b100d1bbd75638d09d2">
                    <div class="view-content">
                        <div class="sidebar-site-banner">
                            <a href="#"><img src="images/max.jpg" alt="Harvard Community" title="Harvard Community" width="223" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>

</div>

</div>
</asp:Content>




<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
