using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Interface_Layer
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];
            string errorID = Request.QueryString["errorID"];
            string errorMsg = Request.QueryString["errorMsg"];

            hide_name.Value = name == null ? "" : name;
            hide_errorID.Value = errorID == null ? "" : errorID;
            hide_errorMsg.Value = errorMsg == null ? "" : errorMsg;
        }
    }
}