<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageIndex.aspx.cs" Inherits="bbs.ManageIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Manage Studio</title>
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
    color:beige;
}
        .style1
        {
            width: 10px;
        }
        .style2
        {
            width: 255px;
        }
        .auto-style1 {
            height: 47%;
            margin-left: 0px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            height: 325px;
        }
        .auto-style3 {
            height: 270px;
        }
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
   <div style="height: 552px">
        <iframe  width="100%" border="0" frameborder="0" src="top.aspx" name="topFrame" id="Iframe2" title="topFrame" class="auto-style1"></iframe>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="height:100%">
  <tr>
  <td width="8" bgcolor="#353c44">&nbsp;</td>
    <td valign="top" class="style2"><iframe width="100%" border="0" frameborder="0" src="left.aspx" name="leftFrame" id="leftFrame" title="leftFrame" class="auto-style2" ></iframe></td>
    <td bgcolor="#add2da" class="style1">&nbsp;</td>
    <td valign="top"><iframe width="100%" border="0" frameborder="0" src="right.aspx" name="rightFrame" id="rightFrame" title="rightFrame" class="auto-style3" ></iframe></td>
    <td width="20" bgcolor="#353c44">&nbsp;</td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
