using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using LBBS.Model;

namespace LBBS.DAL
{
    public static class ContentService
    {

        private static IList<Content> GetContentBySql(string safeSql)
        {
            List<Content> list = new List<Content>();
            DataTable table = DBHelper.GetDataSet(safeSql);
            foreach (DataRow row in table.Rows)
            {
                Content content = new Content();
                content.Topicid = (int)row["TopicID"];
                content.Title = (string)row["Title"];
                content.Userid = (int)row["UserID"];
                content.Classid = (int)row["ClassID"];
                content.Isclose = (string)row["IsClose"];
                content.Contentery = (string)row["Contentery"];
                content.Createdon = (DateTime)row["CreatedOn"];
                content.Repliedon = (DateTime)row["RepliedOn"];
                content.Replycount = (int)row["ReplyCount"]; ;
                content.Contentclass = CCService.GetContentclassById((int)row["ClassID"]);//外键的处理
                content.User = UserService.GetUserById1((int)row["UserID"]);//外键的处理
                list.Add(content);
            }
            return list;
        }



        public static IList<Content> GetContentByUser(int userid)   //通过UID查询所有内容
        {
            string sqlAll = "select * from BBS_Topic where UserID=" + userid + "order by CreatedOn";
            return GetContentBySql(sqlAll);
        }


        public static IList<Content> GetAllContent()
        {
            string sqlAll = "select * from BBS_Topic";
            return ContentService.GetContentBySql(sqlAll);
        }

        //主页帖子通过该方法获得数据
        public static IList<Content> GetAllContent1()
        {
            string sqlAll = "select top 6 * from BBS_Topic  order by TopicID desc";
            //使用getcontentbysql方法返回数据
            return ContentService.GetContentBySql(sqlAll);
        }

        public static IList<Content> GetContentByClassOk(int classid)   //通过IsClose为'True'时才显示所有内容按创建时间排序
        {
            string sqlAll = "select * from BBS_Topic where IsClose='已审核' and classid=" + classid + "order by CreatedOn";
            return GetContentBySql(sqlAll);
        }


        public static Content GetContentById(int topicid)    //外键的处理
        {
            string sql = "select * from BBS_Topic where TopicID=@TopicID";
            int userid;
            int classid;
            using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@TopicID", topicid)))
            {
                if (reader.Read())
                {
                    Content content = new Content();
                    content.Topicid = (int)reader["TopicID"];
                    content.Title = (string)reader["Title"];
                    content.Isclose = (string)reader["IsClose"];
                    content.Contentery = (string)reader["Contentery"];
                    content.Createdon = (DateTime)reader["CreatedOn"];
                    content.Repliedon = (DateTime)reader["RepliedOn"];
                    userid = (int)reader["UserID"];
                    classid = (int)reader["ClassID"];
                    reader.Close();
                    content.Contentclass = CCService.GetContentclassById((int)reader["ClassID"]);//外键的处理
                    content.User = UserService.GetUserById1((int)reader["UserID"]);//外键的处理
                    return content;
                }
                else
                {
                    reader.Close();
                    return null;
                }
            }
        }



        public static Content GetContentById1(int topicid)    //外键的处理
        {
            string sql = "select * from BBS_Topic where TopicID=@TopicID";

            using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@TopicID", topicid)))
            {
                if (reader.Read())
                {
                    Content content = new Content();
                    content.Topicid = (int)reader["TopicID"];
                    content.Title = (string)reader["Title"];
                    content.Isclose = (string)reader["IsClose"];
                    content.Contentery = (string)reader["Contentery"];
                    content.Createdon = (DateTime)reader["CreatedOn"];
                    content.Repliedon = (DateTime)reader["RepliedOn"];
                    //content.Replycount= (int)reader["Replycount"];
                    reader.Close();
                    return content;
                }
                else
                {
                    reader.Close();
                    return null;
                }
            }
        }


        public static IList<Content> GetContentByClassID(int classid)   //通过classid查询所有内容
        {
            string sqlAll = "select  * from BBS_Topic where ClassID=" + classid + "";
            return GetContentBySql(sqlAll);
        }


        public static IList<Content> GetContentByClassID1(int classid)   //通过classid查询Classname
        {
            string sqlAll = "select top 1 * from BBS_Topic where ClassID=" + classid + "";
            return GetContentBySql(sqlAll);
        }

        public static IList<Content> GetContentByTID(int topicid)
        {
            string sqlAll = "select * from BBS_Topic where TopicID=" + topicid + "";
            return GetContentBySql(sqlAll);
        }



        public static int DeleteContent(Content content)
        {
            string sql = "delete BBS_Topic where TopicID=@TopicID";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@TopicID",content.Topicid)
            };

            return DBHelper.ExecuteCommand(sql, para);
        }



        private static IList<Content> GetContentALL(string safeSql)
        {
            List<Content> list = new List<Content>();
            DataTable table = DBHelper.GetDataSet(safeSql);
            foreach (DataRow row in table.Rows)
            {
                Content content = new Content();
                content.Topicid = (int)row["TopicID"];
                content.Title = (string)row["Title"];
                content.Isclose = (string)row["IsClose"];
                content.Contentery = (string)row["Contentery"];
                content.Createdon = (DateTime)row["CreatedOn"];
                content.Repliedon = (DateTime)row["RepliedOn"];
                content.Replycount = (int)row["ReplyCount"];
                content.Contentclass = CCService.GetContentclassById((int)row["ClassID"]);//外键的处理
                content.User = UserService.GetUserById1((int)row["UserID"]);//外键的处理

                list.Add(content);
            }
            return list;
        }


        public static int addContent(Content content)  //增加内容
        {
            string sql = "insert into BBS_Topic(Title,Contentery,ClassID,UserID,CreatedOn,RepliedOn,IsClose,ReplyCount) values(@Title,@Contentery,@ClassID,@UserID,@CreatedOn,@RepliedOn,@IsClose,@ReplyCount)";
            SqlParameter[] para = new SqlParameter[]
           {
               new SqlParameter("@Title",content.Title),
               new SqlParameter("@Contentery",content.Contentery),
               new SqlParameter("@ClassID",content.Contentclass.Classid),
               new SqlParameter("@UserID",content.User.Userid),
                new SqlParameter("@CreatedOn",content.Createdon),
                 new SqlParameter("@RepliedOn",content.Repliedon),
                  new SqlParameter("@IsClose",content.Isclose),
                  new SqlParameter("@ReplyCount",content.Replycount)

           };
            return DBHelper.ExecuteCommand(sql, para);
        }


        public static int ModifyContent(Content content)           //修改内容
        {
            string sql = "update BBS_Topic set Title=@Title,Contentery=@Contentery,ReplyCount=@ReplyCount,IsClose=@IsClose,CreatedOn=@CreatedOn,RepliedOn=@RepliedOn where TopicID=@TopicID";
            SqlParameter[] para = new SqlParameter[]
          {
               new SqlParameter("@TopicID",content.Topicid),
               // new SqlParameter("@ClassID",content.Contentclass.Classid),
              new SqlParameter("@Title",content.Title),
             //  new SqlParameter("@UserID",content.User.Userid),
               new SqlParameter("@Contentery",content.Contentery),
                new SqlParameter("@ReplyCount",content.Replycount),
                 new SqlParameter("@IsClose",content.Isclose),
                new SqlParameter("@CreatedOn",content.Createdon),
                 new SqlParameter("@RepliedOn",content.Repliedon),

          };
            return DBHelper.ExecuteCommand(sql, para);
        }


        public static IList<Content> GetContentByTitle(string title)
        {
            string sqlAll = "select * from BBS_Topic where Title like '%"
            + title + "%' order by CreatedOn";
            return GetContentBySql(sqlAll);
        }


        public static IList<Content> UpdateReTopicCount(int topicid)
        {
            string sqlpp = "update BBS_Topic set ReplyCount=ReplyCount+1 where TopicID=" + topicid;
            return GetContentBySql(sqlpp);
        }





    }
}
