using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entitys;
using Business_Logic_Layer;
using System.Text.RegularExpressions;

namespace User_Interface_Layer
{
    public partial class reg_cq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.Form["regName"];
            string pwd = Request.Form["pwd"].Substring(1);
            string pwdRe = Request.Form["pwdRepeat"].Substring(1);
            string authCode = Request.Form["authCode"];
            string checkcode_correct = Session["CheckCode"].ToString();

            if (name.Length < 4 || name.Length > 20) { Response.Redirect("reg.aspx"); return; }
            if (pwd.Length < 6 || pwd.Length > 20) { Response.Redirect("reg.aspx"); return; }
            //Regex reg = new Regex("^[\\w\\d-_]{ 4, 20 }$");
            //if (!reg.IsMatch(name)) { Response.Redirect("reg.aspx"); return; }

            if (!pwd.Equals(pwdRe))
            {
                Response.Redirect("reg.aspx?name=" + name +
                    "&errorID=authCode&errorMsg=两次密码输入不一致");
                return;
            }
            if (!checkcode_correct.Equals(authCode))
            {
                Response.Redirect("reg.aspx?name=" + name +
                    "&errorID=authCode&errorMsg=验证码错误");
                return;
            }

            Customer customer = new Customer();
            customer.Name = name;
            customer.Pass = pwd;
            customer.Question = customer.Answer = "";
            if (BLL_Customer.Register(customer))
            {
                string regSuccessname = name;
                Response.Redirect("login.aspx?name=" + name);
            }
            else
            {
                Response.Redirect("reg.aspx?name=" + name + "&errorMsg=服务器错误");
            }
        }
    }
}