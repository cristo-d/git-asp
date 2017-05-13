using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using LBBS.Model;

namespace LBBS.DAL
{
   public static class MessageService
    {
       
        public static IList<Message>  GetMessageById()
        {
            string sqlAll = "select top 6 * from Message order by Messageid desc  ";
            List<Message> list = new List<Message>();
            using (SqlDataReader reader =  DBHelper.GetReader(sqlAll))
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Message message = new Message();
                        message.Messageid = reader.GetInt32(0);
                        message.Messagecontent = reader.GetString(1);
                        list.Add(message);
                    }
                }
            }
            return list;
        }

        public static int InsertMessage(Message message)
        {
            String sql = "insert into Message (Messagecontent,UserID,CreateOn)" + "values(@Messagecontent,@UserID,@CreateOn)";
            SqlParameter[] paras = new SqlParameter[] {
                new SqlParameter("@Messagecontent",message.Messagecontent),
                new SqlParameter("@UserID",message.User.Userid),
               new SqlParameter("@CreateOn",message.Createon),
            };
            int count = DBHelper.ExecuteCommand(sql, paras);
            return count;

        }
        
    }

}
