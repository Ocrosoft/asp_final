using Entitys;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;

namespace Data_Access_Layer
{
    public class DAL_Customer
    {
        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="pass">Pass</param>
        /// <param name="question">Question</param>
        /// <param name="answer">Answer</param>
        /// <returns>bool</returns>
        public static bool AddCustomer(string name, string pass, string question, string answer)
        {
            try
            {
                string sql = "insert into tb_customer(customerName,customerPass,customerRegDate,customerQuestion,customerAnswer) values(?name,?pass,now(),?question,?answer);";
                MySqlParameter[] para = new MySqlParameter[4];
                para[0] = new MySqlParameter("?name", name);
                para[1] = new MySqlParameter("?pass", DAL_Safety.GetMD5(pass));
                para[2] = new MySqlParameter("?question", question);
                para[3] = new MySqlParameter("?answer", DAL_Safety.EncodeBase64(answer));
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 删除用户
        /// </summary>
        /// <param name="name">Name</param>
        /// <returns>bool</returns>
        public static bool DeleteCustomer(string name)
        {
            try
            {
                string sql = "delete from tb_customer where customerName=?name;";
                MySqlParameter para = new MySqlParameter("?name", name);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="pass">Pass（新）</param>
        /// <returns>bool</returns>
        public static bool UpdatePassword(string name, string pass)
        {
            try
            {
                string sql = "update tb_customer set customerPass=?pass where customerName=?name;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?pass", DAL_Safety.GetMD5(pass));
                para[1] = new MySqlParameter("?name", name);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 更新收货信息
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="trueName">TrueName</param>
        /// <param name="address">Address</param>
        /// <param name="postCode">PostCode</param>
        /// <returns>bool</returns>
        public static bool UpdatePostInfo(string name, string trueName, string address, string postCode)
        {
            try
            {
                string sql = "update tb_customer set customerTrueName=?trueName,customerAddress=?address,customerPostCode=?postCode where customerName=?name;";
                MySqlParameter[] para = new MySqlParameter[4];
                para[0] = new MySqlParameter("?trueName", trueName);
                para[1] = new MySqlParameter("?address", address);
                para[2] = new MySqlParameter("?postCode", postCode);
                para[3] = new MySqlParameter("?name", name);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 更新个人信息
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="birthday">Birthday</param>
        /// <param name="phone">Phone</param>
        /// <param name="email">Email</param>
        /// <returns>bool</returns>
        public static bool UpdatePersonalInfo(string name, string birthday, string phone, string email)
        {
            try
            {
                string sql = "update tb_customer set "+(birthday==""?"": "customerBirthday=?birthday,") + "customerPhone=?phone,customerEmail=?email where customerName=?name;";
                List<MySqlParameter> paras = new List<MySqlParameter>();
                if (birthday != "") paras.Add(new MySqlParameter("?birthday", birthday));
                paras.Add(new MySqlParameter("?phone", phone));
                paras.Add(new MySqlParameter("?email", email));
                paras.Add(new MySqlParameter("?name", name));
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, paras.ToArray());
                if (ret == 1) return true;
                else return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 更新密保问题
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="question">Question</param>
        /// <param name="answer">Answer</param>
        /// <returns>bool</returns>
        public static bool UpdateQuestion(string name, string question, string answer)
        {
            try
            {
                string sql = "update tb_customer set customerQuestion=?question,customerAnswer=?answer where customerName=?name;";
                MySqlParameter[] para = new MySqlParameter[3];
                para[0] = new MySqlParameter("?question", question);
                para[1] = new MySqlParameter("?answer", DAL_Safety.EncodeBase64(answer));
                para[2] = new MySqlParameter("?name", name);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询用户是否存在（登录用）
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="pass">Pass</param>
        /// <returns>bool</returns>
        public static bool QueryCustomerExists(string name, string pass)
        {
            try
            {
                string sql = "select customerName from tb_customer where customerName=?name and customerPass=?pass;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?name", name);
                para[1] = new MySqlParameter("?pass", DAL_Safety.GetMD5(pass));
                Object obj = DAL_MysqlHelper.ExecuteScalar(sql, para);
                if (Equals(obj, null)) return false;
                else return true;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 判断用户是否存在（注册用）
        /// </summary>
        /// <param name="name">Name</param>
        /// <returns>bool</returns>
        public static bool QueryCustomerExists(string name)
        {
            try
            {
                string sql = "select customerName from tb_customer where customerName=?name;";
                MySqlParameter para = new MySqlParameter("?name", name);
                Object obj = DAL_MysqlHelper.ExecuteScalar(sql, para);
                if (Equals(obj, null)) return false;
                else return true;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询一个用户的收货信息
        /// </summary>
        /// <param name="name">Name</param>
        /// <returns>Customer 或 null</returns>
        public static Customer QueryCustomerPostInfo(string name)
        {
            try
            {
                string sql = "select customerTrueName,customerAddress,customerPostCode from tb_customer where customerName=?name;";
                MySqlParameter para = new MySqlParameter("?name", name);
                DataTable dataTable = DAL_MysqlHelper.ExecuteDataSet(sql, para).Tables[0];
                if (dataTable == null) return null;
                Customer customer = new Customer();
                customer.TrueName = dataTable.Rows[0]["customerTrueName"].ToString();
                customer.Address = dataTable.Rows[0]["customerAddress"].ToString();
                customer.PostCode = dataTable.Rows[0]["customerPostCode"].ToString();
                return customer;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询一个用户的个人信息
        /// </summary>
        /// <param name="name">Name</param>
        /// <returns>Customer 或 null</returns>
        public static Customer QueryCustomerPersonalInfo(string name)
        {
            try
            {
                string sql = "select customerBirthday,customerPhone,customerEmail from tb_customer where customerName=?name;";
                MySqlParameter para = new MySqlParameter("?name", name);
                DataTable dataTable = DAL_MysqlHelper.ExecuteDataSet(sql, para).Tables[0];
                if (dataTable == null) return null;
                Customer customer = new Customer();
                customer.Birthday = dataTable.Rows[0]["customerBirthday"].ToString();
                customer.Phone = dataTable.Rows[0]["customerPhone"].ToString();
                customer.Email = dataTable.Rows[0]["customerEmail"].ToString();
                return customer;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 判断用户输入的密保问题是否正确
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="answer">Answer（输入的答案）</param>
        /// <returns>bool</returns>
        public static bool QueryCustomerQuestionAnswerMathch(string name, string answer)
        {
            try
            {
                string sql = "select customerName from tb_customer where customerName=?name and customerAnswer=?answer;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?name", name);
                para[1] = new MySqlParameter("?answer", DAL_Safety.EncodeBase64(answer));
                Object obj = DAL_MysqlHelper.ExecuteScalar(sql, para);
                if (Equals(obj, null)) return false;
                else return true;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询所有用户收货信息与个人信息（管理功能）
        /// </summary>
        /// <returns>DataSet 或 null</returns>
        public static DataSet QueryAllCustomer()
        {
            try
            {
                string sql = "select customerName,customerTrueName,customerAddress,customerPostCode,customerBirthday,customerPhone,customerEmail from tb_customer;";
                DataSet ds = DAL_MysqlHelper.ExecuteDataSet(sql);
                return ds;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}