using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Interface_Layer.ajax
{
    public partial class Index_fxhh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            Response.StatusCode = 200;

            Response.Write("666");

            Response.End();
        }
    }
}