<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopping.aspx.cs" Inherits="shopping" %>

<%@ Register Src="down.ascx" TagName="down" TagPrefix="uc1" %>
<%@ Register Src="top.ascx" TagName="top" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>shopping</title>
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
				<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="885" align="center" border="0">
					<TR>
						<TD>
                            <uc2:top ID="Top1" runat="server" />
                        </TD>
					</TR>
					<TR>
						<TD>
							<TABLE cellSpacing="0" cellPadding="0" width="885" align="center" border="0">
								<tr>
									<TD width="2%" background="background/b_6.jpg"><IMG height="26" src="background/y_2_l.jpg" width="5"></TD>
									<TD width="97%" background="background/b_6.jpg">
										<TABLE height="22" cellSpacing="0" cellPadding="0" width="100%">
											<TBODY>
												<TR>
													<TD width="4%"><IMG height="12" src="background/star_.gif" width="14"></TD>
													<TD vAlign="bottom" width="67%">您的位置： &gt; <STRONG>购物车 </STRONG>
													</TD>
													<TD width="15%"></TD>
													<TD width="15%">&nbsp;</TD>
													<TD width="15%">&nbsp;</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
									<TD width="1%"><IMG height="26" src="background/y_2_r.jpg" width="5"></TD>
								</tr>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD align="center"><asp:datagrid id="DataGrid1" runat="server" AutoGenerateColumns="False" Width="600px" onload="DataGrid1_Load">
								<HeaderStyle BackColor="#CCFFFF"></HeaderStyle>
								<Columns>
									<asp:BoundColumn DataField="shangpingid" HeaderText="商品编号"></asp:BoundColumn>
									<asp:BoundColumn DataField="shangpingname" HeaderText="商品名"></asp:BoundColumn>
									<asp:BoundColumn DataField="price" HeaderText="价格"></asp:BoundColumn>
									<asp:BoundColumn DataField="quantity" HeaderText="数量"></asp:BoundColumn>
									<asp:BoundColumn DataField="allprice" HeaderText="总价格"></asp:BoundColumn>
									<asp:ButtonColumn Text="删除" HeaderText="删除" CommandName="Delete"></asp:ButtonColumn>
								</Columns>
							</asp:datagrid>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共
							<asp:label id="Label2" runat="server" Width="56px">Label</asp:label>&nbsp;&nbsp;&nbsp;件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							总金额:<asp:label id="Label1" runat="server" Width="88px">Label</asp:label>元</TD>
					</TR>
					<tr>
						<td height="40"></td>
					</tr>
					<TR>
						<TD align="center"><asp:imagebutton id="ImageButton1" runat="server" Width="128px" EnableViewState="False" Height="40px"
								ImageUrl="background/cart1.gif"></asp:imagebutton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:imagebutton id="ImageButton2" runat="server" Width="128px" Height="40px" ImageUrl="background/cart2.gif"></asp:imagebutton></TD>
					</TR>
					<TR>
						<TD align="center"><asp:panel id="Panel1" runat="server" Width="80%" Visible="False">
								<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="600" border="1" runat="server">
									<TR>
										<TD width="20%">你的姓名:</TD>
										<TD width="60%">
											<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="输入你的真实姓名"></asp:RequiredFieldValidator></TD>
										<TD width="20%"><FONT color="#00cc00">*必填项</FONT></TD>
									</TR>
									<TR>
										<TD width="20%">你的电话:</TD>
										<TD width="60%">
											<asp:TextBox id="TextBox2" runat="server"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="联系电话"></asp:RequiredFieldValidator></TD>
										<TD width="20%"><FONT color="#00cc00">*必填项</FONT></TD>
									</TR>
									<TR>
										<TD width="20%">邮寄地址:</TD>
										<TD width="60%">
											<asp:TextBox id="TextBox3" runat="server"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="你的地址"></asp:RequiredFieldValidator></TD>
										<TD width="20%"><FONT color="#00cc00">*必填项</FONT></TD>
									</TR>
									<TR>
										<TD width="20%">其它说明:</TD>
										<TD width="60%">
											<asp:TextBox id="TextBox4" runat="server" Width="264px"></asp:TextBox></TD>
										<TD width="20%"><FONT color="#00cc00"></FONT></TD>
									</TR>
									<TR>
										<TD align="center" colSpan="3">
											<asp:imagebutton id="Imagebutton3" runat="server" Width="128px" Height="40px" ImageUrl="background/cart3.gif"></asp:imagebutton></TD>
									</TR>
									<TR>
										<TD align="center" colSpan="3"><FONT color="#009900">注意:请在24小时内将汇款汇入账号,否则定单无效</FONT></TD>
									</TR>
									<TR>
										<TD align="center" colSpan="3"><FONT color="#009900">中国建设行银行:888888888888888888</FONT></TD>
									</TR>
									<TR>
										<TD align="center" colSpan="3"><FONT color="#009900">联系电话:13999999999 联系人:张小姐</FONT></TD>
									</TR>
								</TABLE>
							</asp:panel></TD>
					</TR>
					<tr>
						<td>
                            <uc1:down ID="Down1" runat="server" />
                        </td>
					</tr>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
