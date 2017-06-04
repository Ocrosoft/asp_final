using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Interface_Layer.ajax
{
    public partial class GetCate_First : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            Response.StatusCode = 200;
            var list = Business_Logic_Layer.BLL_GoodsType.QueryAllTypes(1);
            foreach(var item in list)
                Response.Write("<option value='" + item.TypeID + "'>" + item.TypeName + "</option>\n");
            Response.End();
        }
    }
}