using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LBBS.BLL;

namespace bbs
{
    public partial class ClassContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int classid = Convert.ToInt32(Request.QueryString["Classid"]);
            if (!IsPostBack)
            {
                //首次加载，赋初值
                ViewState["Page"] = 0;
                ViewState["classid"] = Convert.ToInt32(Request.QueryString["Classid"]);
                Databind(classid);

            }
        }
        private void Databind(int classid)
        {
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource = ContentManager.GetContentByClassID(classid);
            AspNetPager1.RecordCount = pds.Count;
            pds.AllowPaging = true;
            pds.PageSize = 8;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            Repeater3.DataSource = pds;
            Repeater3.DataBind();

        }


        private int classid
        {
            get
            {
                return (int)ViewState["classid"];
            }
            set
            {
                ViewState["classid"] = value;
            }
        }


        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            Databind(classid);
        }
    }
}