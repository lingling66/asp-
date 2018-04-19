<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="admin_Add" %>

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
					<TD align="center"><FONT face="宋体">增加商品</FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商 品 名:&nbsp;&nbsp;
							<asp:TextBox id="TextBox1" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商品规格: &nbsp;
							<asp:TextBox id="Textbox2" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商品品牌: &nbsp;
							<asp:TextBox id="Textbox3" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">添加数量: &nbsp;
							<asp:TextBox id="Textbox4" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商品价格: &nbsp;
							<asp:TextBox id="Textbox5" runat="server"></asp:TextBox></FONT></TD>
				</TR>
				<tr>
					<td><FONT face="宋体"> 出售价格:&nbsp;&nbsp;
							<asp:TextBox id="TextBox6" runat="server" Width="152px"></asp:TextBox></FONT>
					</td>
				</tr>
				<TR>
					<TD><FONT face="宋体">商品类别: &nbsp;
							<asp:DropDownList id="DropDownList1" runat="server" Width="112px"></asp:DropDownList></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">网站分类: &nbsp;
							<asp:DropDownList id="DropDownList2" runat="server" Width="112px"></asp:DropDownList></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">商品图片:&nbsp; &nbsp;<INPUT type="file" id="File1" style="WIDTH: 400px; HEIGHT: 22px" size="47" name="File1"
								runat="server"></FONT></TD>
				</TR>
				<TR>
					<TD><FONT face="宋体"> 商品说明:&nbsp;&nbsp;
							<asp:TextBox id="Textbox7" runat="server" Width="552px" Height="171px" TextMode="MultiLine"></asp:TextBox></FONT></TD>
				</TR>
				<TR>
					<TD align="center"><FONT face="宋体">
							<asp:Button id="Button1" runat="server" Text="确定" onclick="Button1_Click"></asp:Button>&nbsp;&nbsp;
							<asp:Button id="Button2" runat="server" Text="退出" onclick="Button2_Click"></asp:Button></FONT></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
