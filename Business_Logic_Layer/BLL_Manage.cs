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
            try
            {
                return DAL_Manage.AddManage(name, pass);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 删除管理员
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool DeleteManage(string name)
        {
            try
            {
                return DAL_Manage.DeleteManage(name);
            }
            catch (Exception e)
            {
                throw e;
            }

        }

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns></returns>

        public static bool ModifyPassword(string name, string pass)
        {
            try
            {
                return DAL_Manage.UpdatePassword(name, pass);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 判断管理员账号是否存在（登录用）
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns></returns>
        public static bool QueryManagerExits(string name, string pass)
        {
            try
            {
                return DAL_Manage.QueryManagerExits(name, pass);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}