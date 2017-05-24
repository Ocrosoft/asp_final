using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data_Access_Layer;
using Entitys;

namespace Business_Logic_Layer
{
    public class BLL_Manage
    {
        /// <summary>
        /// 添加管理员
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns>bool</returns>
        public static bool addManage(string name, string pass)
        {
            return DAL_Manage.AddManage(name, pass);
        }

        /// <summary>
        /// 删除管理员
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool deleteManage(string name)
        {
            return DAL_Manage.DeleteManage(name);

        }

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns></returns>
        public static bool modifyPassword(string name, string pass)
        {
            return DAL_Manage.UpdatePassword(name, pass);
        }

        /// <summary>
        /// 判断管理员账号是否存在（登录用）
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns></returns>
        public static bool queryManagerExits(string name, string pass)
        {
            return DAL_Manage.QueryManagerExits(name, pass);
        }

    }
}