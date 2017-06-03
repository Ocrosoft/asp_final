<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="User_Interface_Layer.detail" %>


<!-- shouji -->
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <title>京东</title>
    <meta name="keywords" content="#" />
    <meta name="description" content="#" />
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="mobile-agent" content="format=xhtml; url=//item.m.jd.com/product/3419681.html">
    <meta http-equiv="mobile-agent" content="format=html5; url=//item.m.jd.com/product/3419681.html">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="stylesheet" type="text/css" href="/css/detail.css">
    <link rel="stylesheet" type="text/css" href="/css/detail-popcar.css" />
    <script src="/js/detail-header.js"></script>
</head>
<body class="cat-1-670 cat-2-671 cat-3-2694 item-3419681 JD JD-1">
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
    <div class="w">
        <div id="logo-2014">
            <a href="//www.jd.com/" class="logo">京东</a>
        </div>
        <div id="search-2014">
            <ul id="shelper" class="hide"></ul>
            <div class="form">
                <input type="text" onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key" accesskey="s" class="text" />
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
                    <li class="fore1" id="nav-home">
                        <a href="//www.jd.com/">首页</a>
                    </li>
                    <li class="fore2" id="nav-fashion">
                        <a target="_blank" href="//channel.jd.com/fashion.html">服装城</a>
                    </li>
                    <li class="fore3" id="nav-beauty">
                        <a target="_blank" href="//beauty.jd.com">美妆馆</a>
                    </li>
                    <li class="fore4" id="nav-chaoshi">
                        <a target="_blank" href="//chaoshi.jd.com">京东超市</a>
                    </li>
                    <li class="fore5">
                        <a target="_blank" href="//fresh.jd.com/">生鲜</a>
                    </li>
                    <li class="fore6" id="nav-jdww">
                        <a target="_blank" href="//www.jd.hk/">全球购</a>
                    </li>
                </ul>
                <div class="spacer"></div>
                <ul id="navitems-group2">
                    <li class="fore1" id="nav-red">
                        <a target="_blank" href="//red.jd.com/">闪购</a>
                    </li>
                    <li class="fore3" id="nav-auction">
                        <a target="_blank" href="//paimai.jd.com/">拍卖</a>
                    </li>
                    <li class="fore4" id="nav-jr">
                        <a target="_blank" href="//jr.jd.com/">金融</a>
                    </li>
                </ul>
            </div>
            <div id="treasure"></div>
            <span class="clr"></span>
        </div>
    </div>
    <!-- #nav-2014 -->


    <div class="crumb-wrap" id="crumb-wrap">
        <div class="w">
            <div class="crumb fl clearfix">
                <div class="item first" runat="server" id="cate_first"></div>
                <div class="item sep">&gt;</div>
                <div class="item" runat="server" id="cate_second"></div>
                <div class="item sep">&gt;</div>
                <div class="item" runat="server" id="cate_third"></div>
                <div class="item sep">&gt;</div>
                <div class="item ellipsis" title="" runat="server" id="cate_ellipsis"></div>
            </div>
            <div class="contact fr clearfix">
                <div class="J-hove-wrap EDropdown fr">
                    <div class="item hide J-im-item">
                        <div class="J-im-btn"></div>
                    </div>
                    <div class="item hide J-jimi-item">
                        <div class="J-jimi-btn"></div>
                    </div>
                </div>
            </div>
            <div class="clr"></div>
        </div>
    </div>

    <div class="w">
        <div class="product-intro clearfix">
            <div class="preview-wrap">
                <div class="preview" id="preview">
                    <div id="spec-n1" class="jqzoom main-img" data-big="1">
                        <ul class="preview-btn J-preview-btn">
                        </ul>
                        <img runat="server" id="spec_img" width="450" src="/" alt="">
                        <i></i>
                    </div>
                    <div class="spec-list">
                        <a id="spec-forward" href="javascript:;" class="arrow-prev"><i class="sprite-arrow-prev"></i></a>
                        <a id="spec-backward" href="javascript:;" class="arrow-next"><i class="sprite-arrow-next"></i></a>
                        <div id="spec-list" class="spec-items" style="position: relative; width: 380px; height: 58px; overflow: hidden;">
                            <ul class="lh" runat="server" id="server_img_lh" style="position: absolute; width: 684px; height: 58px; top: 0px; left: 0px;">
                            </ul>
                        </div>
                    </div>
                    <div class="preview-info">
                        <div class="left-btns">
                            <a runat="server" id="server_follow" class="follow J-follow" data-id="3419681" href="javascript:;">
                                <i class="sprite-follow-sku"></i><em>关注</em>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="itemInfo-wrap">
                <div class="sku-name" runat="server" id="server_sku_name">
                    荣耀平板2 标准版 8英寸 (八核 3G/16G 1920x1200 4800mAh WiFi) 珍珠白               
                </div>
                <div class="news">
                    <div class="item hide" id="p-ad" data-hook="hide"></div>
                    <div class="item hide" id="p-ad-phone" data-hook="hide"></div>
                </div>
                <div class="summary summary-first">
                    <div class="summary-price-wrap">
                        <div class="summary-price J-summary-price">
                            <div class="dt">东 京 价</div>
                            <div class="dd">
                                <span class="p-price"><span>￥</span><span runat="server" id="server_price" class="price"></span></span>
                                <div class="plus-price J-plus-price hide" style="display: none;">
                                    <span class="p-price-plus">
                                        <span class="price J-p-p-3419681"></span>
                                    </span>
                                    <img src="//img10.360buyimg.com/da/jfs/t5731/317/890792506/848/391b9a15/59224a28N48552ed2.png" alt="plus" class="plus-icon">
                                </div>
                            </div>
                        </div>
                        <div class="summary-info J-summary-info clearfix">
                            <div id="comment-count" class="comment-count item fl">
                                <p class="comment">累计评价</p>
                                <a class="count J-comm-3419681" href="#comment">0</a>
                            </div>
                        </div>
                        <div id="summary-quan" class="li p-choose hide"></div>
                        <div id="J-summary-top" class="summary-top">
                            <div id="summary-promotion" class="summary-promotion" data-hook="hide">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="summary p-choose-wrap">
                    <div id="summary-supply" class="li" style="display: none">
                        <div class="dt">&#x3000;&#x3000;</div>
                        <div class="dd">
                            <div id="summary-service" class="summary-service"></div>
                        </div>
                    </div>

                    <div class="summary-line"></div>
                    <div id="choose-attrs">
                        <div id="choose-attr-2" class="li p-choose" data-type="版本" data-idx="0">
                            <div class="dt">选择版本</div>
                            <div class="dd">
                                <div class="item  selected" data-sku="3419681" data-value="">
                                    <b></b>
                                    <a href="#none">官方标配</a>
                                </div>
                            </div>
                        </div>
                        <div id="choose-results" class="li" style="display: none">
                            <div class="dt">已选择</div>
                            <div class="dd"></div>
                        </div>
                    </div>
                    <div class="summary-line"></div>
                    <div id="choose-btns" class="choose-btns clearfix">
                        <div class="choose-amount">
                            <div class="wrap-input">
                                <input class="text buy-num" id="buy-num" value="1" data-max="99">
                                <a class="btn-reduce disabled" href="javascript:;" data-disabled="1">-</a>
                                <a class="btn-add" href="javascript:;" data-disabled="1">+</a>
                            </div>
                        </div>
                        <a href="javascript:;" id="InitCartUrl" sku-id="0" class="btn-special1 btn-lg" runat="server">加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="w">
        <div class="m m-content hide" id="similar">
            <div class="mt">
                <h3 class="fl">为你推荐</h3>
                <div class="extra">
                    <div class="page-num"></div>
                </div>
            </div>
            <div class="mc">
                <a href="#none" class="arrow-prev disabled"><i class="sprite-arrow-prev"></i></a>
                <div class="list clearfix"></div>
                <a href="#none" class="arrow-next disabled"><i class="sprite-arrow-next"></i></a>
            </div>
        </div>
    </div>


    <div class="w">
        <div id="fittings" class="fittings ETab hide">
            <div class="tab-main large">
                <ul>
                    <li data-tab="trigger" class="current" data-name="人气配件" onclick='log("gz_item", "gz_detail","02","tjpj_pjfl_人气配件","","main")'>人气配件</li>
                </ul>
                <div class="extra"></div>
            </div>
            <div class="tab-con J_fitting_con clearfix">
                <div class="master">
                    <div class="p-list">
                        <div class="p-img">
                            <a href="//jd.com/" target="_blank">
                                <img data-img="1" src="//img14.360buyimg.com/n4/jfs/t3613/270/276960050/195172/ebf643d9/5805e012Nb24f60dc.jpg" width="100" height="100" alt="荣耀平板2 标准版 8英寸 (八核 3G/16G 1920x1200 4800mAh WiFi) 珍珠白" />
                            </a>
                        </div>
                        <div class="p-name">
                            <a href="//item.jd.com/3419681.html" target="_blank">荣耀平板2 标准版 8英寸 (八核 3G/16G 1920x1200 4800mAh WiFi) 珍珠白</a>
                        </div>
                        <div class="p-price hide">
                            <input type="checkbox" data-sku="3419681" id="inp-acc-master" checked />
                            <label for="inp-acc-master"><strong class="J-p-3419681">￥</strong></label>
                        </div>
                        <i class="plus">+</i>
                    </div>
                </div>
                <div class="suits">
                    <div class="switchable-wrap" data-tab="item">
                        <div class="btns">
                            <a href="javascript:void(0)" target="_self" class="prev-btn"></a>
                            <a href="javascript:void(0)" target="_self" class="next-btn"></a>
                        </div>
                        <div class="lh-wrap">
                            <ul class="lh clearfix"></ul>
                        </div>
                    </div>
                </div>

                <div class="infos">
                    <div class="selected">已选择<em class="J-selected-cnt">0</em>个配件</div>
                    <div class="p-price">
                        <span>组合价</span>
                        <strong class="J_cal_jp">￥暂无报价</strong>
                    </div>
                    <div class="btn">
                        <a href="#none" class="btn-primary J-btn" target="_blank" onclick='log("gz_item", "gz_detail","02","tjpj_ycgm_ljgm", pageConfig.getAccSelectedSkus(),"main")'>立即购买</a>
                    </div>
                    <i class="equal">=</i>
                </div>
            </div>
        </div>
    </div>
    <div class="w">
        <div id="shopRecSuit" class="ETab hide">
            <div class="tab-main large">
                <ul>
                    <li data-tab="trigger" class="J-shopRec-trigger shopRec-trigger current hide" data-name="店长推荐">店长推荐</li>
                </ul>
            </div>
            <div class="tab-con clearfix">
                <div class="J-shopRec-content shopRec-content hide" data-tab="item">
                </div>
            </div>
        </div>
    </div>

    <div class="w">
        <div class="aside">
            <div class="m m-aside" id="rank">
                <div class="mt" runat="server">
                    <h3>热销榜</h3>
                </div>
                <div class="mc no-padding">
                    <div class="ETab">
                        <div class="tab-main medium">
                            <ul>
                                <li data-tab="trigger" class="current">同价位</li>
                                <li data-tab="trigger">总排行</li>
                            </ul>
                        </div>
                        <div class="tab-con">
                            <div data-tab="item">
                                <ul class="plist-1">
                                    <li class="fore1" data-sku="3419681">
                                        <div class="p-img">
                                            <a href="//item.jd.com/3419681.html" target="_blank">
                                                <img data-img="1" height="85" width="85" src="//img11.360buyimg.com/n5/s85x85_jfs/t3613/270/276960050/195172/ebf643d9/5805e012Nb24f60dc.jpg" /></a>
                                        </div>
                                        <div class="p-name"><a href="//item.jd.com/3419681.html" target="_blank" title='华为荣耀平板2'>华为荣耀平板2</a></div>
                                        <div class="p-price"><strong class="J-p-3419681"></strong></div>
                                        <div class="p-num">1</div>
                                    </li>
                                </ul>
                            </div>
                            <div data-tab="item" class="hide">
                                <ul class="plist-1">
                                    <li class="fore1" data-sku="1389385">
                                        <div class="p-img">
                                            <a href="//item.jd.com/1389385.html" target="_blank">
                                                <img data-img="1" height="85" width="85" src="//img10.360buyimg.com/n5/s85x85_jfs/t2500/236/2726976681/354922/c65186a7/56e93844N4f930c02.jpg" /></a>
                                        </div>
                                        <div class="p-name"><a href="//item.jd.com/1389385.html" target="_blank" title='华为荣耀X2(GEM-703L)'>华为荣耀X2(GEM-703L)</a></div>
                                        <div class="p-price"><strong class="J-p-1389385"></strong></div>
                                        <div class="p-num">1</div>
                                    </li>
                                </ul>
                            </div>
                            <div data-tab="item" class="hide">
                                <ul class="plist-1">
                                    <li class="fore1" data-sku="3989389">
                                        <div class="p-img">
                                            <a href="//item.jd.com/3989389.html" target="_blank">
                                                <img data-img="1" height="85" width="85" src="//img14.360buyimg.com/n5/s85x85_jfs/t4687/112/548423108/598231/ee82085c/58d1617bN614200f1.jpg" /></a>
                                        </div>
                                        <div class="p-name"><a href="//item.jd.com/3989389.html" target="_blank" title='AppleiPad'>AppleiPad</a></div>
                                        <div class="p-price"><strong class="J-p-3989389"></strong></div>
                                        <div class="p-num">1</div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="miaozhen7886" class="m m-aside"></div>
            <div id="miaozhen10767" class="m m-aside"></div>
            <div id="ad_market_1" class="m m-aside"></div>
        </div>
        <div class="detail">
            <div class="ETab" id="detail">
                <div class="tab-main large" data-fixed="pro-detail-hd-fixed">
                    <ul>
                        <li data-tab="trigger" data-anchor="#detail" class="current">商品介绍</li>
                    </ul>
                    <div class="extra">
                        <div class="item addcart-mini">
                            <div class="J-addcart-mini EDropdown">
                                <div class="inner">
                                    <div class="head" data-drop="head">
                                        <a id="InitCartUrl-mini" class="btn-primary" href="//cart.jd.com/gate.action?pid=3419681&pcount=1&ptype=1">加入购物车</a>
                                    </div>
                                    <div class="content hide" data-drop="content">
                                        <div class="mini-product-info">
                                            <div class="p-img fl">
                                                <img src="//img11.360buyimg.com/n4/jfs/t3613/270/276960050/195172/ebf643d9/5805e012Nb24f60dc.jpg" data-img="1" width="100" height="100" />
                                            </div>
                                            <div class="p-info lh">
                                                <div class="p-name">荣耀平板2 标准版 8英寸 (八核 3G/16G 1920x1200 4800mAh WiFi) 珍珠白</div>
                                                <div class="p-price">
                                                    <strong class="J-p-3419681"></strong><span>X <span class="J-buy-num"></span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-con">
                    <div data-tab="item" class="hide">
                    </div>
                    <div data-tab="item" class="hide">
                    </div>
                    <div data-tab="item" class="hide">
                    </div>
                    <div data-tab="item" class="hide">
                    </div>
                </div>
            </div>
        </div>
        <div class="clb"></div>
    </div>
    <div id="glofot" runat="server"></div>
    <div id="glofot2" runat="server"></div>
    <script src="/js/detail.js"></script>
</body>
</html>
