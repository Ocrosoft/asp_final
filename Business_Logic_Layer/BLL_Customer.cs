using Data_Access_Layer;
using Entitys;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Business_Logic_Layer
{
    public class BLL_Customer
    {
        /// <summary>
        /// 用户注册
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="pass">Pass</param>
        /// <param name="question">Question</param>
        /// <param name="answer">Answer</param>
        /// <returns>bool</returns>
        public static bool Register(Customer customer)
        {
            try
            {
                return DAL_Customer.AddCustomer(customer.Name, customer.Pass, customer.Question, customer.Answer);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 用户注册判断用户是否存在
        /// </summary>
        /// <param name="name">Name</param>
        /// <returns>bool</returns>
        public static bool QueryCustomerExits(string name)
        {
            try
            {
                return DAL_Customer.QueryCustomerExists(name);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 用户登录
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="password">密码</param>
        /// <returns></returns>
        public static bool Login(String username, String password)
        {
            try
            {
                return DAL_Customer.QueryCustomerExists(username, password);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 用户删除
        /// </summary>
        /// <param name="name">用户姓名</param>
        /// <returns></returns>
        public static bool DeleteByName(String name)
        {
            try
            {
                return DAL_Customer.DeleteCustomer(name);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 修改用户密码
        /// </summary>
        /// <param name="username">用户姓名</param>
        /// <param name="password">用户密码</param>
        /// <returns></returns>
        public static bool ModifyPassword(String username, String password)
        {
            try
            {
                return DAL_Customer.UpdatePassword(username, password);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 修改收货信息
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="trueName">TrueName</param>
        /// <param name="address">Address</param>
        /// <param name="postCode">PostCode</param>
        /// <returns>bool</returns>
        public static bool ModifyPostInfo(string name, string trueName, string address, string postCode)
        {
            try
            {
                return DAL_Customer.UpdatePostInfo(name, trueName, address, postCode);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 修改个人信息
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="birthday">Birthday</param>
        /// <param name="phone">Phone</param>
        /// <param name="email">Email</param>
        /// <returns>bool</returns>
        public static bool ModifyPersonalInfo(string name, string birthday, string phone, string email)
        {
            try
            {
                return DAL_Customer.UpdatePersonalInfo(name, birthday, phone, email);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// 修改密保问题
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="question">Question</param>
        /// <param name="answer">Answer</param>
        /// <returns>bool</returns>
        public static bool ModifyQuestion(string name, string question, string answer)
        {
            try
            {
                return DAL_Customer.UpdateQuestion(name, question, answer);
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
                return DAL_Customer.QueryCustomerPostInfo(name);
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
                return DAL_Customer.QueryCustomerPersonalInfo(name);
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
                return DAL_Customer.QueryAllCustomer();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}