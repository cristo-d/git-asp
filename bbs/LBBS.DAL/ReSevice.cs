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
    public static class ReSevice
    {
        private static IList<ContentReply> GetContentReplyBySql(string safeSql)
        {
            List<ContentReply> list = new List<ContentReply>();
            DataTable table = DBHelper.GetDataSet(safeSql);
            foreach (DataRow row in table.Rows)
            {
                ContentReply contentreply = new ContentReply();
                contentreply.Replyid = (int)row["ReplyID"];
                contentreply.Recontentery = (string)row["ReContentery"];
                contentreply.Createon = (DateTime)row["CreatedOn"];
                contentreply.Userid = (int)row["UserID"];
                contentreply.Topicid = (int)row["TopicID"];
                //contentreply.User.Headurl = (string)row["HeadUrl"];
                contentreply.Content = CCService.GetContentByTId((int)row["TopicID"]);//外键的处理
                contentreply.User = UserService.GetUserById1((int)row["UserID"]);//外键的处理
                list.Add(contentreply);
            }
            return list;
        }

        public static IList<ContentReply> GetContentReplyByTID(int topicid)/// 此方法是按照发贴的编号返回所有的回贴
        {
            string SqlAll = "select * from BBS_Reply,BBS_User where BBS_Reply.UserID=BBS_User.UserID and TopicID=" + topicid;
            return GetContentReplyBySql(SqlAll);

        }



        public static IList<ContentReply> GetReplyByID(int id)/// 此方法是按照编号返回一条回贴的信息
        {
            string sql = "select * from BBS_Reply where ReplyID=" + id;
            return GetContentReplyBySql(sql);
        }


        public static int addReply(ContentReply contentreply)  //增加回复
        {
            string sql = "insert into BBS_Reply(TopicID,ReContentery,UserID,CreatedOn,ReplyCount) " + " values(@TopicID,@ReContentery,@UserID,@CreatedOn,@ReplyCount)";
            SqlParameter[] para = new SqlParameter[]
           {
               new SqlParameter("@TopicID",contentreply.Content.Topicid),
               new SqlParameter("@ReContentery",contentreply.Recontentery),
               new SqlParameter("@UserID",contentreply.User.Userid),
               new SqlParameter("@CreatedOn",contentreply.Createon),
               new SqlParameter("@ReplyCount",contentreply.Content.Replycount),
           };
            return DBHelper.ExecuteCommand(sql, para);
        }



        //public static ContentReply GetContentReplyByID(int topicid)
        //{

        //    string sql = "select * from BBS_Reply where TopicID=@TopicID";
        //    int userid;
        //    int topicid;
        //    using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@TopicID", topicid)))
        //    {
        //        if (reader.Read())
        //        {
        //            ContentReply contentreply = new ContentReply();
        //            contentreply.Replyid = (int)reader["ReplyID"];
        //            contentreply.Createon = (DateTime)reader["Createdon"];
        //            contentreply.Recontentery = (string)reader["ReContentery"];
        //            userid = (int)reader["UserID"];
        //            topicid = (int)reader["TopicID"];
        //            reader.Close();
        //            contentreply.Content = CCService.GetContentByTId((int)reader["topicid"]);//外键的处理
        //            contentreply.User = UserService.GetUserById1((int)reader["userid"]);//外键的处理
        //            return contentreply;
        //        }
        //        else
        //        {
        //            reader.Close();
        //            return null;
        //        }

        //    }
        //}




        //public static ContentReply GetContentReplyByID(int replyid)
        //{
        //    string sql = "select * from BBS_Reply where ReplyID=@ReplyID";
        //    using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@ReplyID", replyid)))
        //    {
        //        if (reader.Read())
        //        {
        //            ContentReply contentreply = new ContentReply();
        //                        contentreply.Replyid = (int)reader["ReplyID"];
        //                        contentreply.Createon = (DateTime)reader["Createdon"];
        //                        contentreply.Recontentery = (string)reader["ReContentery"];
        //                        user.userid = (int)reader["UserID"];
        //                        topicid = (int)reader["TopicID"];
        //                      reader.Close();
        //            return contentreply;
        //        }
        //        else
        //        {
        //            reader.Close();
        //            return null;
        //        }

        //    }

        //}

        public static IList<ContentReply> GetAllReply()/// 此方法是按照编号返回一条回贴的信息
        {
            string sqlAll = "select * from BBS_Reply";
            return GetContentReplyBySql(sqlAll);
        }


        public static IList<ContentReply> GetAllReply1()
        {
            string sqlAll = "select top 6 * from BBS_Reply order by ReplyID desc";
            return GetContentReplyBySql(sqlAll);
        }

        public static int DeleteContentReply(ContentReply contentreply)
        {
            string sql = "delete BBS_Reply where ReplyID=@ReplyID";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@ReplyID",contentreply.Replyid)
            };

            return DBHelper.ExecuteCommand(sql, para);
        }




        public static int ModifyContentReply(ContentReply contentreply)           //修改内容
        {
            string sql = "update BBS_Reply set ReContentery=@ReContentery,CreatedOn=@CreatedOn where ReplyID=@ReplyID";
            SqlParameter[] para = new SqlParameter[]
          {
               new SqlParameter("@ReplyID",contentreply.Replyid),
               new SqlParameter("@ReContentery",contentreply.Recontentery),
               //new SqlParameter("@UserID",contentreply.User.Userid),
               //new SqlParameter("@TopicID",contentreply.Content.Topicid),
               new SqlParameter("@CreatedOn",contentreply.Createon)
          };
            return DBHelper.ExecuteCommand(sql, para);
        }

    }
}

