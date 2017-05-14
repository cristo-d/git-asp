<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewContentClass.aspx.cs" Inherits="bbs.Manager.ViewContentClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <a href='ListContentClass.aspx' target="_self">返回</a><br />
        <br />
        
        <asp:FormView ID="FormView1" runat="server" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" 
            DataKeyNames="Classid">
            <EditItemTemplate>
                <br />
                Classname:
                <asp:TextBox ID="ClassnameTextBox" runat="server" 
                    Text='<%# Bind("Classname") %>' />
                <br />
                <br />
                Classurl:
                <asp:TextBox ID="ClassurlTextBox" runat="server" 
                    Text='<%# Bind("Classurl") %>' />
                <br />
                Enable:
                <asp:CheckBox ID="EnableCheckBox" runat="server" 
                    Checked='<%# Bind("Enable") %>' />
                <br />
                
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                <br />
                版块名:
                <asp:TextBox ID="ClassnameTextBox" runat="server" 
                    Text='<%# Bind("Classname") %>' />
                <br />
                <br />
                版块图片:
               
                <asp:TextBox ID="ClassurlTextBox" runat="server"  Text='<%# Bind("Classurl") %>' />
                <br />
                <br />
                <br />
                状态:
                <asp:CheckBox ID="EnableCheckBox" runat="server" 
                    Checked='<%# Bind("Enable") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" ForeColor="#660066" Text="插入" 
                    onclick="InsertButton_Click1" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                    CommandName="Cancel" ForeColor="#660066" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                版块编号:
                <asp:Label ID="ClassidLabel" runat="server" Text='<%# Bind("Classid") %>' />
                <br />
                版块名:
                <asp:Label ID="ClassnameLabel" runat="server" Text='<%# Bind("Classname") %>' />
                <br />
                版块图片:
                <IMG src='<%# Bind("Classurl") %>' width="150" height="100" runat="server" ID="Img1">
                <br />
                状态:
                <asp:CheckBox ID="EnableCheckBox" runat="server" 
                    Checked='<%# Bind("Enable") %>' Enabled="false" />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" BorderColor="#99CCFF" 
                    CausesValidation="False" CommandName="New" ForeColor="#660066" Text="增加" />
                &nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" 
                    ForeColor="#660066">修改</asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" 
                    ForeColor="#660066">删除</asp:LinkButton>
            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DataObjectTypeName="LBBS.Model.ContentClass" InsertMethod="AddContentclass" 
            SelectMethod="GetContentclassById" TypeName="LBBS.BLL.CCManager" 
            UpdateMethod="ModifyContentclass" DeleteMethod="DeleteContentClass">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="classid" 
                    QueryStringField="classid" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
