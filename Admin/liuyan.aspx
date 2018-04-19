<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyan.aspx.cs" Inherits="admin_liuyan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>liuyanban</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../css/css2.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="100%" border="0">
				<TR>
					<TD style="height: 17px">
                        留言板管理</TD>
				</TR>
				<TR>
					<TD><FONT face="宋体">
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CellPadding="4" ForeColor="#333333" GridLines="None" OnDeleteCommand="DataGrid1_DeleteCommand"
                            OnItemCreated="DataGrid1_ItemCreated" OnPageIndexChanged="DataGrid1_PageIndexChanged"
                            PageSize="15" Width="100%">
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <EditItemStyle BackColor="#2461BF" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Mode="NumericPages" />
                            <AlternatingItemStyle BackColor="White" />
                            <ItemStyle BackColor="#EFF3FB" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="lybid" HeaderText="编号"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="留言内容">
                                    <ItemTemplate>
                                      
                                            <%#Eval("lybcontent")%>
                                   
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="username" HeaderText="留言会员"></asp:BoundColumn>
                                <asp:BoundColumn DataField="useremail" HeaderText="邮箱"></asp:BoundColumn>
                                <asp:TemplateColumn>
                                    <ItemTemplate>
                                        <asp:Button ID="CmdDel" runat="server" CausesValidation="false" CommandName="Delete"
                                            Text="删除" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid></FONT></TD>
				</TR>
				<TR>
					<TD>
						</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
