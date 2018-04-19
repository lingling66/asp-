<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mchanpin.aspx.cs" Inherits="admin_mchanpin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <LINK href="../css/css.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" class="table2"
            width="100%">
            <tr>
                <td align="center">
                    <font face="宋体">修改商品</font></td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">商 品 名: &nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></font></td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">商品规格: &nbsp;
                        <asp:TextBox ID="Textbox2" runat="server"></asp:TextBox></font></td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">商品品牌: &nbsp;
                        <asp:TextBox ID="Textbox3" runat="server"></asp:TextBox></font></td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">添加数量: &nbsp;
                        <asp:TextBox ID="Textbox4" runat="server"></asp:TextBox></font></td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">商品价格: &nbsp;
                        <asp:TextBox ID="Textbox5" runat="server"></asp:TextBox></font></td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">出售价格: &nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" Width="152px"></asp:TextBox></font>
                </td>
            </tr>
            <tr>
                <td>
                    <font face="宋体">商品类别: &nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="112px">
                        </asp:DropDownList></font></td>
            </tr>
            <tr>
                <td style="height: 26px">
                    <font face="宋体">网站分类: &nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="112px">
                        </asp:DropDownList></font></td>
            </tr>
            <tr>
                <td style="height: 165px">
                    <font face="宋体">商品说明: &nbsp;
                        <asp:TextBox ID="Textbox7" runat="server" Width="736px" Height="170px" TextMode="MultiLine"></asp:TextBox></font></td>
            </tr>
            <tr>
                <td align="center" style="height: 28px">
                    <font face="宋体">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
                        &nbsp;&nbsp; </font></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
