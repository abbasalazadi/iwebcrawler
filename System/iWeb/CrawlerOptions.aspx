<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrawlerOptions.aspx.cs" Inherits="CrawlerOptions" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="author" content="iWeb Crawler UI" />
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<link rel="stylesheet" href="images/style.css" type="text/css" />
	<title>iWeb Crawler Control Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 119px;
            text-align: left;
        }
        .style4
        {
            text-align: left;
        }
    </style>
</head>
<body>
	<form id="form1" runat="server">
	<div id="page" align="center">
		<div id="toppage" align="center">
			<div id="date">
				<div class="smalltext" style="padding:13px;"><strong>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></strong></div>
			</div>
			<div id="topbar">
				<div align="right" style="padding:12px;" class="smallwhitetext"><a href="Default.aspx">Main Control</a></div>
			</div>
		</div>
		<div id="header" align="center">
			<div class="titletext" id="logo">
				<div class="logotext" style="margin:30px"><span class="orangelogotext">i</span>Crawler</div> 
			</div>
			<div id="pagetitle">
				<div id="title" class="titletext" align="right">Crawler Configuration</div>
			</div>
		</div>
		<div id="content" align="center">
			<div id="menu" align="right">
				<div align="right" style="width:189px; height:8px;"><img src="images/mnu_topshadow.gif" width="189" height="8" alt="mnutopshadow" /></div>
				<div id="linksmenu" align="center">
					<a href="Default.aspx" title="Main Control">Main Control</a>
					<a href="CreateTask.aspx" title="Create a new Task">Create Task</a>
					<a href="SelectTask.aspx?target=edit" title="Edit Task Proporties">Edit Task</a>
					<a href="SelectTask.aspx?target=options" title="Crawler Options">Crawler Options</a>
					<a href="SelectTask.aspx?target=invoke" title="Start/Stop Task">Start/Stop Task</a>
					<a href="SelectTask.aspx?target=results" title="View Crawler Results">View Results</a>
				</div>
				<div align="right" style="width:189px; height:8px;"><img src="images/mnu_bottomshadow.gif" width="189" height="8" alt="mnubottomshadow" /></div>
			</div>
		<div id="contenttext">
			<div class="bodytext" style="padding:12px;" align="justify">
				<strong>Crawler Options</strong><br />
				
			</div>
			<div class="panel" style="height:25px; text-align: center;">
			    <table class="style1">
                    <tr>
                        <td>
                            <span class="bodytext">Threads:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="73px">4</asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="Illegal" 
                                ValidationExpression="\d(\d)?"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <span class="bodytext">Frontier Design:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
			</div>
			<div runat="server" id="divCategorizerOptionsText" visible="false" class="bodytext" style="padding:12px;" align="justify">
				<strong>Categorizer Options</strong><br />
				
			</div>
			<div runat="server" id="divCategorizerOptions" visible="false" class="panel" style="height:75px; text-align: center;">
			    <table class="style1">
                    <tr>
                        <td class="style4">
                            <span class="bodytext">Alpha:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox2" runat="server" Width="60px" 
                                ontextchanged="TextBox2_TextChanged">2500</asp:TextBox>
                        </td>
                        <td class="style4">
                            <span class="bodytext">Beta:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox3" runat="server" Width="60px">0.1</asp:TextBox>
                        </td>
                        <td class="style3">
                            <span class="bodytext">Gamma:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox4" runat="server" Width="60px">75</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <span class="bodytext">Min. words: </span>
                            </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox5" runat="server" Width="60px" 
                                ontextchanged="TextBox5_TextChanged">5000</asp:TextBox>
                        </td>
                        <td class="style4">
                            <span class="bodytext">Penalty: </span>
                            </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox6" runat="server" Width="60px">0.25</asp:TextBox>
                        </td>
                        <td class="style3">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="Illegal" 
                                ValidationExpression="0[.]\d(\d)?"></asp:RegularExpressionValidator>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    </table>
			</div>
			
			<div runat="server" id="divNearbyOptionsText" visible="false" class="bodytext" style="padding:12px;" align="justify">
				<strong>Nearby Options</strong><br />
				
			</div>
			
			<div runat="server" id="divNearbyOptions" visible="false" class="panel" style="height:75px; text-align: center;">
			    <table class="style1">
                    <tr>
                        <td class="style4">
                            <span class="bodytext">Alpha:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox12" runat="server" Width="60px">450</asp:TextBox>
                        </td>
                        <td class="style4">
                            <span class="bodytext">Beta:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox13" runat="server" Width="60px">0.125</asp:TextBox>
                        </td>
                        <td class="style3">
                            <span class="bodytext">Gamma:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox14" runat="server" Width="60px">120</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <span class="bodytext">Min. words: </span>
                            </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox15" runat="server" Width="60px">1</asp:TextBox>
                        </td>
                        <td class="style4">
                            <span class="bodytext">Penalty: </span>
                            </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox16" runat="server" Width="60px">0.25</asp:TextBox>
                        </td>
                        <td class="style3">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="TextBox16" ErrorMessage="Illegal" 
                                ValidationExpression="0[.]\d(\d)?"></asp:RegularExpressionValidator>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    </table>
			</div>
			
			<div runat="server" id="divAnchorOptionsText" visible="false" class="bodytext" style="padding:12px;" align="justify">
				<strong>Anchor Options</strong><br />
				
			</div>
			
			<div runat="server" id="divAnchorOptions" visible="false" class="panel" style="height:75px; text-align: center;">
			    <table class="style1">
                    <tr>
                        <td class="style4">
                            <span class="bodytext">Alpha:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox17" runat="server" Width="60px">350</asp:TextBox>
                        </td>
                        <td class="style4">
                            <span class="bodytext">Beta:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox18" runat="server" Width="60px">0.125</asp:TextBox>
                        </td>
                        <td class="style3">
                            <span class="bodytext">Gamma:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox19" runat="server" Width="60px">0</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <span class="bodytext">Min. words: </span>
                            </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox20" runat="server" Width="60px">0</asp:TextBox>
                        </td>
                        <td class="style4">
                            <span class="bodytext">Penalty: </span>
                            </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox21" runat="server" Width="60px">0.25</asp:TextBox>
                        </td>
                        <td class="style3">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="TextBox21" ErrorMessage="Illegal" 
                                ValidationExpression="0[.]\d(\d)?"></asp:RegularExpressionValidator>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    </table>
			</div>
			
			<div runat="server" id="divRankerOptionsText" visible="false" class="bodytext" style="padding:12px;" align="justify">
				<strong>Ranker Options</strong><br />
				
			</div>
			
			<div runat="server" id="divRankerOptions" visible="false" class="panel" style="height:50px; text-align: center;">
			    <table class="style1">
                    <tr>
                        <td class="style4">
                            <span class="bodytext">Alpha:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox22" runat="server" Width="60px">0.5</asp:TextBox>
                        </td>
                        <td class="style4">
                            <span class="bodytext">Beta:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox23" runat="server" Width="60px">0.4</asp:TextBox>
                        </td>
                        <td class="style3">
                            <span class="bodytext">Gamma:</td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox24" runat="server" Width="60px">0.2</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <span class="bodytext">Delta: </span>
                            </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox25" runat="server" Width="60px">75</asp:TextBox>
                        </td>
                        <td class="style4">
                            <span class="bodytext">Nearby Chars: </span>
                            </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox26" runat="server" Width="60px">800</asp:TextBox>
                        </td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    </table>
			</div>
			
			<div style="text-align: center">
			
			    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" 
                     />
                    </div>
	
			</div>
			
		</div>
		<div id="footer" class="smallgraytext" align="center">
		<img src="images/crawler.jpg" /><br />
<a href="Default.aspx">Main Control Page</a> | <a href="CreateTask.aspx">Create Task</a> | <a href="SelectTask.aspx?target=edit">Edit Task Proporties</a> | <a href="SelectTask.aspx?target=invoke">Start/Stop Task</a> | <a href="SelectTask.aspx?target=results">View Results</a><br />
			UI Version: <asp:Label ID="LabelUIVersion" runat="server" Text="Label"></asp:Label>, Core Version: <asp:Label ID="LabelEngineVersion" runat="server" Text="Label"></asp:Label><br />
			iWeb Crawler Development Team &copy; 2010<br />
				
			
		</div>
	</div>
    </form>
</body>
</html>
