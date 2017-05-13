using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LBBS.Model;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;

namespace LBBS.DAL
{
    public static class UserService
    {
        public static User GetUserByName(string username)
        {
            string sql = "select * from BBS_User where UserName=@Username";
            using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@Username", username)))
            {
                if (reader.Read())
                {
                    User user = new User();
                    user.Userid = (int)reader["UserID"];
                    user.Username = (string)reader["UserName"];
                    user.Password = (String)reader["Password"];
                    user.Headurl = (string)reader["HeadUrl"];

                    user.sex = (string)reader["Sex"];
                    user.Topiccount = (int)reader["TopicCount"];
                    user.Replycount = (int)reader["ReplyCount"];
                    user.Email = (string)reader["Email"];
                    reader.Close();
                    return user;
                }
                else
                {
                    reader.Close();
                    return null;
                }
            }
        }

//发帖页使用该方法连接数据源
        public static User GetUserById1(int userid)   
        {
            string sql = "select * from BBS_User where UserID=@UserID";
            using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@UserID", userid)))
            {
                if (reader.Read())
                {
                    User user = new User();
                    user.Userid = (int)reader["UserID"];
                    user.Username = (string)reader["UserName"];
                    user.Password = (String)reader["Password"];
                    user.Headurl = (string)reader["HeadUrl"];
                    user.sex = (string)reader["Sex"];
                    user.Topiccount = (int)reader["TopicCount"];
                    user.Replycount = (int)reader["ReplyCount"];
                    user.Email = (string)reader["Email"];

                    reader.Close();
                    return user;
                }
                else
                {
                    reader.Close();
                    return null;
                }
            }
        }

//UserRegister.aspx注册页bll层调用该方法进入数据库
        public static int adduser(User user)
        {
            string sql = "insert into BBS_User(UserName,Password,Nickname,Email,HeadUrl,Topiccount,Replycount,Enabled,CreatedOn,Sex)" + "values(@UserName,@Password,@Nickname,@Email,@HeadUrl,@Topiccount,@Replycount,@Enabled,@CreatedOn,@Sex)";
            SqlParameter[] para = new SqlParameter[]{
            new SqlParameter ("@UserName",user.Username ),
            new SqlParameter ("@Nickname",user.Nickname ),
            new SqlParameter ("@Password",user.Password ),
            new SqlParameter ("@Email",user.Email),
            new SqlParameter ("@HeadUrl",user.Headurl ),
            new SqlParameter ("@Topiccount",user.Topiccount),
            new SqlParameter ("@Replycount",user.Replycount),
            new SqlParameter ("@Enabled",user.Enabled),
            new SqlParameter ("@CreatedOn",user.CreatedOn),
            new SqlParameter ("@Sex",user.sex )};
            //调用sqlhelper的executeCommand方法
            return DBHelper.ExecuteCommand(sql, para);
        }


        public static IList<User> GetAllUser()
        {
            string sqlAll = "select * from BBS_User";
            return GetUserBySql(sqlAll);
        }


        private static IList<User> GetUserBySql(string safesql)
        {
            List<User> list = new List<User>();
            DataTable table = DBHelper.GetDataSet(safesql);
            foreach (DataRow row in table.Rows)
            {
                User user = new User();
                user.Userid = (int)row["Userid"];
                user.Username = (string)row["Username"];
                user.Password = (String)row["Password"];

                user.Email = (string)row["Email"];
                user.Topiccount = (int)row["Topiccount"];
                user.Replycount = (int)row["Replycount"];
                user.sex = (string)row["sex"];
                user.CreatedOn = (DateTime)row["CreatedOn"];
                user.Headurl = (string)row["Headurl"];
                user.Enabled = (bool)row["Enabled"];
                list.Add(user);
            }

            return list;
        }


        public static int MoifyUser(User user)
        {
            string sql = "update BBS_User set UserName=@UserName,Email=@Email,HeadUrl=@HeadUrl,CreatedOn=@CreatedOn,Sex=@Sex,Topiccount=@Topiccount,Replycount=@Replycount where UserID=@UserID";

            SqlParameter[] para = new SqlParameter[]{
            new SqlParameter ("@UserName",user.Username ),
            new SqlParameter ("@Password",user.Password ),
            new SqlParameter ("@Email",user.Email),
            new SqlParameter ("@HeadUrl",user.Headurl ),
            new SqlParameter ("@UserID",user.Userid ),
            new SqlParameter ("@CreatedOn",user.CreatedOn),
            new SqlParameter ("@Topiccount",user.Topiccount),
            new SqlParameter ("@Replycount",user.Replycount),
            new SqlParameter ("@Sex",user.sex )};
            return DBHelper.ExecuteCommand(sql, para);
        }


        public static int DeleteUser(User user)
        {
            string sql = "delete BBS_User where UserID=@UserID";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@UserID",user.Userid)
            };

            return DBHelper.ExecuteCommand(sql, para);
        }




        public static User GetUserById3(string headurl)
        {
            string sql = "select * from BBS_User where HeadUrl=@headurl";
            using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@headurl", headurl)))
            {
                if (reader.Read())
                {
                    User user = new User();
                    user.Userid = (int)reader["UserID"];
                    user.Username = (string)reader["UserName"];
                    user.Password = (String)reader["Password"];
                    user.Headurl = (string)reader["HeadUrl"];
                    reader.Close();
                    return user;
                }
                else
                {
                    reader.Close();
                    return null;
                }
            }
        }



    }
}
