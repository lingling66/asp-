<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shangpinxingxi.aspx.cs" Inherits="shangpinxingxi" %>

<%@ Register Src="top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="Left.ascx" TagName="Left" TagPrefix="uc2" %>
<%@ Register Src="down.ascx" TagName="down" TagPrefix="uc3" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ASP.NET网上书店
</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="css/css2.css" type="text/css" rel="stylesheet">
        <link href="css/css2.css" rel="stylesheet" type="text/css" />
        <link href="css/css2.css" rel="stylesheet" type="text/css" />
	</HEAD>
	<body topmargin="0">
		<form id="Form1" method="post" runat="server">
			<!---------项部--------------->
			<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="885" align="center" border="0">
				<TR>
					<TD>
                        <uc1:top ID="Top1" runat="server" />
                    </TD>
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
						<TABLE id="Table8" cellSpacing="0" cellPadding="1" width="620" align="center" border="0">
							<tr>
								<td>
									<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
										<TBODY>
											<TR>
												<TD width="2%" background="background/b_6.jpg"><IMG height="26" src="background/y_2_l.jpg" width="5"></TD>
												<TD width="97%" background="background/b_6.jpg">
													<TABLE height="22" cellSpacing="0" cellPadding="0" width="100%">
														<TBODY>
															<TR>
																<TD width="4%"><IMG height="12" src="background/star_.gif" width="14"></TD>
																<TD vAlign="bottom" style="width: 96%">您的位置：珠宝&nbsp;&gt;&gt;&nbsp;&nbsp;
																	<asp:label id="Label1" runat="server">Label</asp:label>&nbsp;&nbsp;&nbsp; 
																	商品信息： </TD>
																<TD width="15%">
																	<DIV align="right"></DIV>
																</TD>
																<TD width="15%">&nbsp;</TD>
																<TD width="15%">&nbsp;</TD>
															</TR>
														</TBODY>
													</TABLE>
												</TD>
												<TD width="1%"><IMG height="26" src="background/y_2_r.jpg" width="5"></TD>
											</TR>
										</TBODY>
									</TABLE>
								</td>
							</tr>
							<tr>
								<td>
									<TABLE id="Table9" cellSpacing="1" cellPadding="1" width="500" align="center" border="1">
										<TR>
											<TD align="center" colSpan="2"><asp:image id="Image1" runat="server" Width="120px" Height="120px"></asp:image></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品编号:</FONT></TD>
											<TD><asp:label id="Label2" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品名称:</FONT></TD>
											<TD><asp:label id="Label3" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品规格:</FONT></TD>
											<TD><asp:label id="Label4" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品品牌:</FONT></TD>
											<TD><asp:label id="Label5" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">会员价格:</FONT></TD>
											<TD><asp:label id="Label6" runat="server" Width="168px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">商品说明:</FONT></TD>
											<TD><asp:label id="Label7" runat="server" Width="288px">Label</asp:label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 108px"><FONT face="宋体">购物数量:</FONT></TD>
											<TD>
												<asp:TextBox id="TextBox4" runat="server" Width="112px">1</asp:TextBox></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="2"><FONT face="宋体"><asp:imagebutton id="ImageButton3" runat="server" Width="104px" Height="42px" ImageUrl="background/gw.jpg" OnClick="ImageButton3_Click"></asp:imagebutton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT></TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<!---------底部--------------->
			<TABLE id="Table10" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<TR>
					<TD id="TD1" runat="server">
                        <uc3:down ID="Down1" runat="server" />
                    </TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
