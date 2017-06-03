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
            if (Session["name"] == null)
            {
                Response.StatusCode = 500;
                Response.End();
                return;
            }
            var name = Session["name"].ToString();
            string id = Request.QueryString["id"];
            HttpCookie ck = null;
            if (Request.Cookies["cartItems" + name] == null)
                ck = new HttpCookie("cartItems" + name);
            else ck = Request.Cookies["cartItems" + name];
        }
    }
}