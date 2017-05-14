<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reply.aspx.cs" Inherits="bbs.Manager.Reply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Replyid" DataSourceID="ObjectDataSource1" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Replyid" HeaderText="Replyid" 
                    SortExpression="Replyid" />
                <asp:BoundField DataField="Topicid" HeaderText="Topicid" 
                    SortExpression="Topicid" />
                <asp:BoundField DataField="Userid" HeaderText="Userid" 
                    SortExpression="Userid" />
                <asp:BoundField DataField="Recontentery" HeaderText="Recontentery" 
                    SortExpression="Recontentery" />
                <asp:BoundField DataField="Createon" HeaderText="Createon" 
                    SortExpression="Createon" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DataObjectTypeName="LBBS.Model.ContentReply" DeleteMethod="DeleteContentReply" 
            SelectMethod="GetAllReply" TypeName="LBBS.BLL.ReManager" 
            UpdateMethod="ModifyContentReply"></asp:ObjectDataSource>
        <br />
    </div>
    </form>
</body>
</html>
