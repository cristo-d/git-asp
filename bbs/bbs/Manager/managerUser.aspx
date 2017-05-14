<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managerUser.aspx.cs" Inherits="bbs.Manager.managerUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" 
            GridLines="Vertical" DataKeyNames="Userid">
            <FooterStyle BackColor="#CCCC99" />
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:BoundField DataField="Userid" HeaderText="Userid" 
                    SortExpression="Userid" />
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Headurl" HeaderText="Headurl" 
                    SortExpression="Headurl" />
                <asp:BoundField DataField="Topiccount" HeaderText="Topiccount" 
                    SortExpression="Topiccount" />
                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                <asp:BoundField DataField="Replycount" HeaderText="Replycount" 
                    SortExpression="Replycount" />
                <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" 
                    SortExpression="CreatedOn" />
                <asp:CheckBoxField DataField="Enabled" HeaderText="Enabled" 
                    SortExpression="Enabled" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DataObjectTypeName="LBBS.Model.User" DeleteMethod="DeleteUser" 
            SelectMethod="GetAllUser" TypeName="LBBS.BLL.UserManager" 
            UpdateMethod="ModifyUser"></asp:ObjectDataSource>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
