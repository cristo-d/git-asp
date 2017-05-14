<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ClassContent.aspx.cs" Inherits="bbs.ClassContent" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 95%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style=" height: 27px;  background-color: #e7f1f8; font-size:large;"  >
        
                <asp:ObjectDataSource ID="ObjectDataSource0" runat="server" SelectMethod="GetContentByClassID1" TypeName="LBBS.BLL.CCManager">
                <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="classid" QueryStringField="classid" Type="Int32" />
                </SelectParameters></asp:ObjectDataSource>

                <strong>当前位置： <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource0">
                                    <ItemTemplate>
                                                <%#Eval("ContentClass.Classname") %>
                                    </ItemTemplate>
                                   </asp:Repeater></strong> 
    </div>
    <br/><br/>
    <div><table style="width: 807px; height: 30px; font-size: small; margin: 0;border:0;">
           <tr>
                                    <td style="width: 100px; height: 26px" valign="middle">
                                        标题</td>
                                   <td style="width: 100px; height: 26px" valign="middle">
                                        作者</td>
                                   <td style="width: 100px; height: 26px" valign="middle">
                                        版块</td>
                                   <td style="width: 100px; height: 26px" valign="middle">
                                        回复</td>
                                    <td style="width: 100px; height: 26px" valign="middle">
                                        最后发表 
                                    </td>

           </tr>
            <asp:Repeater ID="Repeater3" runat="server" >
                <ItemTemplate>
                          <tr>
                             <td style="width: 100px; height: 26px" valign="middle">
                             <strong><a href='TopicContent.aspx?topicid=<%#Eval("TopicID")%> ' class="bb" target="_self"><%#Eval("Title") %></a></strong></td>
                             <td style="width: 100px; height: 26px" valign="middle">
                             <%#Eval("User.Username")%></td>
                            <td style="width: 100px; height: 26px" valign="middle">
                             <%#Eval("ContentClass.Classname") %></td>
                             <td style="width: 100px; height: 26px" valign="middle">
                             <%#Eval("Replycount") %></td>
                            <td style="width: 100px; height: 26px" valign="middle">
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
