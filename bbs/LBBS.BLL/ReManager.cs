using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LBBS.Model;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using LBBS.DAL;

namespace LBBS.BLL
{
    public static class ReManager
    {


        public static int addReply(ContentReply contentreply)
        {
            return ReSevice.addReply(contentreply);
        }


        public static IList<ContentReply> GetContentReplyByTID(int topicid)/// 此方法是按照发贴的编号返回所有的回贴
        {
            return ReSevice.GetContentReplyByTID(topicid);
        }




        public static IList<ContentReply> GetReplyByID(int id)/// 此方法是按照编号返回一条回贴的信息
        {
            return ReSevice.GetReplyByID(id);
        }


        public static IList<ContentReply> GetAllReply()
        {
            return ReSevice.GetAllReply();
        }

        public static IList<ContentReply> GetAllReply1()
        {
            return ReSevice.GetAllReply1();
        }

        public static int DeleteContentReply(ContentReply contentreply)
        {
            return ReSevice.DeleteContentReply(contentreply);
        }

        //public static int ModifyContent(string recontentery, DateTime createdon, int topicid, int userid, int replyid)
        //{
        //    LBBS.Model.ContentReply contentreply = ReSevice.GetContentReplyByID(replyid);
        //    contentreply.User = UserManager.GetUserById1(userid);
        //    contentreply.Content = ContentService.GetContentById(topicid);
        //    contentreply.Createon = createdon;
        //    contentreply.Recontentery = recontentery;
        //    return ReSevice.ModifyContentReply(contentreply);
        //}
        public static int ModifyContentReply(ContentReply contentreply)
        {

            return ReSevice.ModifyContentReply(contentreply);
        }


    }
}
