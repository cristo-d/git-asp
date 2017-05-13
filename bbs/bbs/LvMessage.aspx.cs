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
    public partial class LvMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {

            if ((User)Session["User"] == null)
            {
                this.FreeTextBox1.Enabled = false;
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请登录后留言！')</script>");
                return;
            }

            if (FreeTextBox1.Text.Trim().Length == 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('内容不能为空！')</script>");
                return;
            }
            User user = (User)Session["User"];
            user.Userid = Convert.ToInt32(Session["UserID"]);
            Message message = new Message();
            message.Messagecontent = FreeTextBox1.Text.Trim();
            message.Createon = Convert.ToDateTime(DateTime.Now.ToString(""));
            message.User = user;
            bool isOk =MessageManager.InsertMessage(message);
            if (isOk)
            {
                Response.Write("<script>alert('添加成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败')</script>");
            }

        }
    }
}