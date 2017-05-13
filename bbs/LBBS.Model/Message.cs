using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LBBS.Model
{
    public class Message
    {
        private User user;
        public User User
        {
            get { return user; }
            set { user = value; }
        }
        private int userid;

        public int Userid
        {
            get { return userid; }
            set { userid = value; }
        }

        private int messageid;
        public int Messageid
        {
            get { return messageid; }
            set { messageid = value; }
        }
        private string messagecontent;
        public string Messagecontent
        {
            get { return messagecontent; }
            set { messagecontent = value; }
        }

        private DateTime createon;

        public DateTime Createon
        {
            get { return createon; }
            set { createon = value; }
        }
        public Message()
        { }
    }
}
