<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="TopicContent.aspx.cs" Inherits="bbs.TopicContent" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<%@ Register src="~/newascx/top.ascx" tagname="top" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table align="center" style="width: 810px; margin-right: 0px;" class="TableCss" border="0" 
        cellpadding="0" cellspacing="0" width="795">
        <tr>
            <td style="vertical-align: top; text-align: left;" class="style3"  valign="top" 
                align="center" width="810">
              <uc1:top ID="top1" runat="server" />
                    <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                            <ItemTemplate>
            <table border="0" cellpadding="0" cellspacing="0" class="TableCss" align="center">
                <tr>
                    <td colspan="5" rowspan="1" style="");
                        width: 794px; height: 1px; text-align: center">
                    </td>
                </tr>
                                <tr>
                                    <td style="width: 160px; height: 148px; text-align: center; background-image: url(Images/帖子及回帖信息页/1.jpg);" rowspan="2">
                                        <br /><img src='<%# Eval("User.Headurl") %>' width="80" height="70" runat="server" id="Img1"/>
                                        <br /><br />
                                      用户名: <%#Eval("User.Username")%> <br />
                                       性别:<%#Eval("User.sex")%><br />邮箱:<%#Eval("User.Email")%></td><br /></td>
                                    <td style="width: 374px; height: 23px; text-align:left; background-image: url(Images/帖子及回帖信息页/2.jpg);">
                                    &nbsp;<asp:Label ID="Label4" runat="server" Text=""></asp:Label>第<%#Eval("Replyid")%>楼</td>
                                    <td style="width: 182px; height: 23px; background-image: url(Images/帖子及回帖信息页/3.jpg);">
                                    发表时间：<%# Eval("Createon")%><asp:Label ID="Label1" runat="server"></asp:Label></td>
                                    <td style="width: 78px; height: 23px; background-image: url(Images/帖子及回帖信息页/4.jpg);" colspan="2">
                                        回复</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="vertical-align: top; text-align:left; height: 125px; background-image: url(Images/帖子及回帖信息页/5.jpg); width: 634px;">
                                        &nbsp;&nbsp;<%# Eval("Recontentery")%><asp:Label ID="Label8" runat="server"></asp:Label> </td>
                                </tr>
                            </table>
        </ItemTemplate>
                    </asp:Repeater>
            </td>
        </tr>
            <tr>
                <td style="vertical-align: top; text-align: left; " class="style4" 
                    align="right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" Width="100%" 
        UrlPaging="true" ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" 
        TextBeforePageIndexBox="转到" HorizontalAlign="right" PageSize="10" 
        OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true" 
        FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" 
        SubmitButtonText="Go" TextAfterPageIndexBox="页" style="font-size: medium" 
                        ShowBoxThreshold="100">
        </webdiyer:AspNetPager>
        

                    <br />
 
               <asp:TextBox ID="FreeTextBox1" runat="server" Height="113px" TextMode="MultiLine" 
                   Width="700px" CssClass="ckeditor"></asp:TextBox>
 
                    <br />
                    <asp:Button ID="btnOK" runat="server" onclick="btnOK_Click" Text="回复" />
                    &nbsp;<asp:Button ID="cancle" runat="server" onclick="cancle_Click" 
                        style="height: 21px" Text="取消" />
                </td>
            </tr>
        </table>
</asp:Content>
