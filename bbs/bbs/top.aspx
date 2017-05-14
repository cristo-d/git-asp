<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="top.aspx.cs" Inherits="bbs.top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 14px;
	color: blue;
}
.STYLE5 {font-size: 12}
.STYLE7 {font-size: 12px; color:black; }
.STYLE7 a{font-size: 12px; color: black; }
a img {
	border:none;
}
        .auto-style1 {
            height: 75px;
        }
-->
</style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
    <div>
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
      <asp:Image ID="Image1" runat="server" ImageUrl="~/images/tm-blog-img.jpg" Width="1410px" Height="170px" />
  </tr>
  <tr>
    <td height="40" background="images/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21"></td>
            <td width="35" class="STYLE7"><a href="Hmpage.aspx" target="rightFrame">首页</a></td>
            <td width="21" class="STYLE7"></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:history.go(-1);">后退</a></div></td>
            <td width="21" class="STYLE7"></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:history.go(1);">前进</a></div></td>
            <td width="21" class="STYLE7"></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:window.parent.location.reload();">刷新</a></div></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="248" background="images/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="16%"><span class="STYLE5"></span></td>
            <td width="75%"><div align="center"><span class="STYLE7">By daiyongjun(<a href="https://github.com/cristo-d" target="_blank">https://github.com/cristo-d</a>)</span></div></td>
            <td width="9%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="30" background="images/main_31.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" height="30"></td>
        <td width="147" background="images/main_29.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
           
            <td width="43%" height="20" valign="bottom" class="STYLE1">管理菜单</td>
            <td width="33%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="139"></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20" valign="bottom"><span class="STYLE1">当前登录用户：admin &nbsp;用户角色：管理员</span></td>
            <td valign="bottom" class="STYLE1"><div align="right"></div></td>
          </tr>
        </table></td>
        <td width="17"></td>
      </tr>
    </table></td>
  </tr>
</table>
    </div>

    </form>
</body>
</html>
