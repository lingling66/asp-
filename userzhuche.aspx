<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userzhuche.aspx.cs" Inherits="userzhuche" %>

<%@ Register Src="down.ascx" TagName="down" TagPrefix="uc1" %>
<%@ Register Src="top.ascx" TagName="top" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>ASP.NET网上书店</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="css/css2.css" type="text/css" rel="stylesheet">
        <link href="css/css2.css" rel="stylesheet" type="text/css" />
        <link href="css/css2.css" rel="stylesheet" type="text/css" />
	</HEAD>
	<body topMargin="0">
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="855" border="0" align="center">
					<TBODY>
						<TR>
							<TD>
                                <uc2:top ID="Top1" runat="server" />
                            </TD>
						</TR>
						<TR>
							<TD>
								<TABLE id="Table2" cellSpacing="0" cellPadding="1" width="855" border="0" align="center">
									<TBODY>
										<tr>
											<td>
												<TABLE cellSpacing="0" cellPadding="3" width="760" bgColor="#f4f8ff" border="0">
													<tr>
														<td>
															<TABLE cellSpacing="0" cellPadding="3" width="760" bgColor="#f4f8ff" border="0">
																<TBODY>
																	<TR>
																		<TD vAlign="top">
																			<TABLE cellSpacing="0" cellPadding="0" bgColor="#ffffff" border="0">
																				<TBODY>
																					<TR>
																						<TD style="HEIGHT: 10px" width="10" height="10"><IMG height="10" src="background/border1.gif" width="10" border="0"></TD>
																						<TD style="HEIGHT: 10px" background="background/line2.gif" height="10"><IMG height="10" src="background/line2.gif" width="1"></TD>
																						<TD style="HEIGHT: 10px" width="10" height="10"><IMG height="10" src="background/border2.gif" width="10" border="0"></TD>
																					</TR>
																					<TR>
																						<TD width="10" background="background/line1.gif"><IMG height="1" src="background/line1.gif" width="10"></TD>
																						<TD width="740">
																							<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
																								<TBODY>
																									<TR align="center">
																										<TD style="BORDER-BOTTOM: #c0c0c0 1px dotted" width="100%" height="23"><font color="#33ccff" size="3">登录信息</font></TD>
																									</TR>
																									<TR>
																										<TD vAlign="baseline" align="center"><BR>
																											<FONT color="red">请先检测您的用户名是否已经有人占用！</FONT><BR>
																											<TABLE cellSpacing="2" cellPadding="5" width="90%" border="0">
																												<TR>
																													<TD style="WIDTH: 100px" width="100" bgColor="#fcf2ef">
																														<DIV align="right"><STRONG>&nbsp;&nbsp; &nbsp;帐户名： </STRONG>
																														</DIV>
																													</TD>
																													<TD width="42%" bgColor="#fcf2ef" align="left"><FONT color="#ff6c00"><asp:textbox id="TextBox1" runat="server" Width="152px"></asp:textbox>&nbsp;*&nbsp;</FONT>
																														<asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" Width="48px" Height="8px" ControlToValidate="TextBox1"
																															ErrorMessage="不能为空"></asp:RequiredFieldValidator></TD>
																													<TD width="37%" bgColor="#fcf2ef">4-12个数字或字母或“-”、“_”</TD>
																												</TR>
																												<TR>
																													<TD style="WIDTH: 100px" bgColor="#fcf2ef">
																														<DIV align="right"><STRONG>登陆密码：</STRONG></DIV>
																													</TD>
																													<TD bgColor="#fcf2ef" align="left"><FONT color="#ff6c00"><asp:textbox id="TextBox2" runat="server" Width="152px" TextMode="Password"></asp:textbox>&nbsp;*&nbsp;
																															<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" Width="48px" ErrorMessage="不能为空" ControlToValidate="TextBox2"
																																Height="8px"></asp:RequiredFieldValidator>
																														</FONT>
																													</TD>
																													<TD bgColor="#fcf2ef">4－16个字母、数字或符号组成，建议使用大小写字母与数字混合组成密码。</TD>
																												</TR>
																												<TR>
																													<TD style="WIDTH: 100px" bgColor="#fcf2ef">
																														<DIV align="right"><STRONG>登陆密码确认：</STRONG></DIV>
																													</TD>
																													<TD bgColor="#fcf2ef" align="left"><FONT color="#ff6c00"><asp:textbox id="TextBox3" runat="server" Width="152px" TextMode="Password"></asp:textbox>&nbsp;*
																															<asp:CompareValidator id="CompareValidator1" runat="server" Width="64px" ErrorMessage="密码不一致" ControlToValidate="TextBox3"
																																ControlToCompare="TextBox2" Display="Dynamic"></asp:CompareValidator>
																															<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" Width="48px" Height="8px" ControlToValidate="TextBox3"
																																ErrorMessage="不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
																														</FONT>
																													</TD>
																													<TD bgColor="#fcf2ef">请再输入一遍上面的登陆密码。</TD>
																												</TR>
																												<TR>
																													<TD style="WIDTH: 100px" bgColor="#fcf2ef">
																														<DIV align="right"><STRONG>验证码：</STRONG></DIV>
																													</TD>
																													<TD bgColor="#fcf2ef" align="left"><FONT color="#ff6c00"><asp:textbox id="Textbox10" runat="server" Width="72px"></asp:textbox>&nbsp;<IMG id="_ctl1_UserLogin1_Image1" alt="" src="yanzhenma/yanzhenma.aspx" width="50" align="bottom"
																																border="0" height="24">
																															<asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" Width="48px" Height="8px" ControlToValidate="Textbox10"
																																ErrorMessage="不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
																														</FONT>
																													</TD>
																													<TD bgColor="#fcf2ef">请再输入一遍上面的登陆密码。</TD>
																												</TR>
																											</TABLE>
																											<BR>
																										</TD>
																									</TR>
																								</TBODY>
																							</TABLE>
																						</TD>
																						<TD width="10" background="background/line3.gif"><IMG height="1" src="background/line3.gif" width="10"></TD>
																					</TR>
																					<TR>
																						<TD width="10" height="10"><IMG height="10" src="background/border4.gif" width="10" border="0"></TD>
																						<TD background="background/line4.gif" height="10"><IMG height="10" src="background/line4.gif" width="1"></TD>
																						<TD width="10" height="10"><IMG height="10" src="background/border3.gif" width="10" border="0"></TD>
																					</TR>
																				</TBODY>
																			</TABLE>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
														</td>
													</tr>
												</TABLE>
											</td>
										</tr>
										<tr>
											<td>
												<TABLE cellSpacing="0" cellPadding="3" width="760" bgColor="#f4f8ff" border="0">
													<TBODY>
														<TR>
															<TD vAlign="top">
																<TABLE cellSpacing="0" cellPadding="0" bgColor="#ffffff" border="0">
																	<TBODY>
																		<TR>
																			<TD width="10" height="10"><IMG height="10" src="background/border1.gif" width="10" border="0"></TD>
																			<TD background="background/line2.gif" height="10"><IMG height="10" src="background/line2.gif" width="1"></TD>
																			<TD width="10" height="10"><IMG height="10" src="background/border2.gif" width="10" border="0"></TD>
																		</TR>
																		<TR>
																			<TD width="10" background="background/line1.gif"><IMG height="1" src="background/line1.gif" width="10"></TD>
																			<TD width="740">
																				<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
																					<TBODY>
																						<TR align="center">
																							<TD style="BORDER-BOTTOM: #c0c0c0 1px dotted" width="100%" height="23"><font color="#33ccff" size="3">个人信息</font></TD>
																						</TR>
																						<TR>
																							<TD vAlign="baseline" align="center"><BR>
																								<TABLE cellSpacing="2" cellPadding="5" width="90%" border="0">
																									<TBODY>
																										<TR>
																											<TD width="21%" bgColor="#fcf2ef">
																												<DIV align="right"><STRONG>真实姓名：<BR>
																													</STRONG>
																												</DIV>
																											</TD>
																											<TD width="42%" bgColor="#fcf2ef" align="left"><FONT color="#ff6c00">
																													<asp:TextBox id="TextBox4" runat="server"></asp:TextBox>&nbsp;*
																													<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" Width="64px" ErrorMessage="不能为空" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
																												</FONT>
																											</TD>
																											<TD width="37%" bgColor="#fcf2ef">请如实填写，中文文字之间请不要使用空格。</TD>
																										</TR>
																										<TR>
																											<TD bgColor="#fcf2ef">
																												<DIV align="right"><STRONG>E-mail： </STRONG>
																												</DIV>
																											</TD>
																											<TD bgColor="#fcf2ef" align="left"><FONT color="#ff6c00">
																													<asp:TextBox id="TextBox5" runat="server"></asp:TextBox>&nbsp;*
																													<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" Width="32px" Height="20px" ControlToValidate="TextBox5"
																														ErrorMessage="错误" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
																													<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" Width="48px" Height="8px" ControlToValidate="TextBox5"
																														ErrorMessage="不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
																												</FONT>
																											</TD>
																											<TD bgColor="#fcf2ef">邮箱用于接收交易通知，找回密码，请如实填写。
																											</TD>
																										</TR>
																										<TR>
																											<TD bgColor="#fcf2ef">
																												<DIV align="right"><STRONG>证件号码：</STRONG></DIV>
																											</TD>
																											<TD bgColor="#fcf2ef" align="left"><FONT color="#ff6c00">
																													<asp:TextBox id="TextBox6" runat="server"></asp:TextBox>&nbsp;*
																													<asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="错误"
																														ValidationExpression="\d{18}|\d{15}" Display="Dynamic"></asp:RegularExpressionValidator>
																													<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" Width="48px" Height="8px" ControlToValidate="TextBox6"
																														ErrorMessage="不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
																												</FONT>
																											</TD>
																											<TD bgColor="#fcf2ef">请如实填写您的证件号码。<BR>
																											</TD>
																										</TR>
																									</TBODY>
																								</TABLE>
																								<BR>
																							</TD>
																						</TR>
																					</TBODY>
																				</TABLE>
																			</TD>
																			<TD width="10" background="background/line3.gif"><IMG height="1" src="background/line3.gif" width="10"></TD>
																		</TR>
																		<TR>
																			<TD width="10" height="10"><IMG height="10" src="background/border4.gif" width="10" border="0"></TD>
																			<TD background="background/line4.gif" height="10"><IMG height="10" src="background/line4.gif" width="1"></TD>
																			<TD width="10" height="10"><IMG height="10" src="background/border3.gif" width="10" border="0"></TD>
																		</TR>
																	</TBODY>
																</TABLE>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
											</td>
										</tr>
										<tr>
											<td>
												<TABLE cellSpacing="0" cellPadding="3" width="760" bgColor="#f4f8ff" border="0">
													<TBODY>
														<TR>
															<TD vAlign="top">
																<TABLE cellSpacing="0" cellPadding="0" bgColor="#ffffff" border="0">
																	<TBODY>
																		<TR>
																			<TD width="10" height="10"><IMG height="10" src="background/border1.gif" width="10" border="0"></TD>
																			<TD background="background/line2.gif" height="10"><IMG height="10" src="background/line2.gif" width="1"></TD>
																			<TD width="10" height="10"><IMG height="10" src="background/border2.gif" width="10" border="0"></TD>
																		</TR>
																		<TR>
																			<TD width="10" background="background/line1.gif"><IMG height="1" src="background/line1.gif" width="10"></TD>
																			<TD width="740">
																				<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
																					<TBODY>
																						<TR align="center">
																							<TD style="BORDER-BOTTOM: #c0c0c0 1px dotted" width="100%" height="23"><font color="#33ccff" size="3">选填信息</font></TD>
																						</TR>
																						<TR>
																							<TD vAlign="baseline" align="center"><BR>
																								<TABLE cellSpacing="2" cellPadding="5" width="90%" border="0">
																									<TBODY>
																										<TR>
																											<TD width="21%" bgColor="#fcf2ef">
																												<DIV align="right"><STRONG>联系电话： </STRONG>
																												</DIV>
																											</TD>
																											<TD width="42%" bgColor="#fcf2ef" align="left">
																												<asp:TextBox id="TextBox7" runat="server"></asp:TextBox>&nbsp;
																											</TD>
																											<TD width="37%" bgColor="#fcf2ef" rowSpan="4">个人信息仅用于帮助我们核对用户身份，帮助您迅速取回帐户，防止他人冒用您的名义。
																											</TD>
																										</TR>
																										<TR>
																											<TD bgColor="#fcf2ef">
																												<DIV align="right"><STRONG>手机：</STRONG></DIV>
																											</TD>
																											<TD bgColor="#fcf2ef" align="left">
																												<asp:TextBox id="TextBox8" runat="server"></asp:TextBox>&nbsp;
																											</TD>
																										</TR>
																										<TR>
																											<TD bgColor="#fcf2ef">
																												<DIV align="right"><STRONG>家庭住址： </STRONG>
																												</DIV>
																											</TD>
																											<TD bgColor="#fcf2ef" align="left">
																												<asp:TextBox id="TextBox9" runat="server"></asp:TextBox></TD>
																										</TR>
																									</TBODY>
																								</TABLE>
																								<BR>
																							</TD>
																						</TR>
																					</TBODY>
																				</TABLE>
																			</TD>
																			<TD width="10" background="background/line3.gif"><IMG height="1" src="background/line3.gif" width="10"></TD>
																		</TR>
																		<TR>
																			<TD width="10" height="10"><IMG height="10" src="background/border4.gif" width="10" border="0"></TD>
																			<TD background="background/line4.gif" height="10"><IMG height="10" src="background/line4.gif" width="1"></TD>
																			<TD width="10" height="10"><IMG height="10" src="background/border3.gif" width="10" border="0"></TD>
																		</TR>
																	</TBODY>
																</TABLE>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
											</td>
										</tr>
										<tr>
											<td>
												<TABLE cellSpacing="0" cellPadding="3" width="760" bgColor="#f4f8ff" border="0">
													<TBODY>
														<TR>
															<TD vAlign="top">
																<TABLE cellSpacing="0" cellPadding="0" bgColor="#ffffff" border="0">
																	<TBODY>
																		<TR>
																			<TD width="10" height="10"><IMG height="10" src="background/border1.gif" width="10" border="0"></TD>
																			<TD background="background/line2.gif" height="10"><IMG height="10" src="background/line2.gif" width="1"></TD>
																			<TD width="10" height="10"><IMG height="10" src="background/border2.gif" width="10" border="0"></TD>
																		</TR>
																		<TR>
																			<TD width="10" background="background/line1.gif"><IMG height="1" src="background/line1.gif" width="10"></TD>
																		<tr>
																			<td width="760" align="center">
																				<asp:ImageButton id="Imagebutton2" runat="server" Width="50px" Height="22px" ImageUrl="background/btreg.jpg" OnClick="Imagebutton2_Click"></asp:ImageButton>
																			</td>
																		</tr>
																		<TR>
																			<TD width="10" background="background/line3.gif"><IMG height="1" src="background/line3.gif" width="10"></TD>
																		</TR>
																		<TR>
																			<TD width="10" height="10"><IMG height="10" src="background/border4.gif" width="10" border="0"></TD>
																			<TD background="background/line4.gif" height="10"><IMG height="10" src="background/line4.gif" width="1"></TD>
																			<TD width="10" height="10"><IMG height="10" src="background/border3.gif" width="10" border="0"></TD>
																		</TR>
																	</TBODY>
																</TABLE>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
											</td>
										</tr>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
						<!-- 分隔 -->
						<tr>
							<td>
                                <uc1:down ID="Down1" runat="server" />
							</td>
						</tr>
					</TBODY>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
