<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="User_Interface_Layer.search" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="max-age=300" />
    <title> - 商品搜索 - 京东</title>
    <meta name="Keywords" content="#" />
    <meta name="description" content="#" />
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/jdf/1.0.0/??unit/ui-base/1.0.0/ui-base.css,unit/shortcut/2.0.0/shortcut.css,unit/global-header/1.0.0/global-header.css,unit/myjd/2.0.0/myjd.css,unit/nav/2.0.0/nav.css,unit/shoppingcart/2.0.0/shoppingcart.css,unit/global-footer/1.0.0/global-footer.css,unit/service/1.0.0/service.css,unit/basePatch/1.0.0/basePatch.css,ui/area/1.0.0/area.css" />
    <link type="text/css" rel="stylesheet" href="/css/search.css" />
    <script src="/js/jquery-2.1.4.min.js"></script>
</head>
<body>
    <div id="shortcut-2014">
        <div class="w">
            <ul class="fl">
                <li class="dorpdown" id="ttbar-mycity"></li>
            </ul>
            <ul class="fr">
                <li class="fore1" id="ttbar-login">
                    <a target="_blank" href="javascript:login();" class="link-login">你好，请登录</a>&nbsp;&nbsp;<a href="javascript:regist();" class="link-regist style-red">免费注册</a>
                </li>
                <li class="spacer"></li>
                <li class="fore2">
                    <div class="dt">
                        <a target="_blank" href="//order.jd.com/center/list.action">我的订单</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore3 dorpdown" id="ttbar-myjd">
                    <div class="dt cw-icon">
                        <i class="ci-right"><s>◇</s></i>
                        <a target="_blank" href="//home.jd.com/">我的京东</a>
                    </div>
                    <div class="dd dorpdown-layer"></div>
                </li>
                <li class="spacer"></li>
                <li class="fore4">
                    <div class="dt">
                        <a target="_blank" href="//vip.jd.com/">京东会员</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore5">
                    <div class="dt">
                        <a target="_blank" href="//b.jd.com/">企业采购</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore6 dorpdown" id="ttbar-apps">
                    <div class="dt cw-icon">
                        <i class="ci-left"></i>
                        <i class="ci-right"><s>◇</s></i>
                        <a target="_blank" href="//app.jd.com/">手机京东</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore7 dorpdown" id="ttbar-atte">
                    <div class="dt cw-icon">
                        <i class="ci-right"><s>◇</s></i>关注京东
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
    <div class="w">
        <div id="logo-2014">
            <a href="//www.jd.com/" class="logo">京东</a>
        </div>
        <div id="search-2014">
            <ul id="shelper" class="hide"></ul>
            <div class="form">
                <input type="text" onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key" accesskey="s" class="text" clstag="shangpin|keycount|toplist1|b02" />
                <button onclick="search('key');return false;" class="button cw-icon"><i></i>搜索</button>
            </div>
        </div>
        <div id="settleup-2014" class="dorpdown">
            <div class="cw-icon">
                <i class="ci-left"></i>
                <i class="ci-right">&gt;</i>
                <a target="_blank" href="//cart.jd.com/cart.action">我的购物车</a>
            </div>
            <div class="dorpdown-layer">
                <div class="spacer"></div>
                <div id="settleup-content">
                    <span class="loading"></span>
                </div>
            </div>
        </div>
        <div id="hotwords"></div>
        <span class="clr"></span>
    </div>
    <div id="nav-2014">
        <div class="w">
            <div class="w-spacer"></div>
            <div id="categorys-2014" class="dorpdown" data-type="default">
                <div class="dt">
                    <a target="_blank" href="//www.jd.com/allSort.aspx">全部商品分类</a>
                </div>
            </div>
            <div id="navitems-2014">
                <ul id="navitems-group1">
                    <li id="nav-home" class="fore1">
                        <a target="_blank" href="//www.jd.com/">首页</a>
                    </li>
                    <li id="nav-fashion" class="fore2">
                        <a target="_blank" href="//channel.jd.com/fashion.html">服装城</a>
                    </li>
                    <li id="nav-beauty" class="fore3">
                        <a target="_blank" href="//beauty.jd.com">美妆馆</a>
                    </li>
                    <li id="nav-chaoshi" class="fore4">
                        <a target="_blank" href="//chaoshi.jd.com">京东超市</a>
                    </li>
                    <li id="nav-fresh" class="fore5">
                        <a target="_blank" href="//fresh.jd.com/">生鲜</a>
                    </li>
                </ul>
                <div class="spacer"></div>
                <ul id="navitems-group2">
                    <li id="nav-jdww" class="fore6">
                        <a target="_blank" href="//www.jd.hk/">全球购</a>
                    </li>
                    <li id="nav-red" class="fore7">
                        <a target="_blank" href="//red.jd.com/">闪购</a>
                    </li>
                    <li id="nav-auction" class="fore8">
                        <a target="_blank" href="//paimai.jd.com/">拍卖</a>
                    </li>
                    <li id="nav-jr" class="fore9">
                        <a target="_blank" href="//jr.jd.com/">金融</a>
                    </li>
                </ul>
            </div>
            <div id="treasure"></div>
            <span class="clr"></span>
        </div>
    </div>
    <div id="J_searchWrap" class="w" runat="server">
        <div id="J_crumbsBar" class="crumbs-bar">
            <div class="crumbs-nav">
                <div class="crumbs-nav-main clearfix">
                    <div class="crumbs-nav-item">
                        <div class="crumbs-first"><a href="search?keyword=%E6%8A%B1%E6%9E%95&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E6%8A%B1%E6%9E%95">全部结果</a></div>
                    </div>
                    <i class="crumbs-arrow">&gt;</i>
                    <div class="crumbs-nav-item">
                        <strong class="search-key"><asp:Label ID="server_qbjg" runat="server"></asp:Label></strong>
                    </div>
                </div>
            </div>
        </div>
        <div id="J_container" class="container">
            <div id="J_main" class="g-main2">
                <div class="m-list">
                    <div class="ml-wrap">
                        <div id="J_filter" class="filter">
                            <div class="f-line top">
                                <div class="f-sort">
                                    <a class="curr" href="javascript:;"><span class="fs-tit">综合</span><em class="fs-down"><i class="arrow"></i></em></a>
                                    <a class="" href="javascript:;"><span class="fs-tit">销量</span><em class="fs-down"><i class="arrow"></i></em></a>
                                    <a class="" href="javascript:;"><span class="fs-tit">评论数</span><em class="fs-down"><i class="arrow"></i></em></a>
                                    <a class="" href="javascript:;"><span class="fs-tit">新品</span><em class="fs-down"><i class="arrow"></i></em></a>
                                    <a class="" href="javascript:;"><span class="fs-tit">价格</span><em class="fs-up"><i class="arrow-top"></i><i class="arrow-bottom"></i></em></a>
                                </div>
                                <div id="J_selectorPrice" class="f-price">
                                    <div class="f-price-set">
                                        <div class="fl">
                                            <input type="text" class="input-txt" autocomplete="off" style="color: #ccc" value="¥">
                                        </div>
                                        <em>-</em>
                                        <div class="fl">
                                            <input type="text" class="input-txt" autocomplete="off" style="color: #ccc" value="¥">
                                        </div>
                                    </div>
                                    <div class="f-price-edit">
                                        <a href="javascript:;" class="item1 J-price-cancle">清空</a>
                                        <a href="javascript:;" class="item2 J-price-confirm" data-url="search?keyword=%E6%8A%B1%E6%9E%95&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E6%8A%B1%E6%9E%95&ev=exprice_min-max%40&uc=0#J_searchWrap">确定</a>
                                    </div>
                                </div>
                                <div id="J_topPage" class="f-pager">
                                    <span class="fp-text">
                                        <asp:Label runat="server" ID="server_page"></asp:Label>
                                    </span>
                                    <a class="fp-prev disabled">&lt;</a>
                                    <a class="fp-next">&gt;</a>
                                </div>
                                <div class="f-result-sum">共<asp:Label ID="server_count" CssClass="num" runat="server"></asp:Label>件商品</div>
                                <span class="clr"></span>
                            </div>
                            <div class="f-line">
                                <div class="f-store">
                                    <div class="fs-cell delivery-location">配送至</div>
                                    <div id="J_store_selector" class="ui-area-wrap" style="float: left; margin-right: 10px">
                                        <div class="ui-area-text-wrap">
                                            <div class="ui-area-text">火星</div>
                                            <b></b>
                                        </div>
                                        <div class="ui-area-content-wrap">
                                            <div class="ui-area-tab"></div>
                                            <div class="ui-area-content"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-search">
                                    <input type="text" placeholder="在商品中搜索" class="input-txt">
                                    <a class="btn btn-default" href="javascript:;">确定</a>
                                </div>
                                <span class="clr"></span>
                            </div>
                        </div>
                        <div id="J_goodsList" class="goods-list-v2 gl-type-1 J-goods-list">
                            <ul class="gl-warp clearfix" data-tpl="1">
                                <asp:Label runat="server" ID="server_goods"></asp:Label>
                            </ul>
                            <span class="clr"></span>

                        </div>
                        <!--<div id="J_scroll_loading" class="notice-loading-more"><span>正在加载中，请稍后~~</span></div>-->
                        <div class="page clearfix">
                            <div id="J_bottomPage" class="p-wrap"></div>
                        </div>
                    </div>
                </div>
                <div class="m-aside">
                    <div class="aside-bar">
                        <div id="J_promGoodsWrap_291" class="ab-goods u-ad-wrap" style="display: block;">
                            <span class="u-ad"></span>
                            <div class="mt">
                                <h3>商品精选</h3>
                            </div>
                            <div class="mc">
                                <ul class="clearfix" data-x="ab">
                                    <asp:Label runat="server" ID="server_spjx">
                                    </asp:Label>                                 
                                </ul>
                            </div>
                        </div>
                        <div id="J_recommendGoods" class="ab-goods">
                            <div class="mt">
                                <h3>精品推荐</h3>
                            </div>
                            <div class="mc"></div>
                        </div>
                        <div class="promo-pic-adbox u-ad-wrap" style="display: none;">
                            <span class="u-ad"></span>
                            <h5 class="hd">商家精选</h5>
                            <div class="bd">
                                <div id="J_promWrap_576">
                                    <div class="mc"></div>
                                </div>
                            </div>
                        </div>
                        <div id="miaozhen8148" class="ab-pic"></div>
                    </div>
                </div>
                <span class="clr"></span>
            </div>
        </div>
    </div>
    <div class="w">
        <div class="m-box-s1 rec-goods-chosen u-ad-wrap hide" id="J_promGoodsWrap_292">
            <span class="u-ad"></span>
            <div class="mt"><strong class="mt-title">商品精选</strong></div>
            <div class="mc"></div>
        </div>
    </div>
    <div class="w">
        <div class="bottom-search">
            <div class="form-group">
                <div class="fg-line re-search">
                    <div class="fg-line-key"><b>重新搜索：</b></div>
                    <div class="fg-line-value">
                        <input id="key-re-search" class="input-txt input-XL" type="text" placeholder="搜索" value="" onkeydown="javascript:if(event.keyCode==13){searchlog(1,0,0,60);search('key-re-search');}">
                        <a class="btn btn-primary btn-XL" href="javascript:search('key-re-search')" onclick="searchlog(1,0,0,60)">搜索</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="w">
        <div id="footmark" class="footmark" data-lazyload-fn="done"></div>
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
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-29.html">购物流程</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-151.html">会员介绍</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-297.html">生活旅行/团购</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue.html">常见问题</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-136.html">大家电</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/index.html">联系客服</a></div>
                </dd>
            </dl>
            <dl class="fore2">
                <dt>配送方式</dt>
                <dd>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-81-100.html">上门自提</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-81.html">211限时达</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/103-983.html">配送服务查询</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a></div>
                    <div><a target="_blank" href="//en.jd.com/chinese.html">海外配送</a></div>
                </dd>
            </dl>
            <dl class="fore3">
                <dt>支付方式</dt>
                <dd>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-172.html">货到付款</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-173.html">在线支付</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-176.html">分期付款</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-174.html">邮局汇款</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-175.html">公司转账</a></div>
                </dd>
            </dl>
            <dl class="fore4">
                <dt>售后服务</dt>
                <dd>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/321-981.html">售后政策</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-132.html">价格保护</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/130-978.html">退款说明</a></div>
                    <div><a rel="nofollow" target="_blank" href="//myjd.jd.com/repair/repairs.action">返修/退换货</a></div>
                    <div><a rel="nofollow" target="_blank" href="//help.jd.com/user/issue/list-50.html">取消订单</a></div>
                </dd>
            </dl>
            <dl class="fore5">
                <dt>特色服务</dt>
                <dd>
                    <div><a target="_blank" href="//help.jd.com/user/issue/list-133.html">夺宝岛</a></div>
                    <div><a target="_blank" href="//help.jd.com/user/issue/list-134.html">DIY装机</a></div>
                    <div><a rel="nofollow" target="_blank" href="//fuwu.jd.com/">延保服务</a></div>
                    <div><a rel="nofollow" target="_blank" href="//o.jd.com/market/index.action">京东E卡</a></div>
                    <div><a rel="nofollow" target="_blank" href="//mobile.jd.com/">京东通信</a></div>
                    <div><a rel="nofollow" target="_blank" href="//s.jd.com/">京东JD+</a></div>
                </dd>
            </dl>
            <span class="clr"></span>
        </div>
    </div>
    <script src="/js/search.js"></script>
</body>
</html>
