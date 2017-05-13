<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="top.ascx.cs" Inherits="bbs.newascx.top" %>
<asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
            <table border="0" cellpadding="0" cellspacing="0" class="TableCss" align="center"  width="810">
                <tr>
                    <td colspan="4" rowspan="1" style="background-image: url('Images/帖子及回帖信息页/头一小条.jpg');
                        height: 8px; text-align: center">
                    </td>
                </tr>
                                <tr>
                                    <td style="width: 160px; height: 148px; text-align: center; background-image: url('Images/帖子及回帖信息页/1.jpg');" 
                                        rowspan="2" valign="top">
                                        <br /><IMG src='<%# Eval("User.Headurl") %>' width="80" height="70" runat="server" ID="Img1">
                                        <br /><br />
                                        用户名:<%#Eval("User.Username")%><br />性别:<%#Eval("User.sex")%><br />邮箱:<%#Eval("User.Email")%></td><br />
                                         
                                    
                                    <td style="width: 374px; height: 23px; text-align:left; background-image: url('Images/帖子及回帖信息页/2.jpg');">
                                    &nbsp;<asp:Label ID="Label4" runat="server" Text="主题："></asp:Label><%# Eval("Title")%></td>
                                    <td style="width: 182px; height: 23px; background-image: url('Images/帖子及回帖信息页/3.jpg');">
                                    发表时间：<%# Eval("Createdon")%></td>
                                    <td style="background-image: url('Images/帖子及回帖信息页/4.jpg');"  class="style5">
                                        回复</td>
                                </tr>
                                <tr>
                                    <td colspan="3" 
                                        
                                        style="vertical-align: top; text-align:left; height: 125px; background-image: url('Images/帖子及回帖信息页/5.jpg'); ">
                                        &nbsp;&nbsp;<%# Eval("Contentery")%></td>
                                </tr>
                            </table>
                                  </ItemTemplate>
    </asp:Repeater>