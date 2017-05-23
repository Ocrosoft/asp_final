namespace Entitys
{
    public class GoodsType
    {
        private string _typeID;
        private string _typeName;
        private int _typeLevel;
        private string _parentTypeID;

        /// <summary>
        /// 商品类别ID
        /// </summary>
        public string TypeID { get { return _typeID; } set { _typeID = value; } }
        /// <summary>
        /// 商品类别名称
        /// </summary>
        public string TypeName { get { return _typeName; } set { _typeName = value; } }
        /// <summary>
        /// 类别等级（一级包含二级，二级包含三级）
        /// </summary>
        public int TypeLevel { get { return _typeLevel; } set { _typeLevel = value; } }
        /// <summary>
        /// 上级类别ID
        /// </summary>
        public string ParentTypeID { get { return _parentTypeID; } set { _parentTypeID = value; } }
    }
}