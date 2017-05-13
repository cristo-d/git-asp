using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LBBS.Model;
using System.Data;
using System.Data.OleDb;
using LBBS.DAL;
using System.Data.SqlClient;


namespace LBBS.BLL
{
    public static class ContentManager
    {



        public static IList<Content> GetContentByUser(int userid)
        {
            return ContentService.GetContentByUser(userid);
        }

        public static IList<Content> GetContentByClassOk(int classid)
        {
            return ContentService.GetContentByClassOk(classid);
        }

        public static IList<Content> GetAllContent()
        {
            return ContentService.GetAllContent();
        }
        //主页帖子通过该方法连接数据源
        public static IList<Content> GetAllContent1()
        {
            return ContentService.GetAllContent1();
        }


        public static int DeleteContent(Content content)
        {

            return ContentService.DeleteContent(content);
        }

        public static IList<Content> GetContentByClassID(int classid)
        {
            return ContentService.GetContentByClassID(classid);
        }

        public static IList<Content> GetContentByTID(int topicid)
        {
            return ContentService.GetContentByTID(topicid);
        }



        public static int addContent(Content content)
        {
            return ContentService.addContent(content);
        }



        //public static int ModifyContent(string title, string contententry,int userid, int classid, int topicid, int replycount, string isclose, DateTime createon, DateTime replyon)
        //{
        //    LBBS.Model.Content content = ContentService.GetContentById(topicid);
        //    content.Contentclass = CCManager.GetContentclassById(classid);
        //    content.User = UserManager.GetUserById1(userid);
        //    content.Contentery = contententry;
        //    content.Title = title;
        //    content.Replycount = replycount;
        //    content.Repliedon = replyon;
        //    content.Createdon = createon;
        //    content.Isclose = isclose;

        //    return ContentService.ModifyContent(content);
        //}
        //public static int ModifyContent(string title, string contententry, int classid, int topicid, int replycount, string isclose, DateTime createon, DateTime replyon)
        //{
        //    LBBS.Model.Content content = ContentService.GetContentById(topicid);
        //    content.Contentclass = CCManager.GetContentclassById(classid);
        //    content.Contentery = contententry;
        //    content.Title = title;
        //    content.Replycount = replycount;
        //    content.Repliedon = replyon;
        //    content.Createdon = createon;
        //    content.Isclose = isclose;

        //    return ContentService.ModifyContent(content);
        //}
        public static int ModifyContent(Content content)
        {

            return ContentService.ModifyContent(content);
        }

        public static IList<Content> GetContentByTitle(string title)
        {
            return ContentService.GetContentByTitle(title);
        }

        public static Content GetContentByID(int topicid)
        {
            return ContentService.GetContentById(topicid);
        }

        public static Content GetContentByID1(int topicid)
        {
            return ContentService.GetContentById1(topicid);
        }

        public static IList<Content> UpdateReTopicCount(int topicid)
        {
            return ContentService.UpdateReTopicCount(topicid);
        }


    }
}
