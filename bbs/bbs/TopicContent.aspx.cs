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
    public partial class TopicContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int topicid = Convert.ToInt32(Request.QueryString["topicid"]);
            AspNetPager1.AlwaysShow = true;


            if (!IsPostBack)
            {
                //首次加载，赋初值
                ViewState["Page"] = 0;
                ViewState["topicid"] = Convert.ToInt32(Request.QueryString["topicid"]);
                ViewState["UserID"] = Convert.ToInt32(Request.QueryString["UserID"]);
                DataBind(topicid);
            }
        }
        private void DataBind(int topicid)
        {
            PagedDataSource pdsList = new PagedDataSource();
            pdsList.DataSource = ReManager.GetContentReplyByTID(topicid);
            AspNetPager1.RecordCount = pdsList.Count;
            pdsList.AllowPaging = true;
            pdsList.PageSize = 10;
            pdsList.PageSize = AspNetPager1.PageSize;
            pdsList.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            Repeater2.DataSource = pdsList;
            Repeater2.DataBind();
        }

        private int topicid
        {
            get
            {
                return (int)ViewState["topicid"];
            }
            set
            {
                ViewState["topicid"] = value;
            }
        }

        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            DataBind(topicid);
        }
        protected void btnOK_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {

                if (FreeTextBox1.Text.Trim().Length == 0)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('内容不能为空！')</script>");
                    return;
                }


                LBBS.Model.Content content = ContentManager.GetContentByID1(Convert.ToInt32(Request.QueryString["topicid"]));
               
                ContentReply contentreply = new ContentReply();
                User user = (User)Session["User"];
                user.Userid = Convert.ToInt32(Session["UserID"]);
                //int userid= int.Parse(Session["UserID"].ToString());
                contentreply.Recontentery = FreeTextBox1.Text;
                contentreply.Createon = Convert.ToDateTime(DateTime.Now.ToString(""));
                contentreply.User = user;//关联表数据设定
                contentreply.Content = content;
                if (ReManager.addReply(contentreply) > 0)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('回复成功！')</script>");
                    Response.Redirect("TopicContent.aspx?topicid=" + topicid + "");
                    return;
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('回复失败！');</script>");
                    return;
                }
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('你还未登录，请先登录！')</script>");
                return;
            }
        }
        protected void cancle_Click(object sender, EventArgs e)
        {
            cancle.Text = "";
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}