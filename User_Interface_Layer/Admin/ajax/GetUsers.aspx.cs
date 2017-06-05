using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer.Admin.ajax
{
    public partial class GetUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            Response.StatusCode = 200;
            try
            {
                var list = BLL_Manage.QueryManagers(0, 20);
                foreach (var item in list)Response.Write(item);
            }
            catch
            {
                Response.StatusCode = 500;
            }
            finally
            {
                Response.End();
            }
        }
    }
}