using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bbs
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                this.divLogin3.Visible = true;
                this.divMain1.Visible = false;
                username.Text = "游客";
            }


            else
            {
                this.divLogin3.Visible = false;
                this.divMain1.Visible = true;
                username.Text = Session["username"].ToString();

            }
        }

        protected void btnQa_Click(object sender, EventArgs e)
        {
            Response.Redirect("LvMessage.aspx");
        }
        
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hmpage.aspx");
        }

        protected void LinkButtonuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hmpage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchContent.aspx");
        }

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SendTopic.aspx");
        }
    }
}