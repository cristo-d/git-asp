using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LBBS.Model;
using LBBS.DAL;

namespace LBBS.BLL
{
    public static partial class UserManager
    {
        public static User GetUserByName(string username)
        {
            return UserService.GetUserByName(username);
        }
//发帖页使用该方法绑定数据源
        public static User GetUserById1(int userid)
        {
            return UserService.GetUserById1(userid);
        }
       
        //注册页使用该方法添加用户
        public static int addUser(User user)
        {
            return UserService.adduser(user);
        }


        public static IList<User> GetAllUser()
        {
            return UserService.GetAllUser();
        }

        public static int ModifyUser(User user)
        {
            return UserService.MoifyUser(user);
        }

        public static int DeleteUser(User user)
        {
            return UserService.DeleteUser(user);

        }





    }




}
