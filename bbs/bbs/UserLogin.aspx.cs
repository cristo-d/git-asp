using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LBBS.BLL;
using LBBS.Model;

namespace bbs
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnOK_Click(object sender, EventArgs e)
        {

            User user = new User();
            user = UserManager.GetUserByName(textname.Text);
            if (textname.Text.Trim().Length == 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('用户名不能为空！')</script>");
                return;
            }

            if (textpassword.Text.Trim().Length == 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('密码不能为空！')</script>");
                return;
            }  
            if(textpassword.Text!="")
                { 
                    if (textpassword.Text.Equals(user.Password))
                    {

                    Session["User"] = user;
                    Session["UserID"] = user.Userid;
                    Session["Username"] = user.Username;
                    Response.Redirect("Hmpage.aspx");

                    }


                   else
                 {

                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('用户名或密码错误！')</script>");
                return;
                }
               }
        }
    }
}