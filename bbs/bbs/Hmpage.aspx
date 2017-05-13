<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Hmpage.aspx.cs" Inherits="bbs.Hmpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div> <table style="width: 686px; height: 1px; font-size: small; margin:0; " >
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource2">
            <ItemTemplate>
                            <table border="0"  style="width: 800px">
                                <tr>
                                    <td style="text-align: left; width: 610px; height: 18px; background-image: url('images/版块分类名称下部分.jpg');">
                                    &nbsp;&nbsp;板块编号：<%#Eval("Classid")%></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align:top; text-align: left; width: 610px; height: 35px; background-image: url('images/版块分类名称上部分.jpg');">
                                    <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <a href="ClassContent.aspx?classid=<%#Eval("Classid")%>"> <%#Eval("Classname") %></a>
                                   
                                  </a> </td>
                               </tr>
                                
                            </table>
             </ItemTemplate>
             </asp:Repeater>
     
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server"  SelectMethod="GetAllContentclass"  TypeName="LBBS.BLL.CCManager">
</asp:ObjectDataSource>
        </table>
       </d><td></td>

    <table style="width: 807px; height: 159px; font-size: small; margin: 0;">
                                <tr>
                                    <td class="style4">
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
</asp:Content>
