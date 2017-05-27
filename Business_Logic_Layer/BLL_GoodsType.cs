using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Data_Access_Layer;
using Entitys;

namespace Business_Logic_Layer
{
    public class BLL_GoodsType
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
            return DAL_GoodsType.AddType(typeName, level, parentTypeID);
        }

        /// <summary>
        /// 添加一级类别
        /// </summary>
        /// <param name="typeName">TypeName</param>
        /// <returns>bool</returns>
        public static bool AddType(string typeName)
        {
            return DAL_GoodsType.AddType(typeName);
        }

        /// <summary>
        /// 删除一个一级类别（需要先删除其二级类别）
        /// </summary>
        /// <param name="typeID">TypeID</param>
        /// <returns>bool</returns>
        public static bool DeleteType(string typeID)
        {
            return DAL_GoodsType.DeleteType(typeID);
        }

        /// <summary>
        /// 删除一个二/三级类别（删除二级类别需要先删除其三级类别）
        /// </summary>
        /// <param name="typeID">TypeID</param>
        /// <param name="level">类别等级（2或3）</param>
        /// <returns>bool</returns>
        public static bool DeleteType(string typeID, int level)
        {
            return DAL_GoodsType.DeleteType(typeID, level);
        }

        /// <summary>
        /// 删除二/三级中父类别为指定父类别的所有类别（删除二级类别时，需要先删除这些二级类别对应的所有三级类别）
        /// </summary>
        /// <param name="level">类别等级（2或3）</param>
        /// <param name="parentTypeID">ParentTypeID</param>
        /// <returns>bool</returns>
        public static bool DeleteType(int level, string parentTypeID)
        {
            return DAL_GoodsType.DeleteType(level, parentTypeID);
        }

        /// <summary>
        /// 修改类别名称
        /// </summary>
        /// <param name="level">类别等级（1,2,3）</param>
        /// <param name="typeID">TypeID</param>
        /// <param name="typeName">TypeName</param>
        /// <returns>bool</returns>
        public static bool ModifyTypeName(int level, string typeID, string typeName)
        {
            return DAL_GoodsType.UpdateTypeName(level, typeID, typeName);
        }

        /// <summary>
        /// 修改二/三级类别的父类
        /// </summary>
        /// <param name="level">类别等级（2,3）</param>
        /// <param name="typeID">TypeID</param>
        /// <param name="parentTypeID">ParentTypeID</param>
        /// <returns>bool</returns>
        public static bool ModifyParentTypeID(int level, string typeID, string parentTypeID)
        {
            return DAL_GoodsType.UpdateParentTypeID(level, typeID, parentTypeID);
        }

        /// <summary>
        /// 根据TypeID查询某级类别详细信息
        /// </summary>
        /// <param name="level">类别等级（1,2,3）</param>
        /// <param name="typeID">TypeID</param>
        /// <returns>GoodsType</returns>
        public static GoodsType QueryTypeName(int level, string typeID)
        {
            return DAL_GoodsType.QueryTypeName(level, typeID);
        }

        /// <summary>
        /// 根据TypeName查询某级类别的详细信息（可能存在0或多个）
        /// </summary>
        /// <param name="level">类别等级（1,2,3）</param>
        /// <param name="typeName">TypeName</param>
        /// <returns>List</returns>
        public static List<GoodsType> QueryTypeID(int level, string typeName)
        {
            return DAL_GoodsType.QueryTypeID(level, typeName);
        }

        /// <summary>
        /// 查询某级类别的所有子类
        /// </summary>
        /// <param name="level">类别等级（1,2）</param>
        /// <param name="typeID">TypeID</param>
        /// <returns>List</returns>
        public static List<GoodsType> QueryTypesChild(int level, string typeID)
        {
            return DAL_GoodsType.QueryTypesChild(level, typeID);
        }
        /// <summary>
        /// 查询某级类别的所有类别
        /// </summary>
        /// <param name="level">类别等级(1,2,3)</param>
        /// <returns></returns>
        public static List<GoodsType> QueryAllTypes(int level)
        {
            return DAL_GoodsType.QueryAlltypes(level);
        }
    }
}