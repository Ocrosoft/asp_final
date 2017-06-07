using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Entitys;
using MySql.Data.MySqlClient;

namespace Data_Access_Layer
{
    public class DAL_Order
    {
        /// <summary>
        /// 添加订单
        /// </summary>
        /// <param name="name"></param>
        /// <param name="goods"></param>
        /// <param name="gcnt"></param>
        /// <returns></returns>
        public static bool AddOrder(string name,List<Goods> goods,List<int> gcnt)
        {
            try
            {
                if (goods.Count != gcnt.Count) return false;
                decimal totalPrice = 0.0M;
                for(int i=0;i<goods.Count;i++)
                    totalPrice += goods.ElementAt(i).UnitPrice * gcnt.ElementAt(i);

                string sql = "insert into tb_order(customerName,totalMoney,orderDate) values(?name,?money,now());";
                MySqlParameter[] para = { new MySqlParameter("?name", name), new MySqlParameter("?money", totalPrice) };
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1)
                {
                    return AddOrderDetail(name, goods, gcnt);
                }
                else return false;
            }
            catch(Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 添加订单详细信息
        /// </summary>
        /// <param name="name"></param>
        /// <param name="goods"></param>
        /// <param name="gcnt"></param>
        /// <returns></returns>
        public static bool AddOrderDetail(string name, List<Goods> goods, List<int> gcnt)
        {
            try
            {
                string sql = "select orderID from tb_order where customerName=?name order by orderDate limit 0,1;";
                MySqlParameter para = new MySqlParameter("?name", name);
                string id = DAL_MysqlHelper.ExecuteDataSet(sql, para).Tables[0].Rows[0][0].ToString();
                List<string> sqls = new List<string>();
                List<MySqlParameter[]> paras = new List<MySqlParameter[]>();
                for(int i=0;i<goods.Count;i++)
                {
                    var _goods = goods.ElementAt(i);
                    string _sql = "insert into tb_orderdetail values(?orderID,?goodsID,?count);";
                    MySqlParameter[] _para = { new MySqlParameter("?orderID", id), new MySqlParameter("?goodsID", _goods.Id), new MySqlParameter("?count", gcnt.ElementAt(i)) };
                    sqls.Add(_sql);
                    paras.Add(_para);
                }
                bool ret = DAL_MysqlHelper.ExecuteNoQueryTran(sqls, paras);
                return ret;
            }
            catch(Exception e)
            {
                throw e;
            }
        }
    }
}