﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyanban.aspx.cs" Inherits="liuyanban" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="down" Src="down.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>留言板</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="css/css2.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body topmargin="0">
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体"></FONT>
			<!---------项部--------------->
			<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="885" align="center" border="0">
				<TR>
					<TD>
						<uc1:top id="Top1" runat="server"></uc1:top></TD>
				</TR>
			</TABLE>
			<!---------中部--------------->
			<TABLE id="Table2" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<tr>
					<TD class="border-r" vAlign="top" borderColor="#ffff00" id="TD2">
						<TABLE id="Table5" cellSpacing="0" cellPadding="1" align="center" border="0" style="width: 768px">
							<tr>
								<td style="width: 626px">
									<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
										<TBODY>
											<TR>
												<TD width="2%" background="background/b_6.jpg"><IMG height="26" src="background/y_2_l.jpg" width="5"></TD>
												<TD width="97%" background="background/b_6.jpg">
													<TABLE height="22" cellSpacing="0" cellPadding="0" width="100%">
														<TBODY>
															<TR>
																<TD width="4%"><IMG height="12" src="background/star_.gif" width="14"></TD>
																<TD vAlign="bottom" width="67%">您的位置：用户留言板&nbsp;&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
																<TD width="15%">
																	<DIV align="right"></DIV>
																</TD>
																<TD style="width: 15%">&nbsp;</TD>
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
								<td style="width: 626px">
									<TABLE id="Table4" cellSpacing="0" cellPadding="1" width="620" border="0">
										<TR>
											<TD width="20%"><FONT face="宋体">您的姓名:</FONT></TD>
											<TD>
												<asp:TextBox id="TextBox1" runat="server" EnableViewState="False"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD width="20%"><FONT face="宋体">你的E_mail:</FONT></TD>
											<TD>
												<asp:TextBox id="TextBox2" runat="server" EnableViewState="False"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD width="20%" valign="top"><FONT face="宋体">发表内容:</FONT></TD>
											<TD>
												<asp:TextBox id="TextBox3" runat="server" Width="320px" Height="112px" TextMode="MultiLine" EnableViewState="False"></asp:TextBox></TD>
										</TR>
									</TABLE>
									<FONT face="宋体">&nbsp;</FONT>
								</td>
							</tr>
							<tr>
								<td style="width: 626px">
									<asp:Button id="Button1" runat="server" Text="提交" onclick="Button1_Click"></asp:Button><FONT face="宋体">&nbsp;&nbsp;&nbsp;
									</FONT><INPUT type="reset" value="重置">
								</td>
							</tr>
							<tr>
								<td height="30" style="width: 626px"></td>
							</tr>
							<tr>
								<td class="border-r" background="background/b_6.jpg" align="center" style="width: 626px"><font color="#cc0000">用户留言信息</font></td>
							</tr>
							<tr>
								<td style="width: 626px">
									<asp:DataList id="DataList1" runat="server" Width="801px">
										<ItemTemplate>
											<FONT face="宋体">
												<TABLE id="Table6" cellSpacing="0" cellPadding="1" width="620" border="0">
													<TR>
														<TD><FONT color="#339999">姓名:</FONT>
															<asp:Label id=Label1 runat="server" Width="136px" Text='<%# DataBinder.Eval(Container, "DataItem.username") %>' ForeColor="Maroon">
															</asp:Label></TD>
													</TR>
													<TR>
														<TD><FONT color="#339999">内容:</FONT>
															<asp:Label id=Label2 runat="server" Width="192px" Text='<%# DataBinder.Eval(Container, "DataItem.lybcontent") %>'>
															</asp:Label></TD>
													</TR>
													<TR>
														<TD height="16"></TD>
													</TR>
												</TABLE>
											</FONT>
										</ItemTemplate>
									</asp:DataList>
								</td>
							</tr>
						</TABLE>
					</TD>
				</tr>
			</TABLE>
			<!---------底部--------------->
			<TABLE id="Table3" cellSpacing="0" cellPadding="1" width="885" align="center" border="0"
				runat="server">
				<TR>
					<TD id="TD1" runat="server"><FONT face="宋体">
							<uc1:down id="Down1" runat="server"></uc1:down></FONT></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>