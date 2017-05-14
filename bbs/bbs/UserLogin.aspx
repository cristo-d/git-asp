<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="bbs.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/newascx/CenterDivCss.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign in</title>
    <style type="text/css">
       body {
            text-align:center;
             padding:0px;margin:0px; 
            background-image:url(/images/tm-home-img.jpg);
        }
        #CenterTitle p {
           text-align:center; font-size:20px;color:blue;
           width: 106px; 
           margin-bottom: 1px;
           margin-top:60px; 
           color:darkred; 
           font-family:华文行楷
        }
         #CenterDiv {
             margin-left: auto;
             margin-right: auto;
             background-color:#d5b686;
              width:620px;height:275px;
         }
      </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="CenterDiv">
      
       <div id="CenterTitle"> <p>登录</p></div>
            
        <div style="margin-top:50px;" text-align:"center">
  <table>
        <tr>
        <asp:Label ID="lblUserName" runat="server" Text="用 户 名：" Font-Names="华文行楷" ForeColor="blue"></asp:Label>
         <asp:TextBox ID="textname" runat="server"></asp:TextBox></tr>
        <tr>
        <asp:Label ID="lblPwd" runat="server" Text="密&nbsp;&nbsp;&nbsp;&nbsp;码：" Font-Names="华文行楷" ForeColor="blue"></asp:Label>
        <asp:TextBox ID="textpassword" runat="server" TextMode="Password"></asp:TextBox>
        </tr>
        <tr>
        <asp:Button ID="btnOK" runat="server" onclick="btnOK_Click" Text="登录" Width="40px" />
        </tr>
 </table>
       </div>
              
    </div>
    </form>
</body>
</html>
