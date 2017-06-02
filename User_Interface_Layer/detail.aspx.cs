﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Logic_Layer;

namespace User_Interface_Layer
{
    public partial class detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (id == null || id == "")
            {
                Response.Redirect("/index.aspx");
                return;
            }
            var good = BLL_Goods.QueryGood(id);
            var type = BLL_GoodsType.QueryTypeName(3,good.TypeID);
            var type_second = BLL_GoodsType.QueryTypeName(2, type.ParentTypeID);
            var type_top = BLL_GoodsType.QueryTypeName(1, type_second.ParentTypeID);
            cate_first.InnerHtml = "<a href='/search?type=" + type_top.TypeID + "'>" + type_top.TypeName + "</a>";
            cate_second.InnerHtml= "<a href='/search?type=" + type_second.TypeID + "'>" + type_second.TypeName + "</a>";
            cate_third.InnerHtml= "<a href='/search?type=" + type.TypeID + "'>" + type.TypeName + "</a>";
            cate_ellipsis.Attributes.Add("title", good.Name);
            cate_ellipsis.InnerHtml = good.Name;
            spec_img.Attributes.Add("src", good.ImageName);spec_img.Attributes.Add("alt", good.Name);
            image_hover.InnerHtml = "<img alt='"+good.Name+"' src='"+good.ImageName+"' data-img='1' width='54' height='54'>";
            server_follow.Attributes.Add("data-id", good.Id);
            server_sku_name.InnerText = good.Name;
            server_price.InnerText = Math.Round(good.UnitPrice, 2).ToString();

            // 从京东获取展示图片、详细信息
            var res = GetHttpWebRequest("http://search.jd.com/Search?keyword=" + good.Name + "&enc=utf-8");
            var rreess = res;
            var regex = new Regex("<a target=\\\"_blank\\\" title=\\\"[^\"]*\\\" href=\\\"[/.\\w\\d]*\\\" onclick=\\\"searchlog[^\\\"]*\\\">");
            var match = regex.Match(res);
            res = match.Value;
            regex = new Regex("href=\\\"[/.\\w\\d]*\\\"");
            match = regex.Match(res);
            res = match.Value;
            regex = new Regex("\".*\"");
            match = regex.Match(res);
            res = match.Value.Replace("\"", "");
            regex = new Regex("/\\d*\\.");
            match = regex.Match(res);
            res = match.Value.Substring(1, match.Value.Length - 2);
            res = GetHttpWebRequest("https://cd.jd.com/description/channel?enc=utf-8&skuId=" + res + "&mainSkuId=" + res);
            glofot.Attributes.Add("style", "display:none;");
            glofot.InnerText = res.Replace("data-lazyload", "src");
            res = rreess;
            regex = new Regex("<img alt='[^']*' src='[^']*' data-url='[^']*' data-img='[^']*' width='50' height='50'>");
            var matches = regex.Matches(res);
            string txt = "";
            foreach(var item in matches)
                txt += item.ToString();
            glofot2.InnerText = txt;
        }


        private string GetHttpWebRequest(string url)
        {
            Uri uri = new Uri(url);
            HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(uri);
            myReq.UserAgent = "User-Agent:Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; .NET CLR 1.0.3705";
            myReq.Accept = "*/*";
            myReq.KeepAlive = true;
            myReq.Headers.Add("Accept-Language", "zh-cn,en-us;q=0.5");
            HttpWebResponse result = (HttpWebResponse)myReq.GetResponse();
            Stream receviceStream = result.GetResponseStream();
            StreamReader readerOfStream = new StreamReader(receviceStream, System.Text.Encoding.GetEncoding("GBK"));
            string strHTML = readerOfStream.ReadToEnd();
            readerOfStream.Close();
            receviceStream.Close();
            result.Close();
            return strHTML;
        }
    }
}