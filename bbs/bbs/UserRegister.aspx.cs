using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LBBS.DAL;
using LBBS.Model;
using LBBS.BLL;
using System.Data.OleDb;

namespace bbs
{
    public partial class UserRegister : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.Visible = false;
        }
        private void Image()
        {
            if (FileUpload1.PostedFile.FileName != "")
            {
                User user = new User();
                Image1.ImageUrl = user.Headurl;
                return;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.Username = name.Text.Trim();
            user.Password = pass1.Text.Trim();
            user.Replycount = 0;
            user.Topiccount = 0;
            user.Nickname = "匿名";
            user.Email = email.Text.Trim();
            user.sex = Sex.Text.Trim();
            user.CreatedOn = Convert.ToDateTime(DateTime.Now.ToString(""));
            user.Headurl = "~/upload/" + FileUpload1.FileName.Trim(); 
            user.Enabled = true;

            string user_name = name.Text;
            string str = "select * from BBS_User where UserName='" + user_name + "'";
            OleDbConnection connection = new OleDbConnection("provider=sqloledb;data source=cocodai;initial catalog=bbs_dba;user id=sa;password=Password00");
            connection.Open();
            OleDbCommand cmd = new OleDbCommand(str, connection);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
               
                return;
            }

            if (name.Text== "")
            {
                Label2.Text = "请输入名字";
            }
            if (pass1.Text == "")
            {
                Label2.Text = "请输入密码";
               
            }
            if (pass1.Text != pass2.Text)
            {
                Label2.Text = "密码不一致，请重新确认";
            }
            if (FileUpload1.PostedFile.FileName == "")
            {
                Label1.Text = "您还没有选择图片！";
                return;
            }
            else
            {
                string filepath = FileUpload1.PostedFile.FileName;
                string filename = filepath.Substring(filepath.LastIndexOf("\\") + 1);
                string fileEx = filepath.Substring(filepath.LastIndexOf(".") + 1);
                string serverpath = Server.MapPath("~/upload/") + filename;
                if (fileEx == "jpg" || fileEx == "bmp" || fileEx == "gif")
                {
                    FileUpload1.PostedFile.SaveAs(serverpath);
                    Image1.ImageUrl = "~/upload/" + filename;
                    Image();
                    //Label1.Text = "上传成功！";
                }
                else
                {
                    Label5.Visible = true;
                    Label1.Text = "上传的图片扩展名错误！";
                    return;
                }
            }
            if (UserManager.addUser(user) > 0)
            {
                Image();
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册成功!');</script>");
                return;
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册失败!');</script>");
                return;
            }



        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string user_name = name.Text;
            string str = "select * from BBS_User where UserName='" + user_name + "'";
            OleDbConnection connection = new OleDbConnection("provider=sqloledb;data source=cocodai;initial catalog=bbs_dba;user id=sa;password=Password00");
            connection.Open();
            OleDbCommand cmd = new OleDbCommand(str, connection);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (user_name == "")
            {
                Label2.Text = "×";
                Label3.Text = "用户名不得为空!";
                return;
            }
            if (dr.Read())
            {
                Label2.Text = "×";
                Label3.Text = "该用户名已存在!";
                return;
            }

            if (user_name.Length > 15)
            {
                Label2.Text = "×";
                Label3.Text = "请按要求填写用户名!";
                return;
            }
            Label2.Text = "√";
            Label3.Text = "该用户名可正常使用!";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            name.Text = String.Empty;
            pass1.Text = String.Empty;
            pass2.Text = String.Empty;
            email.Text = String.Empty;
        }
    }
}