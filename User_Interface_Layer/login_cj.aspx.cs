using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer
{
    public partial class login_cj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.Form["loginname"];
            string pwd = Request.Form["nloginpwd"];
            string returnUrl = Request.QueryString["returnUrl"];
            pwd = BLL_Safety.DecodeBase64(pwd);
            int result = 0;
            try
            {
                if (BLL_Customer.Login(name, pwd))
                {
                    Session["name"] = name;
                    result = 1;
                }
                else
                {
                    result = 2;
                }
            }
            catch
            {
                result = 3;
            }
            finally
            {
                if (result == 1)
                {
                    if (returnUrl != null && returnUrl != "") Response.Redirect(returnUrl);
                    else Response.Redirect("index.aspx");
                }
                else if(result==2)
                {
                    Response.Redirect("login.aspx?name=" + name + "&errorID=entry&errorMsg=账户名与密码不匹配，请重新输入");
                }
                else if(result==3)
                {
                    Response.Redirect("login.aspx?name=" + name + "&errorID=entry&errorMsg=服务器错误");
                }
            }
        }
    }
}