<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="left.aspx.cs" Inherits="bbs.left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
    /* Layout ================================================================================ */
.wrapper { min-width:980px; align:"left" }
.main { width:980px; margin:0 auto; padding:0;text-align:left; }
.col-left { float:left; width:160px; }
         .auto-style1 {
             width: 973px;
             margin: 0 auto;
             padding: 0;
             text-align: left;
             height: 571px;
         }
         .auto-style2 {
             float: left;
             width: 156px;
             height: 570px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">

     <div class="wrapper" >
<div class="auto-style1" align="left">
<div class="auto-style2">


<div id="menu"> 

<div class="navhead">用户管理</div>                        
<div class="navcontent">
  <ul>
<li class="menusub"><a href="UserRegister.aspx" target='main'>增加用户</a></li>
<li class="menusub"><a href="Manager/managerUser.aspx" target='main'>修改删除用户</a></li>
 </ul>
</div>       
			
<div class="navhead">版块管理</div>                        
<div class="navcontent">
<ul>
<li class="menusub"><a href="Manager/ListContentClass.aspx" target='main'>增加版块</a></li>
<li class="menusub"><a href="Manager/ViewContentClass.aspx" target='main'>修改版块</a></li>
 </ul>
</div>	
			
<div class="navhead">发帖管理</div>                        
<div class="navcontent">
<ul>
<li class="menusub"><a href="SendTopic.aspx" target='main'>增加帖子</a></li>
<li class="menusub"><a href="Manager/ListContent.aspx" target='main'>修改删除帖子</a></li>
</ul>
</div>
			                                  
<div class="navhead">回复管理</div>                        
<div class="navcontent">
 <ul>
<li class="menusub"><a href="TopicContent.aspx" target='main'>增加回复</a></li>
<li class="menusub"><a href="Manager/Reply.aspx" target='main'>修改删除回复</a></li>
 </ul>
</div>
			                                  

			                                  

			                                  
</div>

</div>
</div>
</div>
    </form>
</body>
</html>
