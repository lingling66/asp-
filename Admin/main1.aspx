<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main1.aspx.cs" Inherits="Admin_main1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<TITLE>ASP.NET网上书店</TITLE>
	</HEAD>
	<%--<frameset id="top" border="0" frameSpacing="0" rows="50,80%" frameBorder="0">
		<frame name="Top" src="top.aspx" noResize scrolling="no">
		<frameset id="frame" cols="100,85%">
			<frame name="left" src="menu.aspx" scrolling="no">
			<frame name="main" src="Welcome.aspx">
		</frameset>
	</frameset>--%>
	<frameset rows="64,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="top1.aspx" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  <frameset cols="200,*"  rows="560,*" id="frame">
	<frame src="left1.aspx" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	<frame src="Welcome.aspx" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
  </frameset>
<noframes>
  <body></body>
    </noframes>
	
</HTML>

