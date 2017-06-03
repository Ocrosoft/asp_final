using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entitys;
using Business_Logic_Layer;

namespace User_Interface_Layer
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                ttbar_login_server.Text = "欢迎，<a style='color:red;'>" + Session["name"].ToString() + "</a>";
            }

            if (Session["name"] == null) return; // 未登录
            var cartItems = Request.Cookies["cartItems" + Session["name"].ToString()];
            if (cartItems == null) return; // 无信息
            List<CartItem> list = new List<CartItem>();
            foreach(string item in cartItems.Values)
                list.Add(CartItem.parse(cartItems[item]));
            if (list.Count == 0) return;
            else
            {
                server_cart_number.InnerText = list.Count.ToString();
                string text = "";
                foreach(var item in list)
                {
                    Goods good = null;
                    try
                    {
                        good = BLL_Goods.QueryGood(item.Id);
                    }
                    catch
                    {
                        continue;
                    }
                    text += "<div class=\"item-give item-full\">";
                    text += "<div class=\"item-item\">";
                    text += "<div class=\"item-form\">";
                    text += "<div class=\"cell p-checkbox\">";
                    text += "<div class=\"cart-checkbox\">";
                    text += "<input type=\"checkbox\" name=\"checkItem\" class=\"jdcheckbox\" data-bind=\"cbid\" clstag=\"clickcart|keycount|xincart|cart_checkOn_sku\">";
                    text += "<label for=\"\" class=\"checked\">勾选商品</label>";
                    text += "<span class=\"line-circle\"></span>";
                    text += "</div>";
                    text += "</div>";
                    text += "<div class=\"cell p-goods\">";
                    text += "<div class=\"goods-item\">";
                    text += "<div class=\"p-img\">";
                    text += "<a href=\"//item.jd.com/3419681.html\" target=\"_blank\" class=\"J_zyyhq_3419681\">";
                    text += "<img style=\"width:100%;\" alt=\""+good.Name+"\" clstag=\"clickcart|keycount|xincart|cart_sku_pic\" src=\""+good.ImageName+"\"></a>";
                    text += "</div>";
                    text += "<div class=\"item-msg\">";
                    text += "<div class=\"p-name\">";
                    text += "<a href=\"#\" target=\"_blank\">" + good.Name + "";
                    text += "</a>";
                    text += "</div>";
                    text += "</div>";
                    text += "</div>";
                    text += "</div>";
                    text += "<div class=\"cell p-props p-props-new\">";
                    text += "<div class=\"props-txt\" title=\"\"></div>";
                    text += "</div>";
                    text += "<div class=\"cell p-price\">";
                    text += "<strong>¥" + Math.Round(good.UnitPrice, 2) + "</strong>";
                    text += "</div>";
                    text += "<div class=\"cell p-quantity\">";
                    text += "<div class=\"quantity-form\">";
                    text += "<a href=\"javascript:void(0);\" class=\"decrement\">-</a>";
                    text += "<input autocomplete=\"off\" type=\"text\" class=\"itxt\" value=\""+item.Num+"\">";
                    text += "<a href=\"javascript:void(0);\" class=\"increment\">+</a>";
                    text += "</div>";
                    text += "</div>";
                    text += "<div class=\"cell p-sum\">";
                    text += "<strong>¥" + Math.Round(good.UnitPrice * item.Num, 2) + "</strong>";
                    text += "</div>";
                    text += "<div class=\"cell p-ops\">";
                    text += "<a id=\"remove_8888_3419681_13_199127640\" data-name=\"" + good.Name + "\" data-more=\"removed_" + good.Id + "\" class=\"cart-remove\" href=\"javascript:void(0);\">删除</a>";
                    text += "<a href=\"javascript:void(0);\" class=\"cart-follow\" id=\"follow_" + good.Id + "\">移到我的关注</a>";
                    text += "<a href=\"javascript:void(0);\" class=\"add-follow\" id=\"add-follow_" + good.Id + "\">加到我的关注</a>";
                    text += "</div>";
                    text += "</div>";
                    text += "</div>";
                    text += "</div>";
                }
                server_list.InnerHtml = text;
                server_bar.Attributes.Add("style", "display:block");
                server_warp.Attributes.Add("style", "display:block");
                server_empty.Attributes.Add("style", "display:none");
            }
        }
    }
}