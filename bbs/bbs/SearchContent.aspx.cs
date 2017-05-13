using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LBBS.BLL;

namespace bbs
{
    public partial class Searchcontent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            ViewState["Page"] = 0;
            ViewState["STitle"] = leave_name.Text.Trim();
            bind(Title);
        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bind(Title);
        }

        private string Title
        {
            get { return (string)ViewState["STitle"]; }
            set { ViewState["STitle"] = value; }
        }

        public void bind(string title)
        {

            if (leave_name.Text == "")
            {
                return;
            }


            PagedDataSource pdsList = new PagedDataSource();
            pdsList.DataSource = ContentManager.GetContentByTitle(title);
            pdsList.AllowPaging = true;
            GridView1.DataSource = pdsList;
            GridView1.DataBind();
            if (this.GridView1.Rows.Count == 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "alert('关于该关键字的主题不存在!');", true);
                return;
            }
        }
    }
}