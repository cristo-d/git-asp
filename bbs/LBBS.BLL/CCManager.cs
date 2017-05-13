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
    public static class CCManager
    {
        public static ContentClass GetContentclassById(int classid)
        {
            return CCService.GetContentclassById(classid);
        }


        public static int AddContentclass(ContentClass contentclass)
        {
            return CCService.addContentclass(contentclass);
        }


        public static int ModifyContentclass(ContentClass contentclass)
        {
            return CCService.ModifyContentclass(contentclass);
        }


        public static int DeleteContentClass(ContentClass contentclass)
        {
            return CCService.DeleteContentClass(contentclass);
        }

        public static IList<ContentClass> GetAllContentclass()   
        {
            return CCService.GetAllContentclass();
        }



        public static IList<Content> GetContentByClassID(int classid)
        {
            return ContentService.GetContentByClassID(classid);
        }


        public static IList<Content> GetContentByClassID1(int classid)
        {
            return ContentService.GetContentByClassID1(classid);
        }

        public static Content GetContentByTId(int topicid)
        {
            return CCService.GetContentByTId(topicid);
        }




    }



}

