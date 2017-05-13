using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bbs
{
    public partial class divMain : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            ClearClientPageCache();

            Session.Remove("UserID");
            Session.Abandon();
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('退出成功！')</script>");
            Response.Redirect("Hmpage.aspx");

        }

        public void ClearClientPageCache()
        {
            //清除浏览器缓存 
            Response.Buffer = true;
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Expires = 0;
            Response.CacheControl = "no-cache";
            Response.Cache.SetNoStore();
        }

    }
}