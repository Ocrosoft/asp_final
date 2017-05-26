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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["regName"];
            string pwd = Request.QueryString["pwd"];
            string pwdRe = Request.QueryString["pwdRepeat"];
            string authcustomerCode = Request.QueryString["authCode"];
            string checkcode_correct = Session["CheckCode"].ToString();

            if (!checkcode_correct.Equals(authcustomerCode))
            {
                string errorMsg = "验证码错误";
                string errorID = "authCode";
                Response.Redirect("login.aspx?name="+name+"&errorID="+ errorID + "&errorMsg="+ errorMsg);
                //Session["regErrorusername"] = name;
                //Session["regErrorID"] = "";
                //Session["regError"] = "验证码错误！";
                
                return;
            }

            Customer customer = new Customer();
            customer.Name = name;
            customer.Pass = pwd;
            if (BLL_Customer.register(customer))
            {
                string regSuccessname = name;
                Response.Redirect("login.aspx?name=" + name );
                //Session["regSuccessname"] = customer.Name;
                
            }
            else
            {
                string errorID = "register - form";
                string regError = "注册失败！";
                Response.Redirect("reg.aspx?name=" + name + "&errorID=" + errorID + "&errorMsg=" + regError);
                //Session["regErrorusername"] = customer.Name;
                //Session["regErrorID"] = "";
                //Session["regError"] = "注册失败！";
               
            }

        }
    }
}