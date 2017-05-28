using Entitys;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

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
                string sql = "insert into tb_goods(goodsName,goodsTypeID,goodsUnitPrice,goodsDescript,goodsImageName,goodsDate) values(?name,?typeID,?unitPrice,?descript,?imageName,now());";
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
                string sql = "update tb_goods set goodsName=?name,goodsTypeID=?typeID,goodsDescript=?descript,goodsUnitPrice=?unitPrice,goodsImageName=?imageName where goodsID=?id;";
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
                string sql = "update tb_goods set goodsName=?name where goodsID=?id;";
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
                string sql = "update tb_goods set goodsTypeID=?typeID where goodsID=?id;";
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
                string sql = "update tb_goods set goodsDescript=?descript where goodsID=?id;";
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
                string sql = "update tb_goods set goodsUnitPrice=?price where goodsID=?id;";
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
                string sql = "update tb_goods set goodsImageName=?imageName where goodsID=?id;";
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
        /// <summary>
        /// 查询商品总数
        /// </summary>
        /// <returns></returns>
        public static int QueryGoodsCount()
        {
            try
            {
                string sql = "select count(*) from tb_goods;";
                int ret = (int)DAL_MysqlHelper.ExecuteScalar(sql);
                return ret;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询所有商品中的第pos到pos+length条记录
        /// </summary>
        /// <param name="pos">起始位置</param>
        /// <param name="length">商品数量</param>
        /// <returns>List<Entitys.Goods></returns>
        public static List<Entitys.Goods> QueryGoodsAt(int pos, int length)
        {
            try
            {
                string sql = "select * from tb_goods limit ?st,?ed;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?st", pos);
                para[1] = new MySqlParameter("?ed", length);
                DataSet ds= DAL_MysqlHelper.ExecuteDataSet(sql,para);
                List<Entitys.Goods> list = new List<Goods>();
                for(int i=0;i<length;i++)
                {
                    Entitys.Goods good = new Goods();
                    good.Id=ds.Tables[0].Rows[i][0].ToString();
                    good.Name = ds.Tables[0].Rows[i][1].ToString();
                    good.TypeID = ds.Tables[0].Rows[i][2].ToString();
                    good.Desctipt = ds.Tables[0].Rows[i][3].ToString();
                    good.UnitPrice = decimal.Parse(ds.Tables[0].Rows[i][4].ToString());
                    good.ImageName = ds.Tables[0].Rows[i][5].ToString();
                    good.SellCount = ds.Tables[0].Rows[i][6].ToString();
                    good.Date = ds.Tables[0].Rows[i][7].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 根据ID查询商品信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static Entitys.Goods QueryGood(string id)
        {
            try
            {
                string sql = "select * from tb_goods where goodsID=?id;";
                MySqlParameter para =  new MySqlParameter("?id", id);
                DataSet ds = DAL_MysqlHelper.ExecuteDataSet(sql, para);
                Entitys.Goods good = new Goods();
                good.Id = ds.Tables[0].Rows[0][0].ToString();
                good.Name = ds.Tables[0].Rows[0][1].ToString();
                good.TypeID = ds.Tables[0].Rows[0][2].ToString();
                good.Desctipt = ds.Tables[0].Rows[0][3].ToString();
                good.UnitPrice = decimal.Parse(ds.Tables[0].Rows[0][4].ToString());
                good.ImageName = ds.Tables[0].Rows[0][5].ToString();
                good.SellCount = ds.Tables[0].Rows[0][6].ToString();
                good.Date = ds.Tables[0].Rows[0][7].ToString();
                return good;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询某类别所有商品
        /// </summary>
        /// <param name="typeID"></param>
        /// <returns></returns>
        public static List<Entitys.Goods> QueryGoods(string typeID)
        {
            try
            {
                string sql = "select * from tb_goods where goodsTypeID=?typeID;";
                MySqlParameter para = new MySqlParameter("?typeID", typeID);
                DataSet ds = DAL_MysqlHelper.ExecuteDataSet(sql, para);
                List<Entitys.Goods> list = new List<Goods>();
                for(int i=0;i<ds.Tables[0].Rows.Count;i++)
                {
                    Entitys.Goods good = new Goods();
                    good.Id = ds.Tables[0].Rows[i][0].ToString();
                    good.Name = ds.Tables[0].Rows[i][1].ToString();
                    good.TypeID = ds.Tables[0].Rows[i][2].ToString();
                    good.Desctipt = ds.Tables[0].Rows[i][3].ToString();
                    good.UnitPrice = decimal.Parse(ds.Tables[0].Rows[i][4].ToString());
                    good.ImageName = ds.Tables[0].Rows[i][5].ToString();
                    good.SellCount = ds.Tables[0].Rows[i][6].ToString();
                    good.Date = ds.Tables[0].Rows[i][7].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch(Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询某类别从pos开始length条商品记录
        /// </summary>
        /// <param name="typeID"></param>
        /// <param name="pos"></param>
        /// <param name="length"></param>
        /// <returns></returns>
        public static List<Entitys.Goods> QueryGoods(string typeID,int pos,int length)
        {
            try
            {
                string sql = "select * from tb_goods limit ?st,?ed;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?st", pos);
                para[1] = new MySqlParameter("?ed", length);
                List<Entitys.Goods> list = new List<Goods>();
                DataSet ds = DAL_MysqlHelper.ExecuteDataSet(sql, para);
                for(int i=0;i<length;i++)
                {
                    Entitys.Goods good = new Goods();
                    good.Id = ds.Tables[0].Rows[i][0].ToString();
                    good.Name = ds.Tables[0].Rows[i][1].ToString();
                    good.TypeID = ds.Tables[0].Rows[i][2].ToString();
                    good.Desctipt = ds.Tables[0].Rows[i][3].ToString();
                    good.UnitPrice = decimal.Parse(ds.Tables[0].Rows[i][4].ToString());
                    good.ImageName = ds.Tables[0].Rows[i][5].ToString();
                    good.SellCount = ds.Tables[0].Rows[i][6].ToString();
                    good.Date = ds.Tables[0].Rows[i][7].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 关键词查询
        /// </summary>
        /// <param name="key">关键词</param>
        /// <param name="part">是否取部分内容（加快查询和传输速度）</param>
        /// <param name="pos">起始位置</param>
        /// <param name="length">记录条数</param>
        /// <returns></returns>
        public static DataSet QueryGoodsKey(string key,bool part=true,int pos=0,int length=0)
        {
            try
            {
                if (part)
                {
                    string sql = "select * from tb_goods where goodsName like ?key limit ?st, ?ed;";
                    MySqlParameter[] para = new MySqlParameter[3];
                    para[0] = new MySqlParameter("?key", "%" + key + "%");
                    para[1] = new MySqlParameter("?st", pos);
                    para[2] = new MySqlParameter("?ed", length);
                    DataSet ds = DAL_MysqlHelper.ExecuteDataSet(sql, para);
                    return ds;
                }
                else
                {
                    string sql = "select * from tb_goods where goodsName like ?key;";
                    MySqlParameter para = new MySqlParameter("?key", "%" + key + "%");
                    DataSet ds = DAL_MysqlHelper.ExecuteDataSet(sql, para);
                    return ds;
                }
            }
            catch(Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询销量降序排列的第pos条记录开始的连续length条记录
        /// </summary>
        /// <param name="pos"></param>
        /// <param name="length"></param>
        /// <returns></returns>
        public static DataSet QueryGoodsSellCountDesc(int pos, int length)
        {
            try
            {
                string sql = "select * from tb_goods order by sellCount limit ?st,?ed;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?st", pos);
                para[1] = new MySqlParameter("?ed", length);
                DataSet ds = DAL_MysqlHelper.ExecuteDataSet(sql, para);
                return ds;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}