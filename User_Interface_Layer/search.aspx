<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="User_Interface_Layer.search" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="max-age=300" />
    <title>商品搜索 - 东京</title>
    <meta name="Keywords" content="#" />
    <meta name="description" content="#" />
    <link type="text/css" rel="stylesheet" href="/css/search-area.css" />
    <link type="text/css" rel="stylesheet" href="/css/search.css" />
    <link type="text/css" rel="stylesheet" href="/css/index-common.css" />
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
                    <asp:Label ID="ttbar_login_server" runat="server">
                        <a href="javascript:location.href='login.aspx?returnUrl='+location.href;" class="link-login">你好，请登录</a>&nbsp;&nbsp;
                        <a href="javascript:location.href='reg.aspx?returnUrl='+location.href;" class="link-regist style-red">免费注册</a>
                    </asp:Label>
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
                        <a target="_blank" href="//b.jd.com/">企业采购</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore6 dorpdown" id="ttbar-apps">
                    <div class="dt cw-icon">
                        <i class="ci-left"></i>
                        <i class="ci-right"><s>◇</s></i>
                        <a target="_blank" href="//app.jd.com/">手机东京</a>
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
                    <div class="dt cw-icon">客户服务<i class="ci-right"><s>◇</s></i></div>
                    <div class="dd dorpdown-layer"><div class="dd-spacer"></div><div class="item-client">客户</div><div class="item"><a href="#" target="_blank" >帮助中心</a></div><div class="item"><a href="#" target="_blank" >售后服务</a></div><div class="item"><a href="#" target="_blank" >在线客服</a></div><div class="item"><a href="#" target="_blank" >意见建议</a></div><div class="item"><a href="#" target="_blank" >电话客服</a></div><div class="item"><a href="#" target="_blank" >客服邮箱</a></div><div class="item"><a href="#" target="_blank" >金融咨询</a></div><div class="item"><a href="#" target="_blank" >售全球客服</a></div><div class="item-business">商户</div><div class="item"><a href="#" target="_blank" >合作招商</a></div><div class="item"><a href="#" target="_blank" >东京商学院</a></div><div class="item"><a href="#" target="_blank" >商家后台</a></div><div class="item"><a href="#" target="_blank" >京麦工作台</a></div><div class="item"><a href="#" target="_blank" >商家帮助</a></div><div class="item"><a href="#" target="_blank" >规则平台</a></div></div>
                </li>
                <li class="spacer"></li>
                                    <li class="fore9 dorpdown" id="ttbar-navs" data-load="1">
                        <div class="dt cw-icon">网站导航<i class="ci-right"><s>◇</s></i></div>
                        <div class="dd dorpdown-layer">
                            <div class="dd-spacer"></div>
                            <dl class="fore1">
                                <dt>特色主题</dt>
                                <dd>
                                    <div class="item"><a href="#" target="_blank">品牌头条</a></div>
                                    <div class="item"><a href="#" target="_blank">发现好货</a></div>
                                    <div class="item"><a href="#" target="_blank">东京预售</a></div>
                                    <div class="item"><a href="#" target="_blank">东京金融</a></div>
                                    <div class="item"><a href="#" target="_blank">东京试用</a></div>
                                    <div class="item"><a href="#" target="_blank">优惠券</a></div>
                                    <div class="item"><a href="#" target="_blank">闪购</a></div>
                                    <div class="item"><a href="#" target="_blank">东京会员</a></div>
                                    <div class="item"><a href="#" target="_blank">秒杀</a></div>
                                    <div class="item"><a href="#" target="_blank">定期送</a></div>
                                    <div class="item"><a href="#" target="_blank">装机大师</a></div>
                                    <div class="item"><a href="#" target="_blank">新奇特</a></div>
                                    <div class="item"><a href="#" target="_blank">企业金融服务</a></div>
                                    <div class="item"><a href="#" target="_blank">礼品购</a></div>
                                    <div class="item"><a href="#" target="_blank">智能馆</a></div>
                                    <div class="item"><a href="#" target="_blank">0元评测</a></div>
                                    <div class="item"><a href="#" target="_blank">In货推荐</a></div>
                                    <div class="item"><a href="#" target="_blank">北京老字号</a></div>
                                    <div class="item"><a href="#" target="_blank">买什么</a></div>
                                </dd>
                            </dl>
                            <dl class="fore2">
                                <dt>行业频道</dt>
                                <dd>
                                    <div class="item"><a href="#" target="_blank">服装城</a></div>
                                    <div class="item"><a href="#" target="_blank">家用电器</a></div>
                                    <div class="item"><a href="#" target="_blank">电脑办公</a></div>
                                    <div class="item"><a href="#" target="_blank">手机</a></div>
                                    <div class="item"><a href="#" target="_blank">美妆馆</a></div>
                                    <div class="item"><a href="#" target="_blank">食品</a></div>
                                    <div class="item"><a href="#" target="_blank">智能数码</a></div>
                                    <div class="item"><a href="#" target="_blank">母婴</a></div>
                                    <div class="item"><a href="#" target="_blank">家装城</a></div>
                                    <div class="item"><a href="#" target="_blank">运动户外</a></div>
                                    <div class="item"><a href="#" target="_blank">整车</a></div>
                                    <div class="item"><a href="#" target="_blank">图书</a></div>
                                    <div class="item"><a href="#" target="_blank">农资频道</a></div>
                                    <div class="item"><a href="#" target="_blank">东京智能</a></div>
                                    <div class="item"><a href="#" target="_blank">玩3C</a></div>
                                </dd>
                            </dl>
                            <dl class="fore3">
                                <dt>生活服务</dt>
                                <dd>
                                    <div class="item"><a href="#" target="_blank">东京众筹</a></div>
                                    <div class="item"><a href="#" target="_blank">白条</a></div>
                                    <div class="item"><a href="#" target="_blank">东京金融App</a></div>
                                    <div class="item"><a href="#" target="_blank">东京小金库</a></div>
                                    <div class="item"><a href="#" target="_blank">理财</a></div>
                                    <div class="item"><a href="#" target="_blank">话费</a></div>
                                    <div class="item"><a href="#" target="_blank">旅行</a></div>
                                    <div class="item"><a href="#" target="_blank">彩票</a></div>
                                    <div class="item"><a href="#" target="_blank">游戏</a></div>
                                    <div class="item"><a href="#" target="_blank">机票酒店</a></div>
                                    <div class="item"><a href="#" target="_blank">电影票</a></div>
                                    <div class="item"><a href="#" target="_blank">水电煤</a></div>
                                    <div class="item"><a href="#" target="_blank">东京到家</a></div>
                                    <div class="item"><a href="#" target="_blank">东京微联</a></div>
                                    <div class="item"><a href="#" target="_blank">东京众测</a></div>
                                </dd>
                            </dl>
                            <dl class="fore4">
                                <dt>更多精选</dt>
                                <dd>
                                    <div class="item"><a href="#" target="_blank">东京社区</a></div>
                                    <div class="item"><a href="#" target="_blank">东京通信</a></div>
                                    <div class="item"><a href="#" target="_blank">在线读书</a></div>
                                    <div class="item"><a href="#" target="_blank">东京E卡</a></div>
                                    <div class="item"><a href="#" target="_blank">智能社区</a></div>
                                    <div class="item"><a href="#" target="_blank">游戏社区</a></div>
                                    <div class="item"><a href="#" target="_blank">京友邦</a></div>
                                    <div class="item"><a href="#" target="_blank">合作招商</a></div>
                                    <div class="item"><a href="#" target="_blank">企业采购</a></div>
                                    <div class="item"><a href="#" target="_blank">服务市场</a></div>
                                    <div class="item"><a href="#" target="_blank">乡村招募</a></div>
                                    <div class="item"><a href="#" target="_blank">校园加盟</a></div>
                                    <div class="item"><a href="#" target="_blank">办公生活馆</a></div>
                                    <div class="item"><a href="#" target="_blank">知识产权维权</a></div>
                                    <div class="item"><a href="#" target="_blank">English Site</a></div>
                                </dd>
                            </dl>
                        </div>
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
            <a href="/index.aspx" class="logo">东京</a>
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
                <a target="_blank" href="/cart.aspx">我的购物车</a>
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
                    <a target="_blank" href="#">全部商品分类</a>
                </div>
            </div>
            <div id="navitems-2014">
                <ul id="navitems-group1">
                    <li id="nav-home" class="fore1">
                        <a target="_blank" href="#">首页</a>
                    </li>
                    <li id="nav-fashion" class="fore2">
                        <a target="_blank" href="#">服装城</a>
                    </li>
                    <li id="nav-beauty" class="fore3">
                        <a target="_blank" href="#">美妆馆</a>
                    </li>
                    <li id="nav-chaoshi" class="fore4">
                        <a target="_blank" href="#">东京超市</a>
                    </li>
                    <li id="nav-fresh" class="fore5">
                        <a target="_blank" href="#">生鲜</a>
                    </li>
                </ul>
                <div class="spacer"></div>
                <ul id="navitems-group2">
                    <li id="nav-jdww" class="fore6">
                        <a target="_blank" href="#">全球购</a>
                    </li>
                    <li id="nav-red" class="fore7">
                        <a target="_blank" href="#">闪购</a>
                    </li>
                    <li id="nav-auction" class="fore8">
                        <a target="_blank" href="#">拍卖</a>
                    </li>
                    <li id="nav-jr" class="fore9">
                        <a target="_blank" href="#">金融</a>
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
                        <div class="crumbs-first"><a>全部结果</a></div>
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
    <div id="J-global-toolbar">
        <div class="jdm-toolbar-wrap J-wrap">
            <div class="jdm-toolbar J-toolbar">
                <div class="jdm-toolbar-tabs J-tab">
                    <div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-jdvip" data-name="jdvip" data-login="true" data-iframe="//vip.jd.com/sideBar/index.html">
                        <i class="tab-ico"></i><em class="tab-text">东京会员</em><span class="tab-sub J-count hide">0</span>
                    </div>
                    <div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-cart" data-name="cart" onclick="javascript:location.href='/cart.aspx';">
                        <i class="tab-ico"></i><em class="tab-text">购物车</em><span class="tab-sub J-count hide" style="display: none;">0</span>
                        <div class="tabs-tip hide"><span class="ico"></span><span class="text">成功加入购物车!</span><b></b></div>
                    </div>
                    <div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-follow" data-name="follow" data-login="true">
                        <i class="tab-ico"></i><em class="tab-text">我的关注</em><span class="tab-sub J-count hide">0</span>
                    </div>
                    <div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-history" data-name="history">
                        <i class="tab-ico"></i><em class="tab-text">我的足迹</em><span class="tab-sub J-count hide">0</span>
                    </div>
                    <div class="J-trigger jdm-toolbar-tab jdm-tbar-tab-message" data-name="message">
                        <a target="_blank" href="#">
                            <i class="tab-ico"></i><em class="tab-text">我的消息</em></a><span class="tab-sub J-count hide">0</span>
                    </div>
                </div>
                <div class="jdm-toolbar-footer">
                    <div data-type="link" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-top"><a href="#"><i class="tab-ico"></i><em class="tab-text">顶部</em>                                </a></div>
                </div>
                <div class="jdm-toolbar-mini"></div>
            </div>
            <div id="J-toolbar-load-hook"></div>
        </div>
    </div>
    <script src="/js/search.js"></script>
</body>
</html>
