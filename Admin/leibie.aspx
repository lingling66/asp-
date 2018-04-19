<%@ Page Language="C#" AutoEventWireup="true" CodeFile="leibie.aspx.cs" Inherits="admin_leibie" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>shangpingleibie</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="100%" border="0" runat="server">
					<TR>
						<TD style="HEIGHT: 19px" align="center">
							商品类别:</TD>
					</TR>
					<TR>
						<TD>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="leibieid"
                                GridLines="Vertical" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                                OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="100%">
                                <Columns>
                                    <asp:TemplateField HeaderText="类别名称">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("leibiename") %>' Width="60"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server"><%# Eval("leibiename")%></asp:Label>
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
							<asp:Button id="Button1" runat="server" Text="新增类别" onclick="Button1_Click"></asp:Button></TD>
					</TR>
					<TR>
						<TD>
							<asp:Panel id="Panel1" runat="server" Visible="False">
								<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="1" runat="server">
									<TR>
										<TD>类别名:
											<asp:TextBox id="TextBox1" runat="server" Width="112px"></asp:TextBox></TD>
									</TR>
									<TR>
										<TD>
											<asp:Button id="Button2" runat="server" Text="确定" onclick="Button2_Click"></asp:Button></TD>
									</TR>
								</TABLE>
							</asp:Panel></TD>
					</TR>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
