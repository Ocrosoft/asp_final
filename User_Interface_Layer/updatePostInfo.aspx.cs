using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Interface_Layer
{
    public partial class updatePostInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var pers = Business_Logic_Layer.BLL_Customer.QueryCustomerPersonalInfo(Session["name"].ToString());
            var post = Business_Logic_Layer.BLL_Customer.QueryCustomerPostInfo(Session["name"].ToString());

            consignee_name.Value = post.TrueName;
            consignee_mobile.Value = pers.Phone;
            consignee_postcode.Value = post.PostCode;
            consignee_address.Value = post.Address;
            consignee_email.Value = pers.Email;
        }
    }
}