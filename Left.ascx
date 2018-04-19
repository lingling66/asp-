<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Left.ascx.cs" Inherits="Left" %>
&nbsp;<table id="Table4" runat="server" border="0" cellpadding="1" cellspacing="0"
    width="255">
    <tr>
        <td>
            <font face="宋体">
                <table id="Table6" runat="server" align="left" border="0" cellpadding="0" cellspacing="0"
                    width="255">
                    <tr>
                        <td align="center">
                            <table id="Table22" border="0" cellpadding="0" cellspacing="0" width="249">
                                <tr>
                                    <td background="background/y1.jpg" width="4%">
                                        <img height="27" src="background/y1_left.jpg" width="4" /></td>
                                    <td background="background/y2.jpg" width="93%">
                                        <table id="Table33" border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="10%">
                                                    <img height="27" src="background/tb1.jpg" width="24" /></td>
                                                <td class="white12px" width="50%">
                                                    <strong><font color="#ffffff">会员登陆</font></strong></td>
                                                <td width="40%">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td background="background/y1.jpg" width="3%">
                                        <div align="right">
                                            <img height="27" src="background/y1_right.jpg" width="4" /></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <font face="宋体">
                                <asp:Panel ID="Panel2" runat="server">
                                    <table id="Table7" runat="server" border="0" cellpadding="0" cellspacing="0" width="249">
                                        <tr>
                                            <td height="12" valign="bottom">
                                                <img height="5" src="background/l_di.jpg" width="249" /></td>
                                        </tr>
                                        <tr>
                                            <td background="background/l_z.jpg">
                                                <table align="center" border="0" cellpadding="2" cellspacing="0">
                                                    <tr>
                                                        <td>
                                                            &nbsp; 账号：<!--用户名：--></td>
                                                        <td align="left" colspan="2">
                                                            <asp:TextBox ID="TextBox1" runat="server" EnableViewState="False" Height="22px" Width="100px"></asp:TextBox></td>
                                                        <td>
                                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="background/btlogon.jpg"
                                                                Width="42px" OnClick="ImageButton1_Click" /></td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            密码 ：<!--密&nbsp;&nbsp;码：--></td>
                                                        <td align="left" colspan="2" style="color: #0000ff; text-decoration: underline">
                                                            <asp:TextBox ID="Textbox2" runat="server" Height="22px" TextMode="Password" Width="100px"></asp:TextBox></td>
                                                        <td style="color: #0000ff; text-decoration: underline">
                                                            <a href="userzhuche.aspx">
                                                                <img border="0" height="21" src="background/btreg.jpg" width="42" id="IMG1" /></a></td>
                                                        <td style="color: #0000ff; text-decoration: underline">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            验证码：<!--验证码：--></td>
                                                        <td style="font-weight: bold; color: #ffffff">
                                                            <asp:TextBox ID="Textbox3" runat="server" EnableViewState="False" Height="22px" Width="50"></asp:TextBox></td>
                                                        <td style="font-weight: bold; color: #ffffff">
                                                            <img id="_ctl1_UserLogin1_Image1" align="bottom" alt="" border="0" src="yanzhenma/yanzhenma.aspx"
                                                                width="50" /></td>
                                                        <td style="font-weight: bold; color: #ffffff">
                                                            <asp:ImageButton ID="Imagebutton2" runat="server" Height="22px" ImageUrl="background/suaxing.gif"
                                                                Width="42px" /></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="font-weight: bold; color: #ffffff">
                                            <td background="background/l_z.jpg" height="10">
                                            </td>
                                        </tr>
                                        <tr style="font-weight: bold; color: #ffffff">
                                            <td height="5" valign="bottom">
                                                <img height="5" src="background/l_ding.jpg" width="249" /></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </font>
                        </td>
                    </tr>
                </table>
            </font>
        </td>
    </tr>
    <tr style="font-weight: bold; color: #ffffff">
        <td height="3">
        </td>
    </tr>
    <tr style="font-weight: bold; color: #ffffff">
        <td>
            <font face="宋体">
                <table id="Tableuser_denlu" runat="server" align="left" border="0" cellpadding="0"
                    cellspacing="0" width="255">
                    <tr>
                        <td align="center">
                            <font face="宋体">
                                <asp:Panel ID="Panel3" runat="server" Visible="False">
                                    <table id="Table17" runat="server" border="0" cellpadding="0" cellspacing="0" width="249">
                                        <tr>
                                            <td height="12" valign="bottom">
                                                <img height="5" src="background/l_di.jpg" width="249" /></td>
                                        </tr>
                                        <tr>
                                            <td background="background/l_z.jpg">
                                                <table align="center" border="0" cellpadding="2" cellspacing="0">
                                                    <tr>
                                                        <td>
                                                            已登陆:<!--用户名：--></td>
                                                        <td align="left" colspan="2">
                                                            <strong>欢迎购物</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            用户名:<!--用户名：--></td>
                                                        <td align="left" colspan="2">
                                                            <asp:Label ID="username" runat="server" ForeColor="Black"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="3" style="height: 22px">
                                                             <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">个人后台</asp:LinkButton>
                                                            |
                                                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">退出</asp:LinkButton>
                                                            <%--<asp:ImageButton ID="Imagebutton3" runat="server" Height="22px" ImageUrl="background/btexit.gif"
                                                                Width="42px" OnClick="Imagebutton3_Click" />--%>
                                                                </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td background="background/l_z.jpg" height="10">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="5" valign="bottom">
                                                <img height="5" src="background/l_ding.jpg" width="249" /></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </font>
                        </td>
                    </tr>
                </table>
            </font>
        </td>
    </tr>
    <tr>
        <td align="center">
            <table id="Table212" border="0" cellpadding="0" cellspacing="0" width="249">
                <tr>
                    <td background="background/y1.jpg" width="4%">
                        <img height="27" src="background/y1_left.jpg" width="4" /></td>
                    <td background="background/y2.jpg" width="93%">
                        <table id="Table313" border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td width="10%">
                                    <img height="27" src="background/jian.jpg" width="17" /></td>
                                <td class="white12px" width="50%">
                                    <strong><font color="#ffffff">购物车</font></strong></td>
                                <td width="40%">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td background="background/y1.jpg" width="3%">
                        <div align="right">
                            <img height="27" src="background/y1_right.jpg" width="4" /></div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="center">
            <table border="0" cellpadding="0" cellspacing="0" width="249">
                <tr>
                    <td>
                        <img height="5" src="background/l_di.jpg" width="249" /></td>
                </tr>
                <tr>
                    <td background="background/l_z.jpg">
                        <table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0"
                            width="235">
                            <tr>
                                <td width="79">
                                    <font face="Verdana">
                                        <img height="72" src="background/cartbag.gif" width="79" /></font></td>
                                <td width="123">
                                    <table border="0" cellpadding="2" cellspacing="0" width="120">
                                        <tr>
                                            <td nowrap="nowrap">
                                                <font face="Verdana"></font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td nowrap="nowrap">
                                                <font face="Verdana"></font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <table border="0" cellpadding="2" cellspacing="0">
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <a href="shopping.aspx">进入购物车</a></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td background="background/l_z.jpg" height="8">
                    </td>
                </tr>
                <tr>
                    <td height="5" valign="bottom">
                        <img height="5" src="background/l_ding.jpg" width="249" /></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="6">
        </td>
    </tr>
    <tr>
        <td align="center">
            <table id="Table222" border="0" cellpadding="0" cellspacing="0" width="249">
                <tr>
                    <td background="background/y1.jpg" width="4%">
                        <img height="27" src="background/y1_left.jpg" width="4" /></td>
                    <td background="background/y2.jpg" width="93%">
                        <table id="Table333" border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td width="10%">
                                    <img height="27" src="background/jian.jpg" width="17" /></td>
                                <td class="white12px" width="50%">
                                    <strong><font color="#ffffff">图书分类</font></strong></td>
                                <td width="40%">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td background="background/y1.jpg" width="3%">
                        <div align="right">
                            <img height="27" src="background/y1_right.jpg" width="4" /></div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="center">
            <table border="0" cellpadding="0" cellspacing="0" width="249">
                <tr>
                    <td>
                        <img height="5" src="background/l_di.jpg" width="249" /></td>
                </tr>
                <tr>
                    <td background="background/l_z.jpg">
                        <table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0"
                            width="235">
                            <tr>
                                <td width="15%">
                                </td>
                                <td width="70%">
                                    <asp:DataList ID="DataList4" runat="server" RepeatColumns="2" Width="100%">
                                        <ItemTemplate>
                                            <font face="宋体">
                                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "shangpingleibie.aspx?leibieid="+DataBinder.Eval(Container, "DataItem.leibieid") %>'
                                                    Text='<%# DataBinder.Eval(Container, "DataItem.leibiename") %>'>
                                                </asp:HyperLink></font>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                                <td width="15%">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="5" valign="bottom">
                        <img height="5" src="background/l_ding.jpg" width="249" /></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="height: 6px">
        </td>
    </tr>
</table>
