using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LBBS.Model;
using LBBS.DAL;

namespace LBBS.BLL
{
    public class MessageManager
    {
      
        public static IList<Message> GetMessageById()
        {
            return MessageService.GetMessageById();
        }
        public static bool InsertMessage(Message message)
        {
            return MessageService.InsertMessage(message) > 0;
        }

    }
}
