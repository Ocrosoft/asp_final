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
            Response.StatusCode = 200;
            string name = Request.QueryString["name"];
            try
            {
                bool ret = BLL_Customer.QueryCustomerExits(name);
                if (ret) Response.Write("True");
                else Response.Write("False");
            }
            catch
            {
                Response.StatusCode = 500;
                Response.Write("True");
            }
            finally
            {
                Response.End();
            }
        }
    }
}