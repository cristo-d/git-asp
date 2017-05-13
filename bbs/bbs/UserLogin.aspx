<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="bbs.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="margin-bottom: 93px">
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="textname" runat="server"></asp:TextBox>
                <asp:TextBox ID="textpassword" runat="server" 
    TextMode="Password"></asp:TextBox>
<asp:Button ID="btnOK" runat="server" onclick="btnOK_Click" Text="登录" Width="40px" />
&nbsp;</div>
    </form>
</body>
</html>
