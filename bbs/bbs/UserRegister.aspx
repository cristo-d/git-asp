<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="bbs.UserRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
    
    <style type="text/css">
        .auto-style1 {
            width: 151px;
            height: 117px;
        }
    </style>
   
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript"> 
function show(upimg) 
{ 
    var dd=document.getElementById("divview"); 
    dd.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = upimg; 
    dd.style.width = 166; 
    dd.style.height = 190; 
    dd.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").sizingMethod = 'scale'; 
} 
</script>
    <table border="0" cellpadding="0" cellspacing="0" 
                        style="border: 1px solid #79b7cf; height: 293px; width: 813px;" 
                        align="center">
                        <tr>
                        <td colspan="2" style="font-size: 12px; background-color: #e7f1f8;
                    text-align: left" class="style5">
                    &nbsp;<a href="Hmpage.aspx">论坛首页</a> →&nbsp;
                    <asp:Label ID="Label4" runat="server">会员注册</asp:Label>
                   </td>
                <td style="background-color: #e7f1f8; text-align: right" align="left" class="style8">
                            </td></tr>
                        <tr>
                            <td colspan="2" style="background-image: url('images/title.gif'); " 
                                align="center" class="style9">
                                会员注册</td>
                        </tr>
                        <tr>

                            <td colspan="2" class="style5" align="center">
                <table cellpadding="0" cellspacing="0" width="805" style="height:250px;" id="table1"  border="0"
                                    class="register_table" align="center">
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Label ID="Label2" runat="server" Style="color: red"></asp:Label>
                            <asp:Label ID="Label3" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; width: 139px;">用户名：</td>
                        <td style="text-align:left; width: 452px;" align="center"><asp:TextBox ID="name" runat="server" 
                                CssClass="input"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" Text="检查用户名" Width="64px" style="font-size: 12px" Height="18px" OnClick="Button3_Click" CssClass="button" />不得超过15个字符,不能使用非法字符。</td>
                    </tr>
                    <tr>
                        <td style="text-align:right; width: 139px;">密码：</td>
                        <td style="text-align:left; width: 452px;" align="center"><asp:TextBox ID="pass1" runat="server" 
                                TextMode="Password" CssClass="input"></asp:TextBox>6-20个字符。</td>
                    </tr>
                    <tr>
                        <td style="text-align:right; width: 139px;">重复密码：</td>
                        <td style="text-align:left; width: 452px;" align="center"><asp:TextBox ID="pass2" runat="server" 
                                TextMode="Password" CssClass="input"></asp:TextBox>再输一遍，确保没错儿。</td>
                    </tr>
                    <tr>
                        <td style="text-align:right; width: 139px;">用户头像：
                             
                        </td>
                        <td style="text-align:left; width: 452px;" align="center">
                            <div id="divview" style="filter : progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);" class="auto-style1"> 
<!--用于显示图片--> <asp:Image ID="Image1" src="#"  runat="server" Width="100" Height="100"  alt="预览" />
</div> 
<asp:FileUpload ID="FileUpload1" runat="server" onpropertychange="show(this.value)"/> 
                            <br/>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="Red"></asp:Label>
            <br />
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="Red"
                                    Text="*只允许上传.bpm/.jpg/.gif类型的图片！" Width="243px" Visible="False"></asp:Label></td>
                        
                    </tr>
                    <tr>
                        <td style="text-align:right; width: 139px;">E-mail：</td>
                        <td style="text-align:left; width: 452px;" align="center"><asp:TextBox ID="email" runat="server" 
                                CssClass="input"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; width: 139px;">性别：</td>
                        <td style="text-align:left; width: 452px;" align="center">
                            <asp:RadioButtonList ID="Sex" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:RadioButtonList>
                        </td>
                    </tr>    
                    <tr>
                        <td style="text-align:right; width: 139px;">&nbsp;</td>
                        <td style="text-align:left; width: 452px;" align="center">&nbsp;</td>
                    </tr>                                        
                     <tr>
                        <td style="height: 21px; width: 139px;"></td>
                        <td style="text-align:left; height: 21px; width: 452px;" align="center">
                            <asp:Button ID="Button1" runat="server" Text="注  册" Width="90px" 
                                style="font-size: 12px" OnClick="Button1_Click" CssClass="button" />
                            <asp:Button ID="Button2" runat="server" Text="重  置" Width="90px" style="font-size: 12px" OnClick="Button2_Click" CssClass="button" />&nbsp;
                            </td>
                         
                     </tr> 
                     <tr>
                        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                ShowMessageBox="True" ShowSummary="False" />
                         </td>
                    </tr>                               
                </table>
                            </td>
                        </tr>
                        </table>

  
</asp:Content>
