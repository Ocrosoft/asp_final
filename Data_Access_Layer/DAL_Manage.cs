using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace Data_Access_Layer
{
    public class DAL_Manage
    {
        /// <summary>
        /// 添加管理员
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns>bool</returns>
        public static bool AddManage(string name,string pass)
        {
            try
            {
                string sql = "insert into tb_manage(managerName,managerPWD) values(?name,?pass);";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?name", name);
                para[1] = new MySqlParameter("?pass", DAL_Safety.GetMD5(pass));
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch(Exception e)
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
                string sql = "delete from tb_manage where managerName=?name;";
                MySqlParameter para = new MySqlParameter("?name", name);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch(Exception e)
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
        public static bool UpdatePassword(string name,string pass)
        {
            try
            {
                string sql = "update tb_manage set managerPWD=?pass where managerName=?name;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?pass", pass);
                para[1] = new MySqlParameter("?name", name);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch(Exception e)
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
        public static bool QueryManagerExits(string name,string pass)
        {
            try
            {
                string sql = "select managerName from tb_manage where managerName=?name and managerPWD=?pass;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?name", name);
                para[1] = new MySqlParameter("?pass", DAL_Safety.GetMD5(pass));
                Object obj = DAL_MysqlHelper.ExecuteScalar(sql, para);
                if (Equals(obj, null)) return false;
                else return true;
            }
            catch(Exception e)
            {
                throw e;
            }
        }

        public static DataSet QueryManagers(int pos,int length)
        {
            try
            {
                string sql = "select managerName from tb_manage limit ?st,?ed;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?st", pos);
                para[1] = new MySqlParameter("?ed", length);
                var ret = DAL_MysqlHelper.ExecuteDataSet(sql, para);
                return ret;
            }
            catch(Exception e)
            {
                throw e;
            }
        }
    }
}