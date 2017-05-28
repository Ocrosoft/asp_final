using Data_Access_Layer;
using Entitys;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Business_Logic_Layer
{
    public class BLL_Goods
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
        public static bool  AddGoods(string name, string typeID, decimal unitPrice, string descript = "", string imageName = "")
        {
            return DAL_Goods.AddGood(name, typeID, unitPrice, descript, imageName);
                //string name, string typeID, decimal unitPrice, string descript = "", string imageName = ""
        }

        /// <summary>
        /// 删除一个商品
        /// </summary>
        /// <param name="id">ID</param>
        /// <returns>bool</returns>
        public static bool DeleteGood(string id)
        {
            return DAL_Goods.DeleteGood(id);
        }

        /// <summary>
        /// 删除某一类别所有商品
        /// </summary>
        /// <param name="typeID">TypeID</param>
        /// <returns>bool</returns>
        public static bool deleteGoods(string typeID)
        {
            return DAL_Goods.DeleteGoods(typeID);
        }

        /// <summary>
        /// 修改商品信息
        /// </summary>
        /// <param name="goods"></param>
        /// <returns></returns>
        public static bool ModifyGood(Goods goods)
        {
            return DAL_Goods.UpdateGood(goods);
        }

        /// <summary>
        /// 修改商品名称
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool ModifyGoodsName(string id, string name)
        {
            return DAL_Goods.UpdateGoodsName(id, name);
        }

        /// <summary>
        /// 修改商品类别
        /// </summary>
        /// <param name="id"></param>
        /// <param name="typeID"></param>
        /// <returns></returns>
        public static bool ModifyGoodsType(string id, string typeID)
        {
            return DAL_Goods.UpdateGoodsType(id, typeID);
        }

        /// <summary>
        /// 修改商品描述
        /// </summary>
        /// <param name="id"></param>
        /// <param name="descript"></param>
        /// <returns></returns>
        public static bool ModifyGoodsDescript(string id, string descript)
        {
            return DAL_Goods.UpdateGoodsDescript(id, descript);
        }

        /// <summary>
        /// 修改商品单价
        /// </summary>
        /// <param name="id"></param>
        /// <param name="price"></param>
        /// <returns></returns>
        public static bool ModifyGoodsUnitPrice(string id, decimal price)
        {
            return DAL_Goods.UpdateGoodsUnitPrice(id, price);
        }

        /// <summary>
        /// 修改商品图片名称
        /// </summary>
        /// <param name="id"></param>
        /// <param name="imageName"></param>
        /// <returns></returns>
        public static bool ModifyGoodsImageName(string id, string imageName)
        {
            return DAL_Goods.UpdateGoodsImageName(id, imageName);
        }

        /// <summary>
        /// 查询商品总数
        /// </summary>
        /// <returns></returns>
        public static int QueryGoodsCount()
        {
            return DAL_Goods.QueryGoodsCount();
        }

        /// <summary>
        /// 查询所有商品中的第pos到pos+length条记录
        /// </summary>
        /// <param name="pos">起始位置</param>
        /// <param name="length">商品数量</param>
        /// <returns>List<Entitys.Goods></returns>
        public List<Goods> QueryGoodsAt(int pos, int length)
        {
            return DAL_Goods.QueryGoodsAt(pos, length);
        }

        /// <summary>
        /// 根据ID查询商品信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static Goods QueryGood(string id)
        {
            return DAL_Goods.QueryGood(id);
        }

        /// <summary>
        /// 查询某类别所有商品
        /// </summary>
        /// <param name="typeID"></param>
        /// <returns></returns>
        public static List<Goods> QueryGoods(string typeID)
        {
            return DAL_Goods.QueryGoods(typeID);
        }

        /// <summary>
        /// 查询某类别从pos开始length条商品记录
        /// </summary>
        /// <param name="typeID"></param>
        /// <param name="pos"></param>
        /// <param name="length"></param>
        /// <returns></returns>
        public static List<Goods> QueryGoods(string typeID, int pos, int length)
        {
            return DAL_Goods.QueryGoods(typeID, pos, length);
        }

        public static DataSet QueryGoodsKeyDataSet(string key, bool part = true, int pos = 0, int length = 0)
        {
            try
            {
                return DAL_Goods.QueryGoodsKey(key, part, pos, length);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public static List<Entitys.Goods> QueryGoodsKeyList(string key, bool part = true, int pos = 0, int length = 0)
        {
            try
            {
                DataSet ds = DAL_Goods.QueryGoodsKey(key, part, pos, length);
                List<Goods> list = new List<Goods>();
                for(int i=0;i<ds.Tables[0].Rows.Count;i++)
                {
                    var row = ds.Tables[0].Rows[i];
                    Entitys.Goods good = new Goods();
                    good.Id = row[0].ToString();
                    good.Name = row[1].ToString();
                    good.TypeID = row[2].ToString();
                    good.Desctipt = row[3].ToString();
                    good.UnitPrice = decimal.Parse(row[4].ToString());
                    good.ImageName = row[5].ToString();
                    good.SellCount = row[6].ToString();
                    good.Date = row[7].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}