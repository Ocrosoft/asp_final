using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer.ajax
{
    public partial class Index_ypzj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            try
            {
               string key = Request.QueryString["key"];
                Response.StatusCode = 200;
                string typeID = BLL_GoodsType.QueryTypeID(3, key).ElementAt(0).TypeID;
                var list = BLL_Goods.QueryGoods(typeID);
                Random rd = new Random();
                for (int i = 0; i < 3; i++)
                {
                    int pos = rd.Next(0, list.Count());
                    Response.Write("<img class=\"sup_img J_sup_img\" src=\"" + list.ElementAt(pos).ImageName + "\">");
                }
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