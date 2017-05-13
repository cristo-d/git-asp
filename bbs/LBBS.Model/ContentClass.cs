using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LBBS.Model
{
    public class ContentClass
    {
        private int classid;

        public int Classid
        {
            get { return classid; }
            set { classid = value; }
        }
        private string classname;

        public string Classname
        {
            get { return classname; }
            set { classname = value; }
        }
        private int topiccount;

        public int Topiccount
        {
            get { return topiccount; }
            set { topiccount = value; }
        }
        private string classurl;

        public string Classurl
        {
            get { return classurl; }
            set { classurl = value; }
        }

        private bool enable;

        public bool Enable
        {
            get { return enable; }
            set { enable = value; }
        }

    }
}
