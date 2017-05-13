<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="SendTopic.aspx.cs" Inherits="bbs.SendTopic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 810px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0"  
        align="center" class="auto-style1">
        <tr>
            <td colspan="2" 
                style=" font-size:12px; text-align:left; background-color: #e7f1f8; " 
                class="style15">
                &nbsp;<a href="Hmpage.aspx">论坛首页</a> →&nbsp;
                <asp:Label ID="title_name" runat="server">发帖</asp:Label>
            </td>
          
        </tr>
        </table>


<table id="TABLE1" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
            width: 785px; height: 324px;" align="center">

            <tr>
                <td colspan="3" class="style1" valign="top">
                    <table cellpadding="0" cellspacing="0" class="control_table" width="785" 
                        border="1" align="left">
                        <tr>
                            <td style="border-right: #79b7cf 1px solid; vertical-align: top; color: #666666"  align="left">
                                
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
                                <ItemTemplate><table style="width: 110px" >
                                    <tr>
                                        <td style="text-align: left" class="style12" align="right">
                                            &nbsp;
                                          <%#Eval("Username")%>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style13" align="right"><img src='<%#Eval("Headurl")%>' width="100" height="110" runat="server" id="Img1" /></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" class="style14">
                                           性别:<%#Eval("sex")%></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" class="style14">
                                            邮箱:<%#Eval("Email")%></td>
                                    </tr>

                                    <tr>
                                        <td style="text-align: left" class="style14">
                                             注册:<%#Eval("CreatedOn")%></td>
                                    </tr>
                                </table></ItemTemplate>
                                </asp:Repeater>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                    SelectMethod="GetUserById1" TypeName="LBBS.BLL.UserManager">
                                    <SelectParameters>
                                        <asp:SessionParameter DefaultValue="1" Name="userid" SessionField="userid" 
                                            Type="Int32" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                            <td style="vertical-align: top" class="style7">
                                <table cellpadding="0" border="1" cellspacing="0" style="width:157%;">
                    <tr>
                        <td style="background-color: #e7f1f8;" class="style23">主题:</td>
                        <td style="text-align:left; background-color: #e7f1f8;" class="style5">
                            &nbsp;
                            <asp:TextBox ID="contenttitle" runat="server" Width="300px" CssClass="input"></asp:TextBox>
                            主题不得超过35个字符&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="分类:"></asp:Label>
                            <asp:DropDownList ID="classid" runat="server" DataSourceID="OSDCCSever" 
                        DataTextField="Classname" DataValueField="Classid" Height="18px" Width="79px" 
                                AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="OSDCCSever" runat="server" 
                        SelectMethod="GetAllContentclass" TypeName="LBBS.BLL.CCManager">
                    </asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">内容：</td>
                        <td class="style28" valign="top">
                    <asp:TextBox ID="FreeTextBox1" runat="server" Height="149px" TextMode="MultiLine" 
                        Width="653px" CssClass="ckeditor"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #e7f1f8" class="style26">&nbsp;&nbsp; &nbsp;</td>
                        <td style="text-align:left; background-color: #e7f1f8;" class="style27">
                            <asp:Button ID="btnOK" runat="server" Text="提  交" OnClick="btnOK_Click" 
                                CssClass="button" />
                        </td>
                        
                    </tr>
                </table>
                                <br />
                            </td>
                        </tr>
                        
                        </table>
                </td>
            </tr>
            </table>
</asp:Content>
