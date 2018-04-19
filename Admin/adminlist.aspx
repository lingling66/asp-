<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlist.aspx.cs" Inherits="admin_adminlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>admin</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="100%" border="1" runat="server">
					<TR>
						<TD bgColor="#ffccff">管理员信息</TD>
					</TR>
					<TR>
						<TD width="100%">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="adminid"
                                GridLines="Vertical" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                                OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="100%">
                                <Columns>
                                    <asp:TemplateField HeaderText="账号">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("adminname") %>' Width="60"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server"><%# Eval("adminname")%></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField HeaderText="密码">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="adminpassword" runat="server" Text='<%# Eval("adminpassword") %>' Width="60"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="adminpassword" runat="server"><%# Eval("adminpassword")%></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <AlternatingRowStyle BackColor="Gainsboro" />
                            </asp:GridView>
                        </TD>
					</TR>
					<TR>
						<TD>
							<asp:Button id="Button1" runat="server" Text="增加管理员" onclick="Button1_Click" CausesValidation="False"></asp:Button>&nbsp;&nbsp;
							<asp:Button id="Button3" runat="server" Width="88px" Text="修改密码" onclick="Button3_Click" CausesValidation="False"></asp:Button></TD>
					</TR>
					<TR>
						<TD>
							<asp:Panel id="Panel1" runat="server" Visible="False">
								<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="500" border="1">
									<TR>
										<TD>管理员账号:</TD>
										<TD>
											<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></TD>
									</TR>
									<TR>
										<TD>管理员密码:</TD>
										<TD>
											<asp:TextBox id="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox2"
												Display="Dynamic"></asp:RequiredFieldValidator></TD>
									</TR>
									<TR>
										<TD>确认密码:</TD>
										<TD id="TD1">
											<asp:TextBox id="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox3"
												Display="Dynamic"></asp:RequiredFieldValidator>
											<asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="密码不一致" ControlToValidate="TextBox3"
												Display="Dynamic" ControlToCompare="TextBox2"></asp:CompareValidator></TD>
									</TR>
									<TR>
										<TD align="center" colSpan="2">
											<asp:Button id="Button2" runat="server" Text="确定" onclick="Button2_Click"></asp:Button></TD>
									</TR>
								</TABLE>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD>
							<asp:Panel id="Panel2" runat="server" Visible="False">
								<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="500" border="1">
									<TR>
										<TD>新密码:</TD>
										<TD>
											<asp:TextBox id="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></TD>
									</TR>
									<TR>
										<TD>确认密码:</TD>
										<TD>
											<asp:TextBox id="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
											<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ErrorMessage="不能为空" ControlToValidate="TextBox5"
												Display="Dynamic"></asp:RequiredFieldValidator>
											<asp:CompareValidator id="CompareValidator2" runat="server" ErrorMessage="密码不一致" ControlToValidate="TextBox5"
												Display="Dynamic" ControlToCompare="TextBox4"></asp:CompareValidator></TD>
									</TR>
									<TR>
										<TD align="center" colSpan="2">
											<asp:Button id="Button4" runat="server" Text="确定" onclick="Button4_Click"></asp:Button>
                                            <asp:Label ID="LabelWarningMessage" runat="server" Text="Label"></asp:Label></TD>
									</TR>
								</TABLE>
							</asp:Panel></TD>
					</TR>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
