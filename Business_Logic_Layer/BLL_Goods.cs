using Data_Access_Layer;
using Entitys;
using System;
using System.Collections.Generic;
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



    }
}