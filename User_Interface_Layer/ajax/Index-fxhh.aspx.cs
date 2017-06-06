using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer.ajax
{
    public partial class Index_fxhh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            Response.StatusCode = 200;
            try
            {
                int count = BLL_Goods.QueryGoodsCount();
                Random rd = new Random();
                for (int i = 0; i < 6; i++)
                {
                    int pos = rd.Next(count);
                    var good = BLL_Goods.QueryGoodsAt(pos, 1).ElementAt(0);
                    Response.Write("<li class=\"find_item find_item_"+(i+1).ToString()+"\"><a href=\"/detail.aspx?id="+good.Id+"\" target=\"_blank\" class=\"find_item_lk\">");
                    Response.Write("<p class=\"find_item_name\" style=\"width: 70px; overflow: hidden; text-overflow:ellipsis; display: -webkit-box; -webkit-box-orient:vertical; -webkit-line-clamp:5; \">" + good.Name+"</p>");
                    Response.Write("<img src =\""+good.ImageName+"\" alt=\""+good.Name+ "\" title=\"" + good.Name + "\" class=\"find_item_img\"></a></li>\n");
                }
            }
            catch (Exception ex)
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