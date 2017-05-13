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
    public static class CCService
    {
   //contentservice.cs类外键引用
        public static ContentClass GetContentclassById(int classid)
        {
            string sql = "select * from BBS_Class where ClassID=@ClassID";
            using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@ClassID", classid)))
            {
                if (reader.Read())
                {
                    ContentClass contentcalss = new ContentClass();
                    contentcalss.Classid = (int)reader["ClassID"];
                    contentcalss.Classname = (string)reader["ClassName"];
                    contentcalss.Classurl = (string)reader["ClassUrl"];
                    reader.Close();
                    return contentcalss;
                }
                else
                {
                    reader.Close();
                    return null;
                }

            }
        }

        public static int addContentclass(ContentClass contentclass)
        {
            string sql = "insert into BBS_Class(ClassName,Enable,ClassUrl) values(@Classname,@Enable,@ClassUrl)";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@ClassName",contentclass.Classname),
                new SqlParameter("@Enable",contentclass.Enable),
                 new SqlParameter("@ClassUrl",contentclass.Classurl)
            };
            return DBHelper.ExecuteCommand(sql, para);
        }

        public static int ModifyContentclass(ContentClass contentclass)
        {
            string sql = "update BBS_Class set ClassName=@ClassName,Enable=@Enable,ClassUrl=@ClassUrl where ClassID=@ClassID";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@ClassName",contentclass.Classname),
                new SqlParameter("@Enable",contentclass.Enable),
                new SqlParameter("@ClassUrl",contentclass.Classurl),
                new SqlParameter("@ClassID",contentclass.Classid),
            };
            return DBHelper.ExecuteCommand(sql, para);
        }


        public static int DeleteContentClass(ContentClass contentclass)
        {
            string sql = "delete BBS_Class where ClassID=@ClassID";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@ClassID",contentclass.Classid)
            };

            return DBHelper.ExecuteCommand(sql, para);
        }


        public static IList<ContentClass> GetAllContentclass()
        {
            string sqlAll = "select * from BBS_Class";
            return CCService.GetContentclassBySql(sqlAll);
        }



        private static IList<ContentClass> GetContentclassBySql(string safeSql)
        {
            List<ContentClass> list = new List<ContentClass>();
            DataTable table = DBHelper.GetDataSet(safeSql);
            foreach (DataRow row in table.Rows)
            {
                ContentClass contentclass = new ContentClass();
                contentclass.Classid = (int)row["ClassID"];
                contentclass.Classname = (string)row["ClassName"];
                //contentclass.Enable = (Boolean)row["Enable"];
                contentclass.Classurl = (string)row["ClassUrl"];
                contentclass.Topiccount = (int)row["TopicCount"];
                
                list.Add(contentclass);
            }
            return list;
        }

     

     

        public static Content GetContentByTId(int topicid)
        {
            string sql = "select * from BBS_Topic where TopicID=@TopicID";
            using (SqlDataReader reader = DBHelper.GetReader(sql, new SqlParameter("@TopicID", topicid)))
            {
                if (reader.Read())
                {
                    Content content = new Content();
                    content.Title = (string)reader["Title"];
                    content.Contentery = (string)reader["Contentery"];
                    content.Replycount = (int)reader["ReplyCount"];
                    content.Repliedon = (DateTime)reader["RepliedOn"];
                    content.Createdon = (DateTime)reader["CreatedOn"];
                    content.Isclose = (string)reader["IsClose"];
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

        public static int DeleteContentReply(ContentReply contentreply)
        {
            string sql = "delete BBS_Reply where ClassID=@ClassID";
            SqlParameter[] para = new SqlParameter[]
            {
                new SqlParameter("@ReplyID",contentreply.Replyid)
            };

            return DBHelper.ExecuteCommand(sql, para);
        }

    }
}

