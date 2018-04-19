<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userPassWrod.aspx.cs" Inherits="Admin_userPassWrod" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>网上书店系统</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="Table3" cellspacing="1" cellpadding="1" width="500" border="1">
                <tr>
                    <td>
                        新密码:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="不能为空"
                            ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        确认密码:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="不能为空"
                            ControlToValidate="TextBox5" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="密码不一致"
                            ControlToValidate="TextBox5" Display="Dynamic" ControlToCompare="TextBox4"></asp:CompareValidator></td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button4" runat="server" Text="确定" OnClick="Button1_Click"></asp:Button>
                        <asp:Label ID="LabelWarningMessage" runat="server" Text="" Style="color:Red;"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
