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
    public partial class checkOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {
                Response.Write("<script>location.href='/login.aspx';</script>");
                return;
            }

            var cus = BLL_Customer.QueryCustomerPostInfo(Session["name"].ToString());
            var cus2 = BLL_Customer.QueryCustomerPersonalInfo(Session["name"].ToString());
            cus.Email = cus2.Email;cus.Phone = cus2.Phone;
            if(isNullOrEmpty(cus.TrueName)||isNullOrEmpty(cus.Address)||isNullOrEmpty(cus.PostCode)||isNullOrEmpty(cus.Phone))
            {
                fd.InnerHtml = "<script>$('.J_consignee_global').click();</script>";
            }
            else
            {
                trueName.InnerText = cus.TrueName;
                addr_name.InnerText = cus.Address;
                addr_tel.InnerText = cus.Phone.Substring(0, 3) + "****" + cus.Phone.Substring(7);
                sendAddr.InnerText = "寄送至： " + cus.Address;
                sendMobile.InnerText= "收货人："+cus.TrueName+" "+ cus.Phone.Substring(0, 3) + "****" + cus.Phone.Substring(7);
            }

            var selected_goods = Request.Form["str"];
            string[] goods = selected_goods.Split(',');
            string list = "";
            decimal price_count = 0.0M;
            foreach(var item in goods)
            {
                var id = item.Split(':')[0];
                var cnt = item.Split(':')[1];
                var good = Business_Logic_Layer.BLL_Goods.QueryGood(id);
                price_count += good.UnitPrice * Int32.Parse(cnt);
                list += "<div class=\"goods-list\">";
                list += "<div class=\"goods-items\">";
                list += "<div class=\"goods-suit goods-last\">";
                list += "<div class=\"goods-item goods-item-extra\" goods-id=\""+good.Id+"\" sx-type=\"0\">";
                list += "<div class=\"p-img\">";
                list += "<a target=\"_blank\" href=\"/detail.aspx?id=" + id.ToString() + "\">";
                list += "<img src=\""+good.ImageName+"\" alt=\""+good.Name+"\" /></a>";
                list += "</div>";
                list += "<div class=\"goods-msg\">";
                list += "<div class=\"goods-msg-gel\">";
                list += "<div class=\"p-name\">";
                list += "<a href=\"/detail.aspx?id="+id.ToString()+"\" target=\"_blank\">"+good.Name+"";
                list += "</a></div>";
                list += "<div class=\"p-price\">";
                list += "<strong class=\"jd-price\">￥ " + Math.Round(good.UnitPrice * Int32.Parse(cnt), 2) + "</strong>";
                list += "<span class=\"p-num\">x" + cnt.ToString() + "</span></div></div></div></div></div></div></div>";
            }
            shopping_list.InnerHtml = list + shopping_list.InnerHtml;
            goods_count.InnerText = goods.Length.ToString();
            warePriceId.InnerText = "￥" + Math.Round(price_count, 2).ToString();
            cardId.InnerText = "￥-" + Math.Round(price_count, 2).ToString();
        }

        private bool isNullOrEmpty(string s)
        {
            if (s == null || s == "") return true;
            else return false;
        }
    }
}