using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["name"] != null) ttbar_login_server.Text = "欢迎，<a style='color:red;'>" + Session["name"].ToString() + "</a>";
                var cate_first = BLL_GoodsType.QueryAllTypes(1);
                string text = "";
                for (int i = 0; i < cate_first.Count; i++)
                    text += "<li class=\"cate_menu_item\" data-index=\"" + (i + 1).ToString() + "\"><a target=\"_blank\" class=\"cate_menu_lk\" href=\"#\">" + cate_first.ElementAt(i).TypeName + "</a></li>\n";
                server_cate.Text = text;
            }
            catch(Exception ex)
            {
                server_cate.Text = ex.Message;
            }
        }
    }
}