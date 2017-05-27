using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using Entitys;

namespace Data_Access_Layer
{
    public class DAL_GoodsType
    {
        /// <summary>
        /// 添加一个二/三级类别
        /// </summary>
        /// <param name="typeName">TypeName</param>
        /// <param name="level">级别（2或3）</param>
        /// <param name="parentTypeID">ParentTypeID</param>
        /// <returns>bool</returns>
        public static bool AddType(string typeName, int level, string parentTypeID)
        {
            try
            {
                string typeLevel = level == 2 ? "tb_goodstype_second" : "tb_goodstype_third";
                string sql = "insert into " + typeLevel + "(goodsTypeName,goodsParentTypeID) values(?name,?parentTypeID);";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?name", typeName);
                para[1] = new MySqlParameter("?parentTypeID", parentTypeID);
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
        /// 添加一级类别
        /// </summary>
        /// <param name="typeName">TypeName</param>
        /// <returns>bool</returns>
        public static bool AddType(string typeName)
        {
            try
            {
                string sql = "insert into tb_goodstype(goodsTypeName) values(?name);";
                MySqlParameter para = new MySqlParameter("?name", typeName);
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
        /// 删除一个一级类别（需要先删除其二级类别）
        /// </summary>
        /// <param name="typeID">TypeID</param>
        /// <returns>bool</returns>
        public static bool DeleteType(string typeID)
        {
            try
            {
                string sql = "delete from tb_goodstype where goodsTypeID=?typeID;";
                MySqlParameter para = new MySqlParameter("?typeID", typeID);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 删除一个二/三级类别（删除二级类别需要先删除其三级类别）
        /// </summary>
        /// <param name="typeID">TypeID</param>
        /// <param name="level">类别等级（2或3）</param>
        /// <returns>bool</returns>
        public static bool DeleteType(string typeID, int level)
        {
            try
            {
                string sql = "delete from " + (level == 2 ? "tb_goodstype_second" : "tb_goodstype_third") + " where goodsTypeID=?typeID;";
                MySqlParameter para = new MySqlParameter("?typeID", typeID);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 删除二/三级中父类别为指定父类别的所有类别（删除二级类别时，需要先删除这些二级类别对应的所有三级类别）
        /// </summary>
        /// <param name="level">类别等级（2或3）</param>
        /// <param name="parentTypeID">ParentTypeID</param>
        /// <returns>bool</returns>
        public static bool DeleteType(int level, string parentTypeID)
        {
            try
            {
                string sql = "delete from " + (level == 2 ? "tb_goodstype_second" : "tb_goodstype_third") + " where goodsParentTypeID=?typeID;";
                MySqlParameter para = new MySqlParameter("?typeID", parentTypeID);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 修改类别名称
        /// </summary>
        /// <param name="level">类别等级（1,2,3）</param>
        /// <param name="typeID">TypeID</param>
        /// <param name="typeName">TypeName</param>
        /// <returns>bool</returns>
        public static bool UpdateTypeName(int level, string typeID, string typeName)
        {
            try
            {
                string tb_name = "tb_goodstype";
                if (level == 2) tb_name += "_second";
                else if (level == 3) tb_name += "_third";
                string sql = "update " + tb_name + " set goodsTypeName=?typeName where goodsTypeID=?typeID;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?typeName", typeName);
                para[1] = new MySqlParameter("?typeID", typeID);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 修改二/三级类别的父类
        /// </summary>
        /// <param name="level">类别等级（2,3）</param>
        /// <param name="typeID">TypeID</param>
        /// <param name="parentTypeID">ParentTypeID</param>
        /// <returns>bool</returns>
        public static bool UpdateParentTypeID(int level, string typeID, string parentTypeID)
        {
            try
            {
                string tb_name = "tb_goodstype";
                if (level == 2) tb_name += "_second";
                else if (level == 3) tb_name += "_third";
                string sql = "update " + tb_name + " set goodsParentTypeID=?parentTypeID where goodsTypeID=?typeID;";
                MySqlParameter[] para = new MySqlParameter[2];
                para[0] = new MySqlParameter("?parentTypeID", parentTypeID);
                para[1] = new MySqlParameter("?typeID", typeID);
                int ret = DAL_MysqlHelper.ExecuteNonQuery(sql, para);
                if (ret == 1) return true;
                return false;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 根据TypeID查询某级类别详细信息
        /// </summary>
        /// <param name="level">类别等级（1,2,3）</param>
        /// <param name="typeID">TypeID</param>
        /// <returns>GoodsType</returns>
        public static GoodsType QueryTypeName(int level, string typeID)
        {
            try
            {
                string tb_name = "tb_goodstype";
                if (level == 2) tb_name += "_second";
                else if (level == 3) tb_name += "_third";
                string sql = "select * from " + tb_name + " where goodsTypeID=?typeID;";
                MySqlParameter para = new MySqlParameter("?typeID", typeID);
                DataTable dt = DAL_MysqlHelper.ExecuteDataSet(sql, para).Tables[0];
                GoodsType type = new GoodsType();
                type.TypeID = typeID;
                type.TypeLevel = level;
                type.TypeName = dt.Rows[0]["goodsTypeName"].ToString();
                if (level != 1) type.ParentTypeID = dt.Rows[0]["goodsParentTypeID"].ToString();
                return type;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 根据TypeName查询某级类别的详细信息（可能存在0或多个）
        /// </summary>
        /// <param name="level">类别等级（1,2,3）</param>
        /// <param name="typeName">TypeName</param>
        /// <returns>List<GoodsType></returns>
        public static List<GoodsType> QueryTypeID(int level, string typeName)
        {
            try
            {
                string tb_name = "tb_goodstype";
                if (level == 2) tb_name += "_second";
                else if (level == 3) tb_name += "_third";
                string sql = "select * from " + tb_name + " where goodsTypeName=?typeName;";
                MySqlParameter para = new MySqlParameter("?typeName", typeName);
                DataTable dt = DAL_MysqlHelper.ExecuteDataSet(sql, para).Tables[0];
                List<GoodsType> list = new List<GoodsType>();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    GoodsType type = new GoodsType();
                    type.TypeID = dt.Rows[i]["goodsTypeID"].ToString();
                    type.TypeLevel = level;
                    type.TypeName = typeName;
                    if (level != 1) type.ParentTypeID = dt.Rows[i]["goodsParentTypeID"].ToString();
                    list.Add(type);
                }
                return list;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询某级类别的所有子类
        /// </summary>
        /// <param name="level">类别等级（1,2）</param>
        /// <param name="typeID">TypeID</param>
        /// <returns>List<GoodsType></returns>
        public static List<GoodsType> QueryTypesChild(int level, string typeID)
        {
            try
            {
                level++;
                string tb_name = "tb_goodstype";
                if (level == 2) tb_name += "_second";
                else if (level == 3) tb_name += "_third";
                string sql = "select * from " + tb_name + " where goodsParentTypeID=?typeID;";
                MySqlParameter para = new MySqlParameter("?typeID", typeID);
                DataTable dt = DAL_MysqlHelper.ExecuteDataSet(sql, para).Tables[0];
                List<GoodsType> list = new List<GoodsType>();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    GoodsType type = new GoodsType();
                    type.TypeID = dt.Rows[i]["goodsTypeID"].ToString();
                    type.TypeLevel = level;
                    type.TypeName = dt.Rows[i]["goodsTypeName"].ToString();
                    list.Add(type);
                }
                return list;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// 查询某级类别的所有类别
        /// </summary>
        /// <param name="level">类别等级(1,2,3)</param>
        /// <returns></returns>
        public static List<GoodsType> QueryAlltypes(int level)
        {
             try
            {
                string tb_name = "tb_goodstype";
                if (level == 2) tb_name += "_second";
                else if (level == 3) tb_name += "_third";
                string sql = "select * from " + tb_name + ";";
                DataTable dt = DAL_MysqlHelper.ExecuteDataSet(sql).Tables[0];
                List<GoodsType> list = new List<GoodsType>();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    GoodsType type = new GoodsType();
                    type.TypeID = dt.Rows[i]["goodsTypeID"].ToString();
                    type.TypeLevel = level;
                    type.TypeName = dt.Rows[i]["goodsTypeName"].ToString();
                    if (level != 1) type.ParentTypeID = dt.Rows[i]["goodsParentTypeID"].ToString();
                    list.Add(type);
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