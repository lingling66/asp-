<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="admin_top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体">
				<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TR>
						<TD align="center" bgColor="#ffffcc">
							&nbsp;&nbsp;<font color="#3366cc">当前管理员:</font> &nbsp;&nbsp;
							
							&nbsp;&nbsp;<A href="../default.aspx" target="_top">返回主页</A>&nbsp;&nbsp;&nbsp;&nbsp;</TD>
					</TR>
				</TABLE>
			</FONT>
		</form>
	</body>
</HTML>
-->
<html>
<head>
    <title>网上书店系统</title>

    <script language="JavaScript">
function logout(){
	if (confirm("您确定要退出控制面板吗？"))
	top.location = "login.aspx";
	return false;
}
    </script>

    <script language="JavaScript1.2">
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
    </script>

    <meta http-equiv="Content-Type" content="text/html;charset=gb2312">
    <meta http-equiv="refresh" content="60">

    <script language="JavaScript1.2">
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
    </script>

    <base target="main">
    <link href="images/skin.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0">
    <table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
        <tr>
            <td width="400" height="64">
                <table width="70%" height="51" border="0" align="center">
                    <tr>
                        <td align="left">
                            <div style="font-family: 宋体; color: #FFFFFF; filter: Glow(Color=#000000,Strength=2);
                                width: 100%; font-weight: bold; font-size: 19pt; margin-top: 5pt">
                                <div align="center" class="STYLE5 STYLE7">
                                    网上书店系统</div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="200" height="64">
            </td>
            <td width="400" valign="top">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="74%" height="38" class="admin_txt">
                            管理员：<b><asp:Label ID="Label1" runat="server" Width="70px"></asp:Label></b> 您好,感谢登陆使用！&nbsp;&nbsp;&nbsp;&nbsp;<a
                                href="loginout.aspx" target="_parent" style="color: White;">首页</a></td>
                        <td width="22%">
                            <a href="#" target="_self" onclick="logout();">
                                <img src="images/out.gif" alt="安全退出" width="46" height="20" border="0"></a></td>
                        <td width="4%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td height="19" colspan="3">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
