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
        public static bool AddManage(string name, string pass)
        {
            return DAL_Manage.AddManage(name, pass);
        }

        /// <summary>
        /// 删除管理员
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool DeleteManage(string name)
        {
            return DAL_Manage.DeleteManage(name);

        }

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns></returns>

        public static bool ModifyPassword(string name, string pass)
        {
            return DAL_Manage.UpdatePassword(name, pass);
        }

        /// <summary>
        /// 判断管理员账号是否存在（登录用）
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns></returns>
        public static bool QueryManagerExits(string name, string pass)
        {
            return DAL_Manage.QueryManagerExits(name, pass);
        }

    }
}