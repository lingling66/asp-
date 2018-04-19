<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="Left.ascx" TagName="Left" TagPrefix="uc2" %>

<%@ Register TagPrefix="uc1" TagName="down" Src="down.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ASP.NET网上书店</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="css/css2.css" type="text/css" rel="stylesheet">
        <link href="css/css2.css" rel="stylesheet" type="text/css" />
	</HEAD>
	<body topMargin="0">
		<form id="Form1" method="post" runat="server">
			<!---------项部--------------->
			<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="885" align="center" border="0">
				<TR>
					<TD><uc1:top id="Top1" runat="server"></uc1:top></TD>
				</TR>
			</TABLE>
			<!---------中部--------------->
			<TABLE id="Table2" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<TR>
					<TD class="border-r" vAlign="top" align="center" width="255">
                        <uc2:Left ID="Left1" runat="server" />
					</TD>
					<TD class="border-r" vAlign="top">
						<TABLE id="Table5" cellSpacing="0" cellPadding="1" width="620" align="center" border="0">
							<tr>
								<td>
									<table id="Table9" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<TBODY>
											<tr>
												<TD width="7%" background="background/y4_l_z.jpg"><IMG height="25" src="background/y4_l.jpg" width="40"></TD>
												<TD width="12%" background="background/y4_l_z.jpg" height="25"><FONT color="#ffffff"><STRONG>最新商品</STRONG></FONT></TD>
												<TD width="75%" background="background/y4_l3.jpg"><IMG height="25" src="background/y4_l2.jpg" width="18"></TD>
												<TD width="4%" background="background/y4_l3.jpg"></TD>
											</tr>
										</TBODY>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table12" cellSpacing="1" cellPadding="0" width="100%" align="center" border="1">
										<tr>
											<td><asp:datalist id="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" >
													<ItemTemplate>
														<FONT face="宋体">
															<TABLE id="Table8" cellSpacing="0" cellPadding="1" width="150" border="0" runat="server">
																<TR>
																	<TD style="HEIGHT: 28px" align="center"><FONT face="宋体">
																			<asp:Image id=Image1 runat="server" Width="120px" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.pic") %>'>
																			</asp:Image></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">
																			<asp:Label id=Label1 runat="server" Width="112px" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.shangpingname") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">会员价:
																			<asp:Label id=Label2 runat="server" Width="63px" Height="16px" Text='<%# DataBinder.Eval(Container, "DataItem.chushouprice ") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">&nbsp;
																			<asp:HyperLink id=HyperLink1 runat="server" NavigateUrl='<%# "shangpinxingxi.aspx?spid="+DataBinder.Eval(Container, "DataItem.shangpingid") %>'>点击查看</asp:HyperLink></FONT></TD>
																</TR>
															</TABLE>
														</FONT>
													</ItemTemplate>
												</asp:datalist></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table10" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<TBODY>
											<tr>
												<TD width="7%" background="background/y4_l_z.jpg"><IMG height="25" src="background/y4_l.jpg" width="40"></TD>
												<TD width="12%" background="background/y4_l_z.jpg" height="25"><FONT color="#ffffff"><STRONG>推荐商品</STRONG></FONT></TD>
												<TD width="75%" background="background/y4_l3.jpg"><IMG height="25" src="background/y4_l2.jpg" width="18"></TD>
												<TD width="4%" background="background/y4_l3.jpg"></TD>
											</tr>
										</TBODY>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table15" cellSpacing="1" cellPadding="0" width="100%" align="center" border="1">
										<tr>
											<td><asp:datalist id="Datalist2" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
													<ItemTemplate>
														<FONT face="宋体">
															<TABLE id="Table13" cellSpacing="0" cellPadding="1" width="150" border="0" runat="server">
																<TR>
																	<TD style="HEIGHT: 28px" align="center"><FONT face="宋体">
																			<asp:Image id=Image2 runat="server" Width="120px" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.pic") %>'>
																			</asp:Image></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">
																			<asp:Label id=Label3 runat="server" Width="112px" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.shangpingname") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">会员价:
																			<asp:Label id=Label4 runat="server" Width="63px" Height="16px" Text='<%# DataBinder.Eval(Container, "DataItem.chushouprice ") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">&nbsp;
																			<asp:HyperLink id=Hyperlink2 runat="server" NavigateUrl='<%# "shangpinxingxi.aspx?spid="+DataBinder.Eval(Container, "DataItem.shangpingid") %>'>点击查看</asp:HyperLink></FONT></TD>
																</TR>
															</TABLE>
														</FONT>
													</ItemTemplate>
												</asp:datalist></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table11" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<TBODY>
											<tr>
												<TD width="7%" background="background/y4_l_z.jpg"><IMG height="25" src="background/y4_l.jpg" width="40"></TD>
												<TD width="12%" background="background/y4_l_z.jpg" height="25"><FONT color="#ffffff"><STRONG>特价商品</STRONG></FONT></TD>
												<TD width="75%" background="background/y4_l3.jpg"><IMG height="25" src="background/y4_l2.jpg" width="18"></TD>
												<TD width="4%" background="background/y4_l3.jpg"></TD>
											</tr>
										</TBODY>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table id="Table16" cellSpacing="1" cellPadding="0" width="100%" align="center" border="1">
										<tr>
											<td><asp:datalist id="Datalist3" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
													<ItemTemplate>
														<FONT face="宋体">
															<TABLE id="Table14" cellSpacing="0" cellPadding="1" width="150" border="0" runat="server">
																<TR>
																	<TD style="HEIGHT: 28px" align="center"><FONT face="宋体">
																			<asp:Image id=Image3 runat="server" Width="120px" Height="120px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.pic") %>'>
																			</asp:Image></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">
																			<asp:Label id=Label5 runat="server" Width="112px" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.shangpingname") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">会员价:
																			<asp:Label id=Label6 runat="server" Width="63px" Height="16px" Text='<%# DataBinder.Eval(Container, "DataItem.chushouprice ") %>'>
																			</asp:Label></FONT></TD>
																</TR>
																<TR>
																	<TD align="center"><FONT face="宋体">&nbsp;
																			<asp:HyperLink id=Hyperlink3 runat="server" NavigateUrl='<%# "shangpinxingxi.aspx?spid="+DataBinder.Eval(Container, "DataItem.shangpingid") %>'>点击查看</asp:HyperLink></FONT></TD>
																</TR>
															</TABLE>
														</FONT>
													</ItemTemplate>
												</asp:datalist></td>
										</tr>
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
					<TD id="TD1" runat="server"><FONT face="宋体"><uc1:down id="Down1" runat="server"></uc1:down></FONT></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
