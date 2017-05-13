using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LBBS.BLL;

namespace bbs.newascx
{
    public partial class top : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int topicid = Convert.ToInt32(Request.QueryString["topicid"]);


            //Session["TopicID"] = topicid;
            if (!IsPostBack)
            {
                //首次加载，赋初值
                ViewState["Page"] = 0;
                ViewState["topicid"] = Convert.ToInt32(Request.QueryString["topicid"]);
                ViewState["User"] = Convert.ToInt32(Request.QueryString["User"]);
                DataBind(topicid);
            }
        }
        private void DataBind(int topicid)
        {
            PagedDataSource pdsList = new PagedDataSource();
            pdsList.DataSource = ContentManager.GetContentByTID(topicid);
            pdsList.AllowPaging = true;
            Repeater1.DataSource = pdsList;
            Repeater1.DataBind();
        }



        //protected void lbtDelete_Click(object sender, EventArgs e)
        //{
        //    int replyid = Convert.ToInt32(Request.QueryString["replyid"]);
        //    //ReManager.DeleteContentReply(replyid);
        //    this.DataBind();


        //}
    }
}