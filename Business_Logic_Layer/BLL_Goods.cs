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
        public static bool  addGoods(string name, string typeID, decimal unitPrice, string descript = "", string imageName = "")
        {
            return DAL_Goods.AddGood(name, typeID, unitPrice, descript, imageName);
                //string name, string typeID, decimal unitPrice, string descript = "", string imageName = ""
        }

        /// <summary>
        /// 删除一个商品
        /// </summary>
        /// <param name="id">ID</param>
        /// <returns>bool</returns>
        public static bool deleteGood(string id)
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
        public static bool modifyGood(Goods goods)
        {
            return DAL_Goods.UpdateGood(goods);
        }

        /// <summary>
        /// 修改商品名称
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool modifyGoodsName(string id, string name)
        {
            return DAL_Goods.UpdateGoodsName(id, name);
        }

        /// <summary>
        /// 修改商品类别
        /// </summary>
        /// <param name="id"></param>
        /// <param name="typeID"></param>
        /// <returns></returns>
        public static bool modifyGoodsType(string id, string typeID)
        {
            return DAL_Goods.UpdateGoodsType(id, typeID);
        }

        /// <summary>
        /// 修改商品描述
        /// </summary>
        /// <param name="id"></param>
        /// <param name="descript"></param>
        /// <returns></returns>
        public static bool modifyGoodsDescript(string id, string descript)
        {
            return DAL_Goods.UpdateGoodsDescript(id, descript);
        }

        /// <summary>
        /// 修改商品单价
        /// </summary>
        /// <param name="id"></param>
        /// <param name="price"></param>
        /// <returns></returns>
        public static bool modifyGoodsUnitPrice(string id, decimal price)
        {
            return DAL_Goods.UpdateGoodsUnitPrice(id, price);
        }

        /// <summary>
        /// 修改商品图片名称
        /// </summary>
        /// <param name="id"></param>
        /// <param name="imageName"></param>
        /// <returns></returns>
        public static bool modifyGoodsImageName(string id, string imageName)
        {
            return DAL_Goods.UpdateGoodsImageName(id, imageName);
        }


    }
}