using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LBBS.Model
{
    public class User
    {
        public User()
        { }
        private int userid;

        public int Userid
        {
            get { return userid; }
            set { userid = value; }
        }


        private string username;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }

        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string headurl;

        public string Headurl
        {
            get { return headurl; }
            set { headurl = value; }
        }
        private int topiccount;

        public int Topiccount
        {
            get { return topiccount; }
            set { topiccount = value; }
        }
        private int replycount;

        public int Replycount
        {
            get { return replycount; }
            set { replycount = value; }
        }
        private Boolean enabled;

        public Boolean Enabled
        {
            get { return enabled; }
            set { enabled = value; }
        }
        private DateTime createdOn;

        public DateTime CreatedOn
        {
            get { return createdOn; }
            set { createdOn = value; }
        }

        private string nickname;
        public string Nickname
        {
            get { return nickname; }
            set { nickname = value; }
        }



        private string Sex;

        public string sex
        {
            get { return Sex; }
            set { Sex = value; }
        }


    }
}
