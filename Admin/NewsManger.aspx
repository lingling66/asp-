<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsManger.aspx.cs" Inherits="Admin_NewsManger" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>shangping</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<td bgColor="#ffff99">
                            新闻公告管理</td>
					</TR>
					<TR>
						<TD>
                            <asp:GridView ID="GvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="GvData_PageIndexChanging"
                                OnRowDataBound="GvData_RowDataBound" PageSize="12" Width="100%">
                                <Columns>
                            
                                    <asp:TemplateField HeaderText="新闻标题">
                                        <ItemStyle HorizontalAlign="Left" Width="200px" />
                                        <ItemTemplate>
                                            <asp:Label ID="Titles" runat="server" Text='<%# Bind("Titles") %>' Width="481px"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                               
                                        <asp:TemplateField HeaderText="发布时间">
                                        <ItemStyle HorizontalAlign="Left" Width="200px" />
                                        <ItemTemplate>
                                            <asp:Label ID="AddTime" runat="server" Text='<%# Bind("AddTime","{0:d}") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="修改">
                                        <ItemStyle HorizontalAlign="Center" Width="30px" />
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "MNews.aspx?id="+Eval("id") %>'
                                                Text="修改"></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="选择">
                                        <HeaderTemplate>
                                            选择</HeaderTemplate>
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" Width="40px" />
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <HeaderStyle BackColor="#F6F6F6" />
                                <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                                    NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                                <RowStyle HorizontalAlign="Left" />
                                <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                                <PagerTemplate>
                                    <table border="0" width="100%">
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                                    Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                                <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                                    CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                                <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                                    Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                                <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                                    Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                                共
                                                <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                                第
                                                <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                            </td>
                                            <td align="right" width="20%">
                                            </td>
                                        </tr>
                                    </table>
                                </PagerTemplate>
                            </asp:GridView>
                            &nbsp;&nbsp;
                        </TD>
					</TR>
					<TR>
						<TD align="center">
                            <asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" OnClientClick="javascript:return confirm('确定删除？');"
                                Text="删除" />
                            <asp:Button ID="btnSelectAll" runat="server" OnClick="btnSelectAll_Click" Text="全选" /></TD>
					</TR>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
