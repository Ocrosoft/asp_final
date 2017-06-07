using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entitys;
using Business_Logic_Layer;

namespace User_Interface_Layer.ajax
{
    public partial class CheckOrder_IsInfoComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            Response.StatusCode = 200;

            var cus = BLL_Customer.QueryCustomerPostInfo(Session["name"].ToString());
            var cus2 = BLL_Customer.QueryCustomerPersonalInfo(Session["name"].ToString());
            cus.Email = cus2.Email; cus.Phone = cus2.Phone;
            if (isNullOrEmpty(cus.TrueName) || isNullOrEmpty(cus.Address) || isNullOrEmpty(cus.PostCode) || isNullOrEmpty(cus.Phone))
            {
                Response.StatusCode = 500;
            }

            Response.End();
        }
        private bool isNullOrEmpty(string s)
        {
            if (s == null || s == "") return true;
            else return false;
        }
    }
}