using Business_Logic_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Interface_Layer.ajax
{
    public partial class search_spjx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            try
            {
                string key = Request.QueryString["key"]; // 关键词
                string typeLevel = Request.QueryString["level"]; // 类别等级
                string typeID = Request.QueryString["type"]; // 类别
                string typeName =  Request.QueryString["typeName"]; // 类别名称
                Response.StatusCode = 200;
                typeName = HttpUtility.UrlEncode(typeName);
                typeName = HttpUtility.UrlDecode(typeName, System.Text.Encoding.GetEncoding("utf-8"));
                if (typeID == null || typeID == "") typeID = BLL_GoodsType.QueryTypeID(3, typeName).ElementAt(0).TypeID;
                var list = BLL_Goods.QueryGoods(typeID); /// ！商品量大不能直接获取所有商品，需要先生成随机数，再query取商品！
                Random rd = new Random();
                for (int i = 0; i < 7; i++)
                {
                    int pos = rd.Next(0, list.Count() - 1);
                    Response.Write("<li>");
                    Response.Write("<div class=\"p-img\">");
                    Response.Write("<a target=\"_blank\" href=\"#\">");
                    Response.Write("<img width=\"160\" height=\"160\" src=\""+list.ElementAt(pos).ImageName+"\" class=\"err-product\">");
                    Response.Write("</a>");
                    Response.Write("</div>");
                    Response.Write("<div class=\"p-price\">");
                    Response.Write("<strong class=\"J_11243404989\" data-adv=\"1\"><em>¥</em><i>"+list.ElementAt(pos).UnitPrice+"</i></strong>");
                    Response.Write("</div>");
                    Response.Write("<div class=\"p-name\">");
                    Response.Write("<a target=\"_blank\" href=\"#\">");
                    Response.Write("<em>" + (key != null && key != ""? (list.ElementAt(pos).Name.Replace(key, "<font class=\"skcolor_ljg\">" + key + "</font>")) : (list.ElementAt(pos).Name)) + "</em>");
                    Response.Write("</a>");
                    Response.Write("</div>");
                    Response.Write("<div class=\"p-comm\" style=\"padding: 8px 10px 0\">已有<span style=\"color: #005aa0\">?</span>人评价</div>");
                    Response.Write("</li>");
                }
            }
            catch (Exception ex)
            {
                Response.StatusCode = 500;
                Response.Write(ex.Message);
            }
            finally
            {
                Response.End();
            }
        }
    }
}