using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entitys;

namespace User_Interface_Layer.ajax
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            Response.StatusCode = 200;
            if (Session["name"] == null) return;
            var name = Session["name"].ToString();
            string id = Request.QueryString["id"];
            string over = Request.QueryString["over"];
            if (over == null || over == "") over = "0";
            int num = Int32.Parse(Request.QueryString["num"]);
            if (num < 1 || num >= 99)
            {
                Response.StatusCode = 500;
                Response.End();
                return;
            }
            HttpCookie ck = null;
            if (Request.Cookies["cartItems" + name] == null)
                ck = new HttpCookie("cartItems" + name);
            else ck = Request.Cookies["cartItems" + name];

            if (over == "1")
            {
                CartItem item = new CartItem();
                item.Id = id;
                item.Num = num;
                ck.Values[id] = item.ToString();
            }
            else
            {
                if (ck.Values[id] == null)
                {
                    CartItem item = new CartItem();
                    item.Id = id;
                    item.Num = num;
                    ck.Values[id] = item.ToString();
                }
                else
                {
                    var item = CartItem.parse(ck.Values[id]);
                    item.Num += num;
                    if (item.Num < 1 || item.Num >= 99)
                    {
                        Response.StatusCode = 500;
                        Response.End();
                        return;
                    }
                    ck.Values[id] = item.ToString();
                }
            }
            ck.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Set(ck);
            Response.End();
        }
    }
}