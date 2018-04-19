<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="Admin_AddNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>shangpingadd</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" align="center" cellSpacing="1" cellPadding="1" width="100%" border="1"
				class="table2">
				<TR>
					<TD align="center"><FONT face="宋体">添加新闻公告</FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">新闻标题:&nbsp;&nbsp;
							<asp:TextBox id="TextBox1" runat="server" Width="462px"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体"> 新闻内容:&nbsp;&nbsp;
							<asp:TextBox id="Textbox7" runat="server" Width="822px" Height="171px" TextMode="MultiLine"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD align="center"><FONT face="宋体">
							<asp:Button id="Button1" runat="server" Text="确定" onclick="Button1_Click"></asp:Button>&nbsp;&nbsp;
							</FONT></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
