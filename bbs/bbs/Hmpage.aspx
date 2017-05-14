<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Hmpage.aspx.cs" Inherits="bbs.Hmpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 71px;
        }
        .auto-style10 {
            width: 897px;
            height: 159px;
        }
        .auto-style11 {
            width: 899px;
        }
        .auto-style12 {
            width: 898px;
            height: 1px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div>
    <table style="font-size: small; margin: 0;" class="auto-style10">
                                <tr style="background-image: url('images/title.gif');" class="auto-style9">
                                 <asp:Label ID="Label1" runat="server" Text="最新帖子"></asp:Label>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        标题</td>
                                    <td class="style4">
                                        作者</td>
                                    <td class="style4">
                                        版块</td>
                                    <td class="style4">
                                        回复/查看</td>
                                    <td class="style6">
                                        最后发表 
                                    </td>
                                </tr>
<asp:Repeater ID="Repeater2" runat="server" DataSourceID="ObjectDataSource1">
<ItemTemplate>

                                <tr>
                                    <td>
                               <strong><a href='TopicContent.aspx?topicid=<%#Eval("TopicID")%> ' class="bb"
                                                    target="_blank"><%#Eval("Title") %></a></strong></td>
                                    <td>
                                       <%#Eval("User.Username")%></td>
                                    <td>
                                       <%#Eval("ContentClass.Classname") %></td>
                                    <td>
                                       <%#Eval("Replycount") %></td>
                                    <td>
                                       <%#Eval("Repliedon")%></td>
                                </tr>
</ItemTemplate>
</asp:Repeater>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllContent1" TypeName="LBBS.BLL.ContentManager">
</asp:ObjectDataSource>
</table>    
        </div>
      <div class="auto-style11">
    <table style="font-size: small; margin:0; " class="auto-style12" >
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource2">
            <ItemTemplate>
                            <table border="0"  style="width: 800px">
                                <tr>
                                    <td style="vertical-align:top; width: 800px;height: 10px; background-color:#ffffff">
                                   
                                  <a href="ClassContent.aspx?classid=<%#Eval("Classid")%>"> <%#Eval("Classname") %></a> </td>
                               </tr>
                                <tr>
                                    <asp:Image ID="Image1" runat="server" />
                                </tr>
                               
                            </table>
             </ItemTemplate>
             </asp:Repeater>
     
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server"  SelectMethod="GetAllContentclass"  TypeName="LBBS.BLL.CCManager">
</asp:ObjectDataSource>
        </table>
 </div>                                      
</asp:Content>
