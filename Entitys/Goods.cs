namespace Entitys
{
    public class Goods
    {
        private string _id;
        private string _name;
        private string _typeID;
        private string _desctipt;
        private decimal _unitPrice;
        private string _imageName;
        private string _sellCount;
        private string _date;
        /// <summary>
        /// 商品ID
        /// </summary>
        public string Id { get { return _id; } set { _id = value; } }
        /// <summary>
        /// 商品名称
        /// </summary>
        public string Name { get { return _name; } set { _name = value; } }
        /// <summary>
        /// 商品三级类别ID
        /// </summary>
        public string TypeID { get { return _typeID; } set { _typeID = value; } }
        /// <summary>
        /// 商品描述
        /// </summary>
        public string Desctipt { get { return _desctipt; } set { _desctipt = value; } }
        /// <summary>
        /// 商品单价，两位小数
        /// </summary>
        public decimal UnitPrice { get { return _unitPrice; } set { _unitPrice = value; } }
        /// <summary>
        /// 商品图片名称
        /// </summary>
        public string ImageName { get { return _imageName; } set { _imageName = value; } }
        /// <summary>
        /// 累计销售
        /// </summary>
        public string SellCount { get { return _sellCount; } set { _sellCount = value; } }
        /// <summary>
        /// 商品添加时间
        /// </summary>
        public string Date { get { return _date; } set { _date = value; } }
    }
}