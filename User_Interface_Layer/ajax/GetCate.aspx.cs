using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer.ajax
{
    public partial class GetCate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            try
            {
                var cate_first = BLL_GoodsType.QueryAllTypes(1);
                string text = "";
                for (int i = 0; i < cate_first.Count; i++)
                {
                    text += "<div class=\"cate_part clearfix\" id=\"cate_item" + (i + 1).ToString() + "\" data-id=\"" + (char)((int)'a' + i) + "\" data-inlazuqueue=\"true\" style=\"display: none;padding-top: 10px;\">\n";
                    var cate_pop = BLL_GoodsType.QueryTypesChild(1, cate_first.ElementAt(i).TypeID);
                    text += "<div class=\"cate_part_col1\">\n<div class=\"cate_detail\">\n";
                    for (int j = 0; j < cate_pop.Count; j++)
                    {
                        text += "<dl class=\"cate_detail_item cate_detail_item1\">\n";
                        text += "<dt class=\"cate_detail_tit\">\n";
                        text += "<a href=\"#\" class=\"cate_detail_tit_lk\" target=\"_blank\">\n";
                        text += cate_pop.ElementAt(j).TypeName + "\n";
                        text += "<i class=\"iconfont cate_detail_titi_arror\"></i>\n</a>\n</dt>\n";
                        var cate_third = BLL_GoodsType.QueryTypesChild(2, cate_pop.ElementAt(j).TypeID);
                        text += "<dd class=\"cate_detail_con\">\n";
                        for (int k = 0; k < cate_third.Count; k++)
                        {
                            text += "<a href=\"#\" class=\"cate_detail_con_lk\" target=\"_blank\">" + cate_third.ElementAt(k).TypeName + "</a>\n";
                        }
                        text += "</dd>\n</dl>\n";
                    }
                    text += "</div>\n</div>\n</div>\n";
                }
                Response.StatusCode = 200;
                Response.Write(text);
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