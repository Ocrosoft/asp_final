<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="User_Interface_Layer.cart" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>我的购物车 - 东京商城</title>
    <link type="text/css" rel="stylesheet" href="/css/cart.css" />
    <script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
    <link href="/css/cart-no-login.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="css/cart-cross.css" />
</head>
<body>
    <div id="shortcut-2014">
        <div class="w">
            <ul class="fl">
                <li class="dorpdown" id="ttbar-mycity"></li>
            </ul>
            <ul class="fr">
                <li class="fore1" id="ttbar-login">
                    <a href="javascript:login();" class="link-login">你好，请登录</a>&nbsp;&nbsp;<a href="javascript:regist();" class="link-regist style-red">免费注册</a>
                </li>
                <li class="spacer"></li>
                <li class="fore2">
                    <div class="dt">
                        <a target="_blank" href="#">我的订单</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore3 dorpdown" id="ttbar-myjd">
                    <div class="dt cw-icon">
                        <i class="ci-right"><s>◇</s></i>
                        <a target="_blank" href="#">我的东京</a>
                    </div>
                    <div class="dd dorpdown-layer"></div>
                </li>
                <li class="spacer"></li>
                <li class="fore4">
                    <div class="dt">
                        <a target="_blank" href="#">东京会员</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore5">
                    <div class="dt">
                        <a target="_blank" href="#">企业采购</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore6 dorpdown" id="ttbar-apps">
                    <div class="dt cw-icon">
                        <i class="ci-left"></i>
                        <i class="ci-right"><s>◇</s></i>
                        <a target="_blank" href="#">手机东京</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore7 dorpdown" id="ttbar-atte">
                    <div class="dt cw-icon">
                        <i class="ci-right"><s>◇</s></i>关注东京
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore8 dorpdown" id="ttbar-serv">
                    <div class="dt cw-icon">
                        <i class="ci-right"><s>◇</s></i>客户服务
                    </div>
                    <div class="dd dorpdown-layer"></div>
                </li>
                <li class="spacer"></li>
                <li class="fore9 dorpdown" id="ttbar-navs">
                    <div class="dt cw-icon">
                        <i class="ci-right"><s>◇</s></i>网站导航
                    </div>
                    <div class="dd dorpdown-layer"></div>
                </li>
            </ul>
            <span class="clr"></span>
        </div>
    </div>
    <div id="o-header-2013">
        <div id="header-2013" style="display: none;"></div>
    </div>
    <div class="w w1 header clearfix">
        <div id="logo-2014">
            <a href="#" class="logo"></a>
            <a href="#" class="link2"><b></b>购物车</a>
        </div>
        <div class="cart-search">
            <div class="form">
                <input id="key" type="text" class="itxt" autocomplete="off" accesskey="s">
                <input type="button" class="button" value="搜索" clstag="clickcart|keycount|xincart|cart_search" onclick="javascript: void (0);">
            </div>
        </div>
    </div>

    <!-- 分类购物车枚举 -->
    <!-- main -->
    <div id="container" class="cart" ecarddg="0" cartalwaysdg="0" t="0">
        <div class="w">
            <div id="chunjie" class="mb10"></div>
            <div class="cart-empty">
                <div class="message">
                    <ul>
                        <li class="txt">购物车空空的哦~，去看看心仪的商品吧~
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="w">
            <div class="m m1" id="c-tabs-new">
                <div class="mt">
                    <div class="extra-l">
                        <a href="#" class="c-item curr">猜你喜欢</a>
                        <a href="#" class="c-item">我的关注</a>
                        <a href="#" class="c-item">最近浏览</a>
                    </div>
                    <div class="extra-r">
                    </div>
                </div>
                <div class="mc c-panel-main">
                    <div class="c-panel" id="guess-products"></div>
                    <div class="c-panel" id="favorite-products"></div>
                </div>
            </div>
        </div>
        <div class="w">
        </div>

    </div>
    <div id="service-2014">
        <div class="slogen">
            <span class="item fore1">
                <i></i><b>多</b>品类齐全，轻松购物
            </span>
            <span class="item fore2">
                <i></i><b>快</b>多仓直发，极速配送
            </span>
            <span class="item fore3">
                <i></i><b>好</b>正品行货，精致服务
            </span>
            <span class="item fore4">
                <i></i><b>省</b>天天低价，畅选无忧
            </span>
        </div>
        <div class="w">
            <dl class="fore1">
                <dt>购物指南</dt>
                <dd>
                    <div><a rel="nofollow" target="_blank" href="#">购物流程</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">会员介绍</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">生活旅行/团购</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">常见问题</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">大家电</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">联系客服</a></div>
                </dd>
            </dl>
            <dl class="fore2">
                <dt>配送方式</dt>
                <dd>
                    <div><a rel="nofollow" target="_blank" href="#">上门自提</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">211限时达</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">配送服务查询</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">配送费收取标准</a></div>
                    <div><a target="_blank" href="#">海外配送</a></div>
                </dd>
            </dl>
            <dl class="fore3">
                <dt>支付方式</dt>
                <dd>
                    <div><a rel="nofollow" target="_blank" href="#">货到付款</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">在线支付</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">分期付款</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">邮局汇款</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">公司转账</a></div>
                </dd>
            </dl>
            <dl class="fore4">
                <dt>售后服务</dt>
                <dd>
                    <div><a rel="nofollow" target="_blank" href="#">售后政策</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">价格保护</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">退款说明</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">返修/退换货</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">取消订单</a></div>
                </dd>
            </dl>
            <dl class="fore5">
                <dt>特色服务</dt>
                <dd>
                    <div><a target="_blank" href="#">夺宝岛</a></div>
                    <div><a target="_blank" href="#">DIY装机</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">延保服务</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">东京E卡</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">东京通信</a></div>
                    <div><a rel="nofollow" target="_blank" href="#">东京JD+</a></div>
                </dd>
            </dl>
            <span class="clr"></span>
        </div>
    </div>
    <div class="w">
        <div id="footer-2014">
            <div class="links"><a rel="nofollow" target="_blank" href="#">关于我们</a>|<a rel="nofollow" target="_blank" href="#">联系我们</a>|<a rel="nofollow" target="_blank" href="#">联系客服</a>|<a rel="nofollow" target="_blank" href="#">合作招商</a>|<a rel="nofollow" target="_blank" href="#">商家帮助</a>|<a rel="nofollow" target="_blank" href="#">营销中心</a>|<a rel="nofollow" target="_blank" href="#">手机东京</a>|<a target="_blank" href="#">友情链接</a>|<a target="_blank" href="#">销售联盟</a>|<a href="#" target="_blank">东京社区</a>|<a href="#" target="_blank">风险监测</a>|<a href="#" target="_blank" clstag="h|keycount|2016|43">隐私政策</a>|<a href="#" target="_blank">东京公益</a>|<a href="#" target="_blank">English Site</a>|<a href="#" target="_blank">Contact Us</a></div>
            <div class="copyright">
                <a target="_blank" href="#">
                    <img src="//img13.360buyimg.com/cms/jfs/t2293/321/1377257360/19256/c267b386/56a0a994Nf1b662dc.png" />
                    京公网安备 11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank" href="#">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>
                互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="#" target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>
                Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;东京JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733&nbsp;&nbsp;&nbsp;&nbsp;<a class="mod_copyright_license" target="_blank" href="#">经营证照</a><br>
                东京旗下网站：<a href="#" target="_blank">东京钱包</a>
            </div>
            <div class="authentication">
                <a rel="nofollow" target="_blank" href="#">
                    <img width="103" height="32" alt="经营性网站备案中心" src="//img12.360buyimg.com/da/jfs/t535/349/1185317137/2350/7fc5b9e4/54b8871eNa9a7067e.png" class="err-product" />
                </a>
                <script type="text/JavaScript">function CNNIC_change(eleId) { var str = document.getElementById(eleId).href; var str1 = str.substring(0, (str.length - 6)); str1 += CNNIC_RndNum(6); document.getElementById(eleId).href = str1; } function CNNIC_RndNum(k) { var rnd = ""; for (var i = 0; i < k; i++) rnd += Math.floor(Math.random() * 10); return rnd; }</script>
                <a rel="nofollow" target="_blank" id="urlknet" tabindex="-1" href="#">
                    <img border="true" width="103" height="32" onclick="CNNIC_change('urlknet')" oncontextmenu="return false;" name="CNNIC_seal" alt="可信网站" src="//img11.360buyimg.com/da/jfs/t643/61/1174624553/2576/4037eb5f/54b8872dNe37a9860.png" class="err-product" />
                </a>
                <a rel="nofollow" target="_blank" href="#">
                    <img width="103" height="32" alt="网络警察" src="//img12.360buyimg.com/cms/jfs/t2050/256/1470027660/4336/2a2c74bd/56a89b8fNfbaade9a.jpg" class="err-product" />
                </a>
                <a rel="nofollow" target="_blank" href="#">
                    <img width="103" height="32" src="//img11.360buyimg.com/da/jfs/t451/173/1189513923/1992/ec69b14a/54b8875fNad1e0c4c.png" class="err-product" />
                </a>
                <a target="_blank" href="#">
                    <img width="103" height="32" src="//img30.360buyimg.com/da/jfs/t1915/215/1329999964/2996/d7ff13f0/5698dc03N23f2e3b8.jpg"></a>
                <a target="_blank" href="#">
                    <img width="103" height="32" src="//img14.360buyimg.com/da/jfs/t2026/221/2097811452/2816/8eb35b4b/5698dc16Nb2ab99df.jpg"></a>
            </div>
        </div>
    </div>
</body>
</html>
