using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LBBS.Model
{
    public class ContentReply
    {
        private User user;

        public User User
        {
            get { return user; }
            set { user = value; }
        }
        private int replyid;

        public int Replyid
        {
            get { return replyid; }
            set { replyid = value; }
        }
        private int topicid;

        public int Topicid
        {
            get { return topicid; }
            set { topicid = value; }
        }
        private int userid;

        public int Userid
        {
            get { return userid; }
            set { userid = value; }
        }

        private string recontentery;

        public string Recontentery
        {
            get { return recontentery; }
            set { recontentery = value; }
        }
        private DateTime createon;

        public DateTime Createon
        {
            get { return createon; }
            set { createon = value; }
        }

        private ContentClass contentclass;

        public ContentClass Contentclass
        {
            get { return contentclass; }
            set { contentclass = value; }
        }
        private Content content;

        public Content Content
        {
            get { return content; }
            set { content = value; }
        }

        public ContentReply()
        { }


    }
}
