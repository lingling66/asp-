<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET网上书店</title>
    <link href="images/skin.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    <!--
    body {
	    margin-left: 0px;
	    margin-top: 0px;
	    margin-right: 0px;
	    margin-bottom: 0px;
	    background-color: #1D3647;
    }
    -->
    </style>

    <script language="JavaScript">
function correctPNG()
{
    var arVersion = navigator.appVersion.split("MSIE")
    var version = parseFloat(arVersion[1])
    if ((version >= 5.5) && (document.body.filters)) 
    {
       for(var j=0; j<document.images.length; j++)
       {
          var img = document.images[j]
          var imgName = img.src.toUpperCase()
          if (imgName.substring(imgName.length-3, imgName.length) == "PNG")
          {
             var imgID = (img.id) ? "id='" + img.id + "' " : ""
             var imgClass = (img.className) ? "class='" + img.className + "' " : ""
             var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "
             var imgStyle = "display:inline-block;" + img.style.cssText 
             if (img.align == "left") imgStyle = "float:left;" + imgStyle
             if (img.align == "right") imgStyle = "float:right;" + imgStyle
             if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle
             var strNewHTML = "<span " + imgID + imgClass + imgTitle
             + " style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"
             + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
             + "(src=\'" + img.src + "\', sizingMethod='scale');\"></span>" 
             img.outerHTML = strNewHTML
             j = j-1
          }
       }
    }    
}
window.attachEvent("onload", correctPNG);

    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="42" valign="top">
                        <table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
                            <tr>
                                <td width="1%" height="21">
                                    &nbsp;</td>
                                <td height="42">
                                    &nbsp;</td>
                                <td width="17%">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
                            <tr>
                                <td align="right" style="width: 23%">
                                    <table width="91%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg2">
                                        <tr>
                                            <td height="138" valign="top">
                                                <table width="89%" height="427" border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td height="149">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td height="80" align="right" valign="top">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="198" align="right" valign="top">
                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                <tr>
                                                                    <td width="35%">
                                                                        &nbsp;</td>
                                                                    <td height="25" colspan="2" class="left_txt">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td height="25" colspan="2" class="left_txt">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td height="25" colspan="2" class="left_txt">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td width="30%" height="40">
                                                                    </td>
                                                                    <td width="35%">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="1%">
                                    &nbsp;</td>
                                <td width="50%" valign="bottom">
                                    <table width="100%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="4%">
                                                &nbsp;</td>
                                            <td width="96%" height="38">
                                                <span class="login_txt_bt">ASP.NET网上书店</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td height="21">
                                                <table cellspacing="0" cellpadding="0" width="100%" border="0" id="table211" height="328">
                                                    <tr>
                                                        <td height="164" colspan="2" align="middle">
                                                            <table cellspacing="0" cellpadding="0" width="100%" border="0" height="143" id="table212">
                                                                <tr>
                                                                    <td height="38" class="top_hui_text" style="width: 90px">
                                                                        <span class="login_txt">管理员：&nbsp;&nbsp; </span>
                                                                    </td>
                                                                    <td height="38" colspan="2" class="top_hui_text" align="left">
                                                                        <input class="editbox4" size="20" name="LoginName" style="width: 216px; height: 20px"
                                                                            id="TxtUserName" runat="server" maxlength="20">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="35" class="top_hui_text" style="width: 90px">
                                                                        <span class="login_txt">密 码： &nbsp;&nbsp; </span>
                                                                    </td>
                                                                    <td height="35" colspan="2" class="top_hui_text" align="left">
                                                                        <input class="editbox4" type="password" maxlength="20" size="30" name="LoginPass"
                                                                            style="width: 214px; height: 18px" id="TxtPassword" runat="server">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="35" style="width: 90px">
                                                                        <span class="login_txt">验证码：</span></td>
                                                                    <td height="35" colspan="2" class="top_hui_text" align="left">
                                                                        <input class="wenbenkuang" maxlength="4" size="10" name="VerifyCode" style="width: 96px;
                                                                            height: 18px" id="Text2" runat="server">
                                                                        <img id="IMG1" style="width: 56px; height: 24px" height="24" alt="" src="../yanzhenma/yanzhenma.aspx"
                                                                            width="56">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="35" style="width: 90px">
                                                                        &nbsp;</td>
                                                                    <td width="20%" height="35">
                                                                        <asp:Button ID="Button1" runat="server" Text="登  陆" OnClick="Button1_Click" />
                                                                        <input name="cs" type="button" class="button" id="cs" value="重  置" onclick="showConfirmMsg1()">
                                                                    </td>
                                                                    <td width="67%" class="top_hui_text" align="left">
                                                                        &nbsp;<a href="../Default.aspx"><b>返回首页</b></a>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <br>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="433" height="164" align="right" valign="bottom">
                                                            <img src="images/login-wel.gif" width="242" height="138"></td>
                                                        <td width="57" align="right" valign="bottom">
                                                            &nbsp;</td>
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
                    <td height="20">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
                            <tr>
                                <td align="center">
                                    <span class="login-buttom-txt">Copyright &copy; 2009-2010 www.865171.cn</span></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
