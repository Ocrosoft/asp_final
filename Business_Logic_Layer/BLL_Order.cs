using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Entitys;

namespace Business_Logic_Layer
{
    public class BLL_Order
    {
        /// <summary>
        /// 添加订单
        /// </summary>
        /// <param name="name"></param>
        /// <param name="goods"></param>
        /// <param name="gcnt"></param>
        /// <returns></returns>
        public static bool AddOrder(string name, List<Goods> goods, List<int> gcnt)
        {
            try
            {
                return Data_Access_Layer.DAL_Order.AddOrder(name, goods, gcnt);
            }
            catch(Exception e)
            {
                throw e;
            }
        }
    }
}