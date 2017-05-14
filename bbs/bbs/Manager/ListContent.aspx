<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListContent.aspx.cs" Inherits="bbs.Manager.ListContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="Topicid" DataSourceID="ObjectDataSource1" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Topicid" HeaderText="Topicid" 
                    SortExpression="Topicid" />
                <asp:BoundField DataField="Classid" HeaderText="Classid" 
                    SortExpression="Classid" />
                <asp:BoundField DataField="Userid" HeaderText="Userid" 
                    SortExpression="Userid" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Contentery" HeaderText="Contentery" 
                    SortExpression="Contentery" />
                <asp:BoundField DataField="Replycount" HeaderText="Replycount" 
                    SortExpression="Replycount" />
                <asp:BoundField DataField="Isclose" HeaderText="Isclose" 
                    SortExpression="Isclose" />
                <asp:BoundField DataField="Createdon" HeaderText="Createdon" 
                    SortExpression="Createdon" />
                <asp:BoundField DataField="Repliedon" HeaderText="Repliedon" 
                    SortExpression="Repliedon" />
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
            DataObjectTypeName="LBBS.Model.Content" 
            SelectMethod="GetAllContent" TypeName="LBBS.BLL.ContentManager" 
            UpdateMethod="ModifyContent" DeleteMethod="DeleteContent">
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="contententry" Type="String" />
                <asp:Parameter Name="classid" Type="Int32" />
                <asp:Parameter Name="topicid" Type="Int32" />
                <asp:Parameter Name="replycount" Type="Int32" />
                <asp:Parameter Name="isclose" Type="String" />
                <asp:Parameter Name="createon" Type="DateTime" />
                <asp:Parameter Name="replyon" Type="DateTime" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        
        <br />
    </div>
    </form>
</body>
</html>
