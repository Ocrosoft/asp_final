using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer.Admin
{
    public partial class AddGoods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.Form["name"];
            string description = Request.Form["description"];
            string imageName = Request.Form["imageName"];
            string price = Request.Form["price"];
            string typeID = Request.Form["typeID"];

            if(BLL_Goods.AddGoods(name, typeID, Decimal.Parse(price), description, imageName))
            {
                Response.Redirect("/Admin/addGood.html?ret=0");
            }
            else
            {
                Response.Redirect("/Admin/addGood.html?ret=1");
            }
        }
    }
}