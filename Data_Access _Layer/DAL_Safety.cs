using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Data_Access_Layer
{
    public class DAL_Safety
    {
        /// <summary>
        /// 获取字符串的大写MD5
        /// </summary>
        /// <param name="source">待计算MD5的字符串</param>
        /// <returns></returns>
        public static string GetMD5(string source)
        {
            try
            {
                byte[] result = Encoding.Default.GetBytes(source);
                MD5 md5 = new MD5CryptoServiceProvider();
                byte[] output = md5.ComputeHash(result);
                return BitConverter.ToString(output).Replace("-", "").ToUpper();
            }
            catch(Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 使用指定编码进行Base64加密
        /// </summary>
        /// <param name="encode">编码</param>
        /// <param name="source">要加密的字符串</param>
        /// <returns></returns>
        public static string EncodeBase64(Encoding encode,string source)
        {
            try
            {
                byte[] bytes = encode.GetBytes(source);
                source = Convert.ToBase64String(bytes);
                return source;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 使用UTF-8编码进行Base64加密
        /// </summary>
        /// <param name="source">要加密的字符串</param>
        /// <returns></returns>
        public static string EncodeBase64(string source)
        {
            try
            {
                return EncodeBase64(Encoding.UTF8, source);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 使用指定编码进行Base64解密
        /// </summary>
        /// <param name="encode">编码</param>
        /// <param name="result">要解密的字符串</param>
        /// <returns></returns>
        public static string DecodeBase64(Encoding encode, string result)
        {
            try
            {
                byte[] bytes = Convert.FromBase64String(result);
                result = encode.GetString(bytes);
                return result;
            }
            catch(Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 使用UTF-8进行Base64解密
        /// </summary>
        /// <param name="result">要解密的字符串</param>
        /// <returns></returns>
        public static string DecodeBase64(string result)
        {
            try
            {
                return DecodeBase64(Encoding.UTF8, result);
            }
            catch(Exception e)
            {
                throw e;
            }
        }
    }
}