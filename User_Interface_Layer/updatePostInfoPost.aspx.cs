using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entitys;
using Business_Logic_Layer;

namespace User_Interface_Layer
{
    public partial class updatePostInfoPost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null) return;

            string name = Request.Form["consignee_name"].ToString();
            string address= Request.Form["consignee_address"].ToString();
            string mobile= Request.Form["consignee_mobile"].ToString();
            string postcode= Request.Form["consignee_postcode"].ToString();
            string email = Request.Form["consignee_email"].ToString();

            Customer cus = new Customer();
            cus.TrueName = name;
            cus.Address = address;
            cus.Phone = mobile;
            cus.PostCode = postcode;
            cus.Email = email;
            cus.Name = Session["name"].ToString();

            // 听知乎的话，不要乱catch
            if(BLL_Customer.ModifyPostInfo(cus.Name, cus.TrueName, cus.Address, cus.PostCode)&&
            BLL_Customer.ModifyPersonalInfo(cus.Name, "", cus.Phone, cus.Email))
            {
                Server.Transfer("/updatePostInfo.aspx");
            }
            else
            {
                Server.Transfer("/updatePostInfo.aspx?error=1");
            }
        }
    }
}