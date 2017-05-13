<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ClassContent.aspx.cs" Inherits="bbs.ClassContent" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<script runat="server">

 
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 248px;
        }
        .auto-style3 {
            width: 175px;
        }
        .auto-style4 {
            width: 118px;
        }
        .auto-style5 {
            width: 99px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" height: 27px; width: 805px; background-color: #e7f1f8; font-size:large;"  >
        
<asp:ObjectDataSource ID="ObjectDataSource0" runat="server" SelectMethod="GetContentByClassID1" TypeName="LBBS.BLL.CCManager">
<SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="classid" 
                    QueryStringField="classid" Type="Int32" />
</SelectParameters>
</asp:ObjectDataSource>

<strong>当前位置： <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource0">
<ItemTemplate>
                            <%#Eval("ContentClass.Classname") %>
</ItemTemplate>
        </asp:Repeater></strong> 
</div>
    <br/><br/>
       <div><table style="width: 807px; height: 30px; font-size: small; margin: 0;border:0;">
           <tr>
                                    <td class="auto-style2">
                                        标题</td>
                                    <td class="auto-style5">
                                        作者</td>
                                    <td class="auto-style4">
                                        版块</td>
                                    <td class="auto-style3">
                                        回复</td>
                                    <td class="style9" >
                                        最后发表 
                                    </td>

           </tr>
<asp:Repeater ID="Repeater3" runat="server" >
<ItemTemplate>
            <tr>
                             <td class="style8">
                             <strong><a href='TopicContent.aspx?topicid=<%#Eval("TopicID")%> ' class="bb" target="_self"><%#Eval("Title") %></a></strong></td>
                             <td class="style3">
                             <%#Eval("User.Username")%></td>
                             <td class="style6">
                             <%#Eval("ContentClass.Classname") %></td>
                             <td align="left" class="style4">
                             <%#Eval("Replycount") %></td>
                             <td align="center" class="style9">
                             <%#Eval("Repliedon")%></td>
             </tr>
</ItemTemplate>
</asp:Repeater>
    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="785" 
        UrlPaging="true" ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" 
        TextBeforePageIndexBox="转到" HorizontalAlign="right" PageSize="10" 
        OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true" 
        FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" 
        SubmitButtonText="Go" TextAfterPageIndexBox="页" style="font-size: medium" 
                        ShowBoxThreshold="100">
        </webdiyer:AspNetPager>
</table></div>
</asp:Content>
