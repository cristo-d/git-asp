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
    public partial class SendTopic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int userid = Convert.ToInt32(Session["UserID"]);
            if (!IsPostBack)
            {

                //int userid = int.Parse(Session["UserID"].ToString());
                ViewState["UserID"] = Request.QueryString["UserID"];


            }
        }
           






        protected void btnOK_Click(object sender, EventArgs e)
        {

            if ((User)Session["User"] == null)
            {
                this.FreeTextBox1.Enabled = false;
                this.classid.Enabled = false;
                this.contenttitle.Enabled = false;
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请登录后发帖！')</script>");
                return;
            }


            if (contenttitle.Text.Trim().Length == 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('标题不能为空！')</script>");
                return;
            }
            if (FreeTextBox1.Text.Trim().Length == 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('内容不能为空！')</script>");
                return;
            }


            LBBS.Model.Content content = new LBBS.Model.Content();

            User user = (User)Session["User"];//如何保存当前UID
            ContentClass contentclass = (ContentClass)CCManager.GetContentclassById(Convert.ToInt32(classid.SelectedValue));
            content.Title = contenttitle.Text.Trim();
            content.Contentclass = contentclass;
            content.Contentery = FreeTextBox1.Text;
            content.Createdon = Convert.ToDateTime(DateTime.Now.ToString(""));
            content.Repliedon = Convert.ToDateTime(DateTime.Now.ToString(""));
            content.Replycount = 0;
            content.Isclose = "已审核";
            content.User = user;//关联表数据设定
            if (ContentManager.addContent(content) > 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('增加成功！');</script>");
                return;
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('增加失败！');</script>");
                return;
            }




        }
    }
}