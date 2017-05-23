using Entitys;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Data_Access_Layer
{
    public class DAL_Goods
    {
        /// <summary>
        /// 添加一个商品
        /// </summary>
        /// <param name="name">Name</param>
        /// <param name="typeID">TypeID</param>
        /// <param name="unitPrice">UnitPrice</param>
        /// <param name="descript">Descript</param>
        /// <param name="imageName">ImageName</param>
        /// <returns>bool</returns>
        public static bool AddGood(string name, string typeID, decimal unitPrice, string descript = "", string imageName = "")
        {
            try
            {
                string sql = "insert into tb_goods(goodsName,goodsTypeID,goodsUnitPrice,goodsDescript,goodsImageName,goodsDate) valuse(?name,?typeID,?unitPrice,?descript,?imageName,getdate());";
                MySqlParameter[] para = new MySqlParameter[5];
                para[0] = new MySqlParameter("?name", name);
                para[1] = new MySqlParameter("?typeID", typeID);
                para[2] = new MySqlParameter("?unitPrice", unitPrice);
                para[3] = new MySqlParameter("?descript", descript);
                para[4] = new MySqlParameter("?imageName", imageName);
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
        /// 删除一个商品
        /// </summary>
        /// <param name="id">ID</param>
        /// <returns>bool</returns>
        public static bool DeleteGood(string id)
        {
            try
            {
                string sql = "delete from tb_goods where goodsID=?id;";
                MySqlParameter para = new MySqlParameter("?id", id);
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
        /// 删除某一类别所有商品
        /// </summary>
        /// <param name="typeID">TypeID</param>
        /// <returns>bool</returns>
        public static bool DeleteGoods(string typeID)
        {
            try
            {
                string sql = "delete from tb_goods where goodsTypeID=?typeID;";
                MySqlParameter para = new MySqlParameter("?typeID", typeID);
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
        /// 一次删除多个商品，中途失败自动回滚（删除大量商品的情况，多次调用DeleteGood需要多次连接数据库）
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        public static bool DeleteGoods(List<string> ids)
        {
            try
            {
                List<String> sqls = new List<string>();
                List<MySqlParameter[]> paras = new List<MySqlParameter[]>();
                foreach (string id in ids)
                {
                    string sql = "delete from tb_goods where goodsID=?id;";
                    MySqlParameter[] para = { new MySqlParameter("?id", id) };
                    sqls.Add(sql);
                    paras.Add(para);
                }
                bool ret = DAL_MysqlHelper.ExecuteNoQueryTran(sqls, paras);
                return ret;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 更新商品信息
        /// </summary>
        /// <param name="goods"></param>
        /// <returns></returns>
        public static bool UpdateGood(Goods goods)
        {
            try
            {
                string sql = "update tb_goods set(goodsName=?name,goodsTypeID=?typeID,goodsDescript=?descript,goodsUnitPrice=?unitPrice,goodsImageName=?imageName) where goodsID=?id;";
                MySqlParameter[] para = new MySqlParameter[6];
                para[0] = new MySqlParameter("?name", goods.Name);
                para[1] = new MySqlParameter("?typeID", goods.TypeID);
                para[2] = new MySqlParameter("?descript", goods.Desctipt);
                para[3] = new MySqlParameter("?unitPrice", goods.UnitPrice);
                para[4] = new MySqlParameter("?imageName", goods.ImageName);
                para[5] = new MySqlParameter("?id", goods.Id);
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
        /// 修改商品名称
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool UpdateGoodsName(string id,string name)
        {
            try
            {
                string sql = "update tb_goods set(goodsName=?name) where goodsID=?id;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?name", name);
                para[1] = new MySqlParameter("?id", id);
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
        /// 修改商品类别
        /// </summary>
        /// <param name="id"></param>
        /// <param name="typeID"></param>
        /// <returns></returns>
        public static bool UpdateGoodsType(string id,string typeID)
        {
            try
            {
                string sql = "update tb_goods set(goodsTypeID=?typeID) where goodsID=?id;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?typeID", typeID);
                para[1] = new MySqlParameter("?id", id);
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
        /// 修改商品描述
        /// </summary>
        /// <param name="id"></param>
        /// <param name="descript"></param>
        /// <returns></returns>
        public static bool UpdateGoodsDescript(string id,string descript)
        {
            try
            {
                string sql = "update tb_goods set(goodsDescript=?descript) where goodsID=?id;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?descript", descript);
                para[1] = new MySqlParameter("?id", id);
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
        /// 修改商品单价
        /// </summary>
        /// <param name="id"></param>
        /// <param name="price"></param>
        /// <returns></returns>
        public static bool UpdateGoodsUnitPrice(string id,decimal price)
        {
            try
            {
                string sql = "update tb_goods set(goodsUnitPrice=?price) where goodsID=?id;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?price", price);
                para[1] = new MySqlParameter("?id", id);
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
        /// 修改商品图片名称
        /// </summary>
        /// <param name="id"></param>
        /// <param name="imageName"></param>
        /// <returns></returns>
        public static bool UpdateGoodsImageName(string id,string imageName)
        {
            try
            {
                string sql = "update tb_goods set(goodsImageName=?imageName) where goodsID=?id;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?imageName", imageName);
                para[1] = new MySqlParameter("?id", id);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                else return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}