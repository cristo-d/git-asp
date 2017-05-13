using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LBBS.Model
{
    public class Content
    {
        private User user;

        public User User
        {
            get { return user; }
            set { user = value; }
        }
        private int topicid;

        public int Topicid
        {
            get { return topicid; }
            set { topicid = value; }
        }
        private int classid;

        public int Classid
        {
            get { return classid; }
            set { classid = value; }
        }
        private int userid;

        public int Userid
        {
            get { return userid; }
            set { userid = value; }
        }
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }
        private string contentery;

        public string Contentery
        {
            get { return contentery; }
            set { contentery = value; }
        }
        private ContentClass contentclass;

        public ContentClass Contentclass
        {
            get { return contentclass; }
            set { contentclass = value; }
        }
        private int replycount;

        public int Replycount
        {
            get { return replycount; }
            set { replycount = value; }
        }
        private string isclose;

        public string Isclose
        {
            get { return isclose; }
            set { isclose = value; }
        }
        private DateTime createdon;

        public DateTime Createdon
        {
            get { return createdon; }
            set { createdon = value; }
        }
        private DateTime repliedon;

        public DateTime Repliedon
        {
            get { return repliedon; }
            set { repliedon = value; }
        }

        private ContentReply contentreply;

        public ContentReply Contentreply
        {
            get { return contentreply; }
            set { contentreply = value; }
        }




        public Content()
        { }


    }
}
