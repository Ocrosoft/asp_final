using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Interface_Layer.ajax
{
    public partial class Index_phb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                var list = Business_Logic_Layer.BLL_Goods.QueryGoodsSellCountDescList(0, 6);
                int id = 0;
                foreach(var item in list)
                {
                    Response.Write("<li class=\"top_item top_item_"+(++id).ToString() + "\">");
                    Response.Write("<a href=\"#\" target=\"_blank\" class=\"top_lk\">");
                    Response.Write("<div class=\"top_rank top_rank_"+id.ToString()+ "\">" + id.ToString() + "</div>");
                    Response.Write("<div class=\"top_pic\">");
                    Response.Write("<img src = \""+item.ImageName+"\" data-lazy-img=\"done\" alt=\""+item.Name+ "\" title=\"" + item.Name + "\" class=\"top_img\">");
                    Response.Write("</div>");
                    Response.Write("<p class=\"top_name\">" + item.Name + "</p>");
                    Response.Write("</a>");
                    Response.Write("</li>");
                }
                Response.StatusCode = 200;
            }
            catch(Exception ex)
            {
                Response.StatusCode = 500;
                Response.Write(ex.Message);
            }
            finally
            {
                Response.End();
            }
        }
    }
}