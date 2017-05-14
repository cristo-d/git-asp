<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListContentClass.aspx.cs" Inherits="bbs.Manager.ListContentClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                版块编号:
                 <a     href="ViewContentClass.aspx?classid=<%#Eval("ClassID")%>"><%#Eval("ClassID") %></a>
                <br />
                版块名:
                <asp:Label ID="ClassnameLabel" runat="server" Text='<%# Eval("Classname") %>' />
                <br />
                帖子数:
                <%#Eval("Topiccount")%>
                <br />
                版块图片:
                <IMG src='<%# Bind("Classurl") %>' width="150" height="100" runat="server" ID="Img1">
                <br />
                状态:
                <asp:Label ID="EnableLabel" runat="server" Text='<%# Eval("Enable") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="GetAllContentclass" TypeName="LBBS.BLL.CCManager">
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
