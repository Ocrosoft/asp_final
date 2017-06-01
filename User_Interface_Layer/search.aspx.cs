using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                ttbar_login_server.Text = "欢迎，<a style='color:red;'>" + Session["name"].ToString() + "</a>";
            }

            string key = Request.QueryString["key"]; // 关键词
            string typeLevel = Request.QueryString["level"]; // 类别等级
            string typeID = Request.QueryString["type"]; // 类别
            string typeName = Request.QueryString["typeName"]; // 类别名称
            string price_u = Request.QueryString["priceu"], price_t = Request.QueryString["pricet"]; // 价格区间
            string page = Request.QueryString["page"]; // 页数

            if(IsNullorEmpty(key)&&IsNullorEmpty(typeID)&&IsNullorEmpty(typeName)&&IsNullorEmpty(typeName))
            {
                J_searchWrap.InnerHtml = "<div class=\"notice-search\"><div class=\"ns-wrap clearfix info\"><span class=\"ns-icon\"></span><div class=\"ns-content\"><span>抱歉，没有找到与“<em></em>”相关的商品</span></div></div></div>";
                return;
            }

            try
            {
                if (key != null && key != "") server_qbjg.Text = key;
                else if (typeID != null && typeID != "")
                    server_qbjg.Text = BLL_GoodsType.QueryTypeName(3, typeID).TypeName;
                else if (typeName != null && typeName != "") server_qbjg.Text = typeName;
                 int pos = 0;
                if (page != null && page != "")
                {
                    int _page = Convert.ToInt32(page);
                    pos = (_page - 1) * 20;
                }
                else page = "1";
                bool _f_type = true;
                string _type = "";
                if (typeID != null && typeID != "") _type = typeID;
                else if (typeName != null && typeName != "") _type = BLL_GoodsType.QueryTypeID(3, typeName).ElementAt(0).TypeID;
                else _f_type = false;
                int _f_price = 0;
                if (price_u != null && price_u != "") _f_price++;
                if (price_t != null && price_t != "") _f_price += 2;
                var list = BLL_Goods.QueryGoodsKeyList(key, true, pos, 20, _f_type, _type, _f_price, Convert.ToInt32(price_u), Convert.ToInt32(price_t));
                int count= BLL_Goods.QueryGoodsKeyCount(key, _f_type, _type, _f_price, Convert.ToInt32(price_u), Convert.ToInt32(price_t));
                server_count.Text = count.ToString();
                server_page.Text = "<b>" + page + "</b><em>/</em><i>" + (count % 20 == 0 ? count / 20 : (count / 20 + 1)).ToString() + "</i>";

                string text = "";
                foreach(var item in list)
                {
                    text += "<li class=\"gl-item\">";
                    text += "<div class=\"gl-i-wrap\">";
                    text += "<div class=\"p-img\">";
                    text += "<a target=\"_blank\" title=\""+item.Name+"\" href=\"#\" onclick=\"javascript:;\">";
                    text += "<img width=\"220\" height=\"220\" class=\"err-product\" data-img=\"1\" src=\"" + item.ImageName + "\" />";
                    text += "</a>";
                    text += "</div>";
                    text += "<div class=\"p-price\">";
                    text += "<strong class=\"J_2457023\" data-price=\"" + item.UnitPrice + "\"><em>¥</em><i>" + item.UnitPrice + "</i></strong>";
                    text += "</div>";
                    text += "<div class=\"p-name p-name-type-2\">";
                    text += "<a target=\"_blank\" title=\""+item.Name+"\" href=\"//item.jd.com/2457023.html\" onclick=\"searchlog(1,2457023,1,1,'','flagsClk=1614811784')\">";
                    text += "<em>"+(key!=null&&key!=""?item.Name.Replace(key,"<font class=\"skcolor_ljg\">"+key+"</font>"):item.Name)+"<font class=\"skcolor_ljg\" /></em>";
                    text += "<i class=\"promo-words\" id=\"J_AD_2457023\"></i>";
                    text += "</a>";
                    text += "</div>";
                    text += "<div class=\"p-shop\" data-selfware=\"1\" data-score=\"5\" data-reputation=\"96\" data-shopid=\"1000001772\"><a title=\""+item.Desctipt+"\">"+item.Desctipt+"</a></div>";
                    text += "<div class=\"p-operate\">";
                    text += "<a class=\"p-o-btn contrast J_contrast\" data-sku=\""+item.Id+"\" href=\"javascript:;\" onclick=\"javascript:;\"><i></i>对比</a>";
                    text += "<a class=\"p-o-btn focus J_focus\" data-sku=\""+item.Id+"\" href=\"javascript:;\" onclick=\"javascript:;\"><i></i>关注</a>";
                    text += "<a class=\"p-o-btn addcart\" data-stock=\""+item.Id+"\" data-stock-val=\"1\" data-disable-notice=\"0\" data-presale=\"0\" href=\"#\" data-limit=\"0\"><i></i>加入购物车</a>";
                    text += "</div>";
                    text += "</div>";
                    text += "</li>";
                }
                server_goods.Text = text;
            }
            catch (Exception ex)
            {
                server_goods.Text = "ERROR" + ex.Message;
            }
        }

        bool IsNullorEmpty(string input)
        {
            if (input != null && input != "") return false;
            else return true;
        }
    }
}