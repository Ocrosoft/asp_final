using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data_Access_Layer;
using Entitys;
using System.Text;

namespace Business_Logic_Layer
{
    public class BLL_Safety
    {
        /// <summary>
        /// 使用UTF-8进行Base64解密
        /// </summary>
        /// <param name="result">要解密的字符串</param>
        /// <returns></returns>
        public static string DecodeBase64(string result)
        {
            try
            {
                return DAL_Safety.DecodeBase64(result);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}