<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="LvMessage.aspx.cs" Inherits="bbs.LvMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <table>
       <tr>
   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1" >
       <ItemTemplate>
     
           <td>
               <%#Eval("MessageID") %>.
           </td>
           <td>
               <%#Eval("MessageContent") %>
                                   
           </td>
     
           <br /> <br /><br /><br /><br /><br /><br />
       </ItemTemplate>
</asp:Repeater>

    </tr>
        </table>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server"  SelectMethod="GetMessageById"  TypeName="LBBS.BLL.MessageManager">
</asp:ObjectDataSource>
  
       <tr>
     <asp:TextBox ID="FreeTextBox1" runat="server" Height="113px" TextMode="MultiLine" 
                   Width="700px" CssClass="ckeditor"></asp:TextBox>
    
                    <asp:Button ID="btnOK" runat="server"  Text="留言" OnClick="btnOK_Click" />
      </tr>
   
</asp:Content>
