<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dingdan1.aspx.cs" Inherits="Admin_dingdan1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>liuyanban</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="C#">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href="../css/css2.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <table id="Table1" cellspacing="0" cellpadding="1" width="100%" border="0">
            <tr>
                <td style="height: 17px">
                    订单管理</td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CellPadding="4" ForeColor="#333333" GridLines="None"
                            OnPageIndexChanged="DataGrid1_PageIndexChanged"
                            PageSize="15" Width="100%">
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <EditItemStyle BackColor="#2461BF" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Mode="NumericPages" />
                            <AlternatingItemStyle BackColor="White" />
                            <ItemStyle BackColor="#EFF3FB" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="dingdanid" HeaderText="订单编号"></asp:BoundColumn>
                                <asp:BoundColumn DataField="username" HeaderText="订单用户"></asp:BoundColumn>
                                <asp:BoundColumn DataField="shangpingname" HeaderText="商品名称"></asp:BoundColumn>
                                <asp:BoundColumn DataField="price" HeaderText="总价格"></asp:BoundColumn>
                                <asp:BoundColumn DataField="usertelphone" HeaderText="联系电话"></asp:BoundColumn>
                                <asp:BoundColumn DataField="useraddress" HeaderText="邮寄地址"></asp:BoundColumn>
                                <asp:BoundColumn DataField="dingdanbeizhu" HeaderText="备注"></asp:BoundColumn>

                            </Columns>
                        </asp:DataGrid></font></td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
