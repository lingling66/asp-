<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsInfo.aspx.cs" Inherits="NewsInfo" %>

<%@ Register Src="Left.ascx" TagName="Left" TagPrefix="uc3" %>

<%@ Register Src="down.ascx" TagName="down" TagPrefix="uc2" %>

<%@ Register TagPrefix="uc1" TagName="top" Src="top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ASP.NET网上书店</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="css/css2.css" type="text/css" rel="stylesheet">

        <link href="css/css2.css" rel="stylesheet" type="text/css" />
        <link href="css/css2.css" rel="stylesheet" type="text/css" />
	</HEAD>
	<body topmargin="0">
		<form id="Form1" method="post" runat="server">
			<!---------项部--------------->
			<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="885" align="center" border="0">
				<TR>
					<TD><FONT face="宋体">
							<uc1:top id="Top1" runat="server"></uc1:top></FONT></TD>
				</TR>
			</TABLE>
			<!---------中部--------------->
			<TABLE id="Table2" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<TR>
					<TD class="border-r" vAlign="top" align="center" width="255">
                        <uc3:Left ID="Left1" runat="server" />
					</TD>
					<TD class="border-r" vAlign="top">
						<TABLE id="Table5" cellSpacing="0" cellPadding="1" width="620" align="center" border="0">
							<tr>
								<td>
									<table id="Table9" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<TBODY>
											<tr>
												<TD width="7%" background="background/y4_l_z.jpg"><IMG height="25" src="background/y4_l.jpg" width="40"></TD>
												<TD width="12%" background="background/y4_l_z.jpg" height="25"><FONT color="#ffffff"><STRONG>
															<asp:Label id="Label3" runat="server" Width="72px">新闻内容</asp:Label></STRONG></FONT></TD>
												<TD width="75%" background="background/y4_l3.jpg"><IMG height="25" src="background/y4_l2.jpg" width="18"></TD>
												<TD width="4%" background="background/y4_l3.jpg"></TD>
											</tr>
										</TBODY>
									</table>
								</td>
							</tr>
							<tr>
								<td>
                                    <table id="Table4" align="center" border="0"  bordercolorlight="#ffcf00"
                                        cellpadding="0" cellspacing="0" style="width: 90%">
                                        <tbody>
                                            <tr>
                                                <td align="center" class="tabTitle" colspan="1" height="22"
                                                    style="width: 921px">
                                                    <b>
                                                        <asp:Label ID="Label2" runat="server" Width="96%"></asp:Label></b></td>
                                            </tr>
                                            <tr>
                                                <td align="center"  class="tabTitle" colspan="1" style="width: 921px;
                                                    height: 22px">
                                                    <asp:Label ID="Label1" runat="server" Width="71%"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="1" style="width: 921px; height: auto; text-align: left">
                                                    <strong>
                                                        <div id="DIV1" runat="server" style="width: 618px; height: auto">
                                                        </div>
                                                    </strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
								</td>
							</tr>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		
			<!---------底部--------------->
			<TABLE id="Table3" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<TR>
					<TD id="TD1" runat="server">
                        <uc2:down ID="Down1" runat="server" />
                    </TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
