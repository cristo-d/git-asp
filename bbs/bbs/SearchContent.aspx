<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="SearchContent.aspx.cs" Inherits="bbs.Searchcontent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" style="width: 810px" >
                    <tr>
            <td colspan="2" 
                style=" font-size:12px; text-align:left; background-color: #e7f1f8; " 
                class="style6">
                &nbsp;<a href="Hmpage.aspx">论坛首页</a> →&nbsp;
                <asp:Label ID="title_name" runat="server">帖子搜索</asp:Label></td>
            <td style="background-color: #e7f1f8; text-align:right; " class="style6">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="font-size:12px;">
                    <table border="0"  style="border-right: #79b7cf 1px solid;
                        border-top: #79b7cf 1px solid; border-left: #79b7cf 1px solid; border-bottom: #79b7cf 1px solid"
                        width="810">
                        <tr>
                            <td colspan="2" style="background-image: url(images/title.gif); height: 20px" 
                                align="center">
                                搜索贴子
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height:30px;" align="center">
                                <asp:TextBox ID="leave_name" runat="server"></asp:TextBox>
                                关键字：(关键字不得为空) &nbsp;
                                <asp:Button ID="Button1" runat="server" Style="font-size: 12px" Text="搜  索" Width="70px" OnClick="Button1_Click" />&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 100px">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    Width="100%" AllowPaging="True" BorderColor="#79B7CF" PageSize="6" 
                                    OnPageIndexChanging="GridView1_PageIndexChanging" Height="50px">
                                    <Columns>
                                        <asp:HyperLinkField DataNavigateUrlFields="Topicid" DataTextField="Title" HeaderText="帖子主题" DataNavigateUrlFormatString="TopicContent.aspx?topicid={0}" >
                                            <ItemStyle HorizontalAlign="Left" Width="400px" />
                                        </asp:HyperLinkField>
                                        <asp:BoundField DataField="Createdon" HeaderText="发帖时间" DataFormatString="{0:yyyy年MM月dd日}" HtmlEncode="False"  />
                                        <asp:BoundField DataField="Userid" HeaderText="作者" />
                                    </Columns>
                                    <HeaderStyle CssClass="header" />
                                    <PagerTemplate>
                                    <asp:Label ID="Label1" runat="server" Text="当前页:"></asp:Label><asp:Label  ID="LabelCurrentPage" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text="/"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="总页数:"></asp:Label><asp:Label ID="LabelPageCount" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageCount %>"></asp:Label>
                                    <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page" Visible="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页</asp:LinkButton> 
                                    <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev" CommandName="Page" Visible="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页</asp:LinkButton> 
                                    <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page" Visible="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页</asp:LinkButton> 
                                    <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page" Visible="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页</asp:LinkButton> 
                                    </PagerTemplate>  
                                </asp:GridView>
                            
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
</asp:Content>
