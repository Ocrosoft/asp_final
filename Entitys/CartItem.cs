using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Entitys
{
    public class CartItem
    {
        string _id;
        int _num;
        /// <summary>
        /// 商品ID
        /// </summary>
        public string Id { get { return _id; } set { _id = value; } }
        /// <summary>
        /// 商品数量
        /// </summary>
        public int Num { get { return _num; }set { _num = value; } }

        public override string ToString()
        {
            return _id + ":" + _num;
        }
        public static  CartItem parse(string s)
        {
            CartItem ret = new CartItem();
            ret._id = s.Split(':')[0];
            ret._num = Int32.Parse(s.Split(':')[1]);
            return ret;
        }
    }
}