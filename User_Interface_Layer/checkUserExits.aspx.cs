using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Business_Logic_Layer;
using System.Web.UI.WebControls;

namespace User_Interface_Layer
{
    public partial class checkUserExits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            string name = Request.QueryString["name"];
            try
            {
                bool ret = BLL_Customer.queryCustomerExits(name);
                if (ret) Response.Write("True");
                else Response.Write("False");
            }
            catch
            {
                Response.Write("True");
            }
        }
    }
}