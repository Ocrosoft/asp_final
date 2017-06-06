using Entitys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Interface_Layer.ajax
{
    public partial class DeleteFromCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            Response.StatusCode = 200;
            string name = "cache";
            if (Session["name"] == null)
            {
                //Response.StatusCode = 401; // 需要登录
                //Response.End();
                //return;
            }
            if (Session["name"] != null) name = Session["name"].ToString();
            string id = Request.QueryString["id"];
            HttpCookie ck = null;
            if (Request.Cookies["cartItems" + name] == null)
                ck = new HttpCookie("cartItems" + name);
            else ck = Request.Cookies["cartItems" + name];

            if (ck.Values[id] != null)
            {
                ck.Values.Remove(id);
            }

            ck.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Set(ck);
            Response.End();
        }
    }
}