 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="User_Interface_Layer.index" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>东京(DJ.COM)-正品低价、品质保障、配送及时、轻松购物！</title>
    <meta name="description" content="东京DJ.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,东京" />
    <link rel="icon" href="#" type="image/x-icon" />
    <link rel="search" title="东京DJ.com" href="#" type="application/opensearchdescription+xml" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <link type="text/css" rel="stylesheet" href="/css/index.css" />
    <link type="text/css" rel="stylesheet" href="/css/index-common.css" />
    <link type="text/css" rel="stylesheet" href="/css/index-tpl.css" />
    <script src="/js/jquery-2.1.4.min.js"></script>
    <script src="/js/index-head.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 372px;
        }
    </style>
</head>

<body class="index">
    <!-- 顶部导航 -->
    <div id="shortcut">
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
                    <div class="dt"><a target="_blank" href="#">我的订单</a></div>
                </li>
                <li class="spacer"></li>
                <li class="fore3 dorpdown" id="ttbar-myjd">
                    <div class="dt cw-icon"><a target="_blank" href="#">我的东京</a><i class="iconfont">&#xe605;</i><i class="ci-right"><s>◇</s></i></div>
                    <div class="dd dorpdown-layer">
                        <div class="dd-spacer"></div>
                        <div class="myjdlist">
                            <div class="fore1">
                                <div class="item"><a href="#" target="_blank">待处理订单<span id="num-unfinishedorder"></span></a></div>
                                <div class="item"><a href="#" target="_blank">返修退换货</a></div>
                                <div class="item"><a href="#" target="_blank">降价商品<span id="num-reduction"></span></a></div>
                            </div>
                            <div class="fore2">
                                <div class="item"><a href="#" target="_blank">消息<span id="num-tip"><span runat="server" id="server_msg_num" class="num style-red">&nbsp;</span></span></a>						</div>
                                <div class="item"><a href="#" target="_blank">我的问答<span id="num-consultation"></span></a></div>
                                <div class="item"><a href="#" target="_blank">我的关注</a></div>
                            </div>
                        </div>
                        <div class="myjdlist myjdlist_2">
                            <div class="fore1">
                                <div class="item"><a href="#" target="_blank">我的东豆</a></div>
                                <div class="item baitiao"><a href="#" target="_blank">我的白条</a></div>
                            </div>
                            <div class="fore2">
                                <div class="item"><a href="#" target="_blank">我的优惠券<span id="num-ticket"></span></a></div>
                                <div class="item"><a href="#" target="_blank">我的理财</a></div>
                            </div>
                        </div>
                        <div class="viewlist" style="display: none;">
                            <div class="smt">
                                <h4>我的足迹</h4>
                                <span class="extra"><a target="_blank" href="//my.jd.com/history/list.html">更多&nbsp;&gt;</a></span></div>
                            <div class="smc"></div>
                        </div>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore4">
                    <div class="dt"><a target="_blank" href="#">东京会员</a></div>
                </li>
                <li class="spacer"></li>
                <li class="fore5">
                    <div class="dt"><a target="_blank" href="#">企业采购</a></div>
                </li>
                <li class="spacer"></li>
                <li class="fore8 dorpdown" id="ttbar-serv">
                    <div class="dt cw-icon">客户服务<i class="iconfont">&#xe605;</i><i class="ci-right"><s>◇</s></i></div>
                    <div class="dd dorpdown-layer"><div class="dd-spacer"></div><div class="item-client">客户</div><div class="item"><a href="#" target="_blank" >帮助中心</a></div><div class="item"><a href="#" target="_blank" >售后服务</a></div><div class="item"><a href="#" target="_blank" >在线客服</a></div><div class="item"><a href="#" target="_blank" >意见建议</a></div><div class="item"><a href="#" target="_blank" >电话客服</a></div><div class="item"><a href="#" target="_blank" >客服邮箱</a></div><div class="item"><a href="#" target="_blank" >金融咨询</a></div><div class="item"><a href="#" target="_blank" >售全球客服</a></div><div class="item-business">商户</div><div class="item"><a href="#" target="_blank" >合作招商</a></div><div class="item"><a href="#" target="_blank" >东京商学院</a></div><div class="item"><a href="#" target="_blank" >商家后台</a></div><div class="item"><a href="#" target="_blank" >京麦工作台</a></div><div class="item"><a href="#" target="_blank" >商家帮助</a></div><div class="item"><a href="#" target="_blank" >规则平台</a></div></div>
                </li>
                <li class="spacer"></li>
                    <li class="fore9 dorpdown" id="ttbar-navs" data-load="1">
                        <div class="dt cw-icon">网站导航<i class="iconfont"></i><i class="ci-right"><s>◇</s></i></div>
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
                <li class="spacer"></li>
                <li class="fore10 mobile" id="J_mobile">
                    <div class="dt mobile_txt">手机东京</div>
                    <!--<div class="mobile_static">
                        <div class="mobile_static_qrcode"></div>
                    </div>
                    <div id='J_mobile_pop' class='mod_loading mobile_pop'>
                    </div>-->
                </li>
            </ul>
        </div>
    </div>
    <form runat="server">
        <!-- HiddenFiled -->
    </form>
    <div id="header">
        <div class="w">
            <div id="logo" class="logo">
                <h1 class="logo_tit"><a href="#" class="logo_tit_lk">东京</a></h1>
                <h2 class="logo_subtit">东京,多快好省</h2>
                <div class="logo_extend"></div>
            </div>
            <div id="search">
                <div class="search-m">
                    <div class="search_logo">
                        <a href="#" class="search_logo_lk">东京，多快好省</a>
                    </div>
                    <ul id="shelper" style="display: none"></ul>
                    <div class="form">
                        <input placeholder="并不知道你想搜什么" type="text" onkeydown="javascript:if(event.keyCode==13) search();" autocomplete="off" id="key" accesskey="s" class="text" />
                        <button onclick="search();return false;" class="button"><i class="iconfont">&#xe603;</i></button>
                    </div>
                </div>
            </div>
            <div id="settleup" class="dorpdown">
                <div class="cw-icon">
                    <i class="ci-left"></i>
                    <i class="ci-right"></i>
                    <i class="iconfont">&#xe607;</i>
                    <a target="_blank" href="#">我的购物车</a>
                </div>
                <div class="dorpdown-layer">
                    <div class="spacer"></div>
                    <div id="settleup-content">
                        <span class="loading"></span>
                    </div>
                </div>
            </div>
            <div id="hotwords">无热词 没有热词 不会有热词 不存在的热词 怎么可能有热词 从来没有什么热词</div>
            <div id="navitems">
                <ul id="navitems-group1">
                    <li class="fore1">
                        <a target="_blank" href="#">秒杀</a>
                    </li>
                    <li class="fore2">
                        <a target="_blank" href="#">优惠券</a>
                    </li>
                    <li class="fore3">
                        <a target="_blank" href="#">闪购</a>
                    </li>
                    <li class="fore4">
                        <a target="_blank" href="#">拍卖</a>
                    </li>
                </ul>
                <div class="spacer"></div>
                <ul id="navitems-group2">
                    <li class="fore1">
                        <a target="_blank" href="#">服装城</a>
                    </li>
                    <li class="fore2">
                        <a target="_blank" href="#">东京超市</a>
                    </li>
                    <li class="fore3">
                        <a target="_blank" href="#">生鲜</a>
                    </li>
                    <li class="fore4">
                        <a target="_blank" href="#">全球购</a>
                    </li>
                </ul>
                <div class="spacer"></div>
                <ul id="navitems-group3">
                    <li class="fore1">
                        <a target="_blank" href="#">东京金融</a>
                    </li>
                </ul>
            </div>
            <div id="treasure"></div>
        </div>
    </div>
    <div class="fs">
        <div class="grid_c1 fs_inner">
            <div class="fs_col1">
                <div class="J_cate cate">
                    <!-- 菜单 -->
                    <ul class="JS_navCtn cate_menu">
                        <asp:Label ID="server_cate" runat="server">
                            <li class="cate_menu_item" data-index="1"><a target="_blank" class="cate_menu_lk" href="#">家用电器</a></li>
                        </asp:Label>
                    </ul>
                    <div id="popCtn" style="display: none;" class="cate_pop mod_loading">
                    </div>
                </div>
            </div>
            <div class="fs_col2">
                <div class="J_slider slider">
                    <div class="J_slider_main slider_main">
                        <ul class="slider_list J_slider_list">
                            <li class="J_slider_item slider_item" style="opacity: 1; z-index: 1; position: absolute;">
                                <a href="#" class="slider_item_lk J_slider_item_lk" target="_blank">
                                <img alt="" src="//img14.360buyimg.com/da/jfs/t5878/318/1423881758/133705/9c8203bc/5926a3aaN1095f049.jpg" class="J_slider_item_img slider_item_img"><i class="mod_actmark mod_actmark_focus"></i></a></li>
                            <li class="J_slider_item slider_item" style="opacity: 0; z-index: 0; position: absolute;">
                                <a href="#" class="slider_item_lk J_slider_item_lk" target="_blank">
                                <img alt="" src="//img1.360buyimg.com/da/jfs/t5698/63/180199642/164836/86a3054f/591daf31N26a3d381.jpg" class="J_slider_item_img slider_item_img"><i class="mod_actmark mod_actmark_focus"></i></a></li>
                            <li class="J_slider_item slider_item" style="opacity: 0; z-index: 0; position: absolute;">
                                <a href="#" class="slider_item_lk J_slider_item_lk" target="_blank">
                                <img alt="" src="//img10.360buyimg.com/da/jfs/t4324/317/860219935/78514/96c6e177/58ba3360N7d709700.jpg" class="J_slider_item_img slider_item_img"><i class="mod_actmark mod_actmark_focus"></i></a></li>
                            <li class="J_slider_item slider_item" style="opacity: 0; z-index: 0; position: absolute;">
                                <a href="#" class="slider_item_lk J_slider_item_lk" target="_blank">
                                <img alt="" src="//img13.360buyimg.com/da/jfs/t5791/211/1339665612/190891/b3169e39/59255b2bN59290ca0.jpg" class="J_slider_item_img slider_item_img"><i class="mod_actmark mod_actmark_focus"></i></a></li>
                            <li class="J_slider_item slider_item" style="opacity: 0; z-index: 0; position: absolute;">
                                <a href="#" class="slider_item_lk J_slider_item_lk" target="_blank">
                                <img alt="" src="//img14.360buyimg.com/da/jfs/t3889/320/1663573324/106061/9f4225e/5885d7e9N0cefb065.jpg" class="J_slider_item_img slider_item_img"><i class="mod_actmark mod_actmark_focus"></i></a></li>
                            <li class="J_slider_item slider_item" style="opacity: 0; z-index: 0; position: absolute;">
                                <a href="#" class="slider_item_lk J_slider_item_lk" target="_blank">
                                <img alt="" src="//img30.360buyimg.com/da/jfs/t5779/208/1676495879/204515/9f08f99/5928ddb5Nef882285.jpg" class="J_slider_item_img slider_item_img"><i class="mod_actmark mod_actmark_focus"></i></a></li>
                            <li class="J_slider_item slider_item" style="opacity: 0; z-index: 0; position: absolute;">
                                <a href="#" class="slider_item_lk J_slider_item_lk" target="_blank">
                                <img alt="" src="//img12.360buyimg.com/da/jfs/t5827/324/1405451098/69439/576a038e/59268472N4067702f.jpg" class="J_slider_item_img slider_item_img"><i class="mod_actmark mod_actmark_focus"></i></a></li>
                            <li class="J_slider_item slider_item slider_item_active" style="opacity: 0; z-index: 0; position: absolute;">
                                <a href="#" class="slider_item_lk J_slider_item_lk" target="_blank">
                                <img alt="" src="//img13.360buyimg.com/da/jfs/t5641/143/1688255544/107064/ad42949d/5928d48dN6314076b.jpg" class="J_slider_item_img slider_item_img"><i class="mod_actmark mod_actmark_focus"></i></a></li>
                        </ul>
                        <div class="J_slider_indicator slider_indicator" style="margin-left: -91px; display: block;">
                            <i class="slider_indicator_btn slider_indicator_btn_active"></i>
                            <i class="slider_indicator_btn"></i>
                            <i class="slider_indicator_btn"></i>
                            <i class="slider_indicator_btn"></i>
                            <i class="slider_indicator_btn"></i>
                            <i class="slider_indicator_btn"></i>
                            <i class="slider_indicator_btn"></i>
                            <i class="slider_indicator_btn"></i></div>
                        <a href="javascript:void(0)" class="J_slider_control_prev slider_control_item slider_control_prev"><i class="iconfont"></i></a><a href="javascript:void(0)" class="J_slider_control_next slider_control_item slider_control_next"><i class="iconfont"></i></a>
                    </div>
                    <div class="J_slider_extend slider_extend clearfix">
                        <div class="J_slider_bi slider_bi"><a href="#" class="slider_bi_lk" target="_blank">
                            <img class="J_slider_bi_img slider_bi_img" title="" alt="" src="//img13.360buyimg.com/cms/s390x130_jfs/t4645/129/2740486696/14756/f19de56f/591e473dNb44ada30.jpg!q90">
                        </a></div>
                        <div class="J_slider_bi slider_bi"><a href="#" class="slider_bi_lk" target="_blank">
                            <img class="J_slider_bi_img slider_bi_img" title="" alt="" src="//img11.360buyimg.com/cms/s390x130_jfs/t5641/319/1193421447/16038/3aac4b49/592409a9N93970c27.jpg!q90">
                        </a></div>
                    </div>
                </div>
            </div>
            <div class="fs_col3">
                <!-- 用户信息 -->
                <div class="J_user user">
                    <div class="user_info user_info_level user_info_plus0">
                        <div class="J_user_info_avatar user_info_avatar">
                            <img class="J_user_info_avatar_img" src="/Images/no_login.jpg">
                            <a class="user_info_avatar_lk" href="#" target="_blank"></a></div>
                        <div class="user_info_show" id="server_user">
                            <p runat="server" id="server_user_hi" class="user_info_tip">Hi，欢迎来到东京！</p>
                            <p runat="server" id="server_user_loginreg"><a href="javascript:location.href='login.aspx?returnUrl='+location.href;" class="user_info_login">登录</a> <a href="javascript:location.href='reg.aspx?returnUrl='+location.href;" class="user_info_reg">注册</a></p>
                        </div>
                    </div>
                    <div class="user_profit"><a class="user_profit_lk" href="javascript:alert('新人福利...啥');" target="_blank">新人福利</a><a class="user_profit_lk" href="javascript:alert('并没有PLUS会员服务');" target="_blank">PLUS会员</a></div>
                </div>
                <!-- 促销和公告 -->
                <div class="news J_news">
                    <div class="mod_tab news_tab J_news_tab">
                        <div class="mod_tab_head J_tab_head clearfix">
                            <a href="javascript:;" class="mod_tab_head_item news_first mod_tab_head_item_on">促销</a>
                            <a href="javascript:;" class="mod_tab_head_item news_last">公告</a>
                            <div class="news_tab_active J_news_tab_active"></div>
                        </div>
                        <div class="mod_tab_content J_tab_content">
                            <div class="mod_tab_content_item mod_tab_content_item_on">
                                <ul class="news_list">
                                    <li class="news_item"><a href="#" target="_blank" class="news_link">优惠怎么可能会有！</a></li>
                                </ul>
                            </div>
                            <div class="mod_tab_content_item">
                                <ul class="news_list">
                                    <li class="news_item"><a href="#" target="_blank" class="news_link">陈伟峰入驻东京</a></li>
                                    <li class="news_item"><a href="#" target="_blank" class="news_link">金晓彤入驻东京</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 服务栏 -->
                <div id="J_service" class="service">
                    <div class="service_entry">
                        <ul class="J_tab_head service_list">
                            <li class="service_item service_frame mod_tab_head_item">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_huafei"></i>
                                    <span class="service_txt">话费</span>
                                </a>
                            </li>
                            <li class="service_item service_frame mod_tab_head_item">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_jipiao"></i>
                                    <span class="service_txt">机票</span>
                                </a>
                            </li>
                            <li class="service_item service_frame mod_tab_head_item">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_jiudian"></i>
                                    <span class="service_txt">酒店</span>
                                </a>
                            </li>
                            <li class="service_item service_frame mod_tab_head_item">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_youxi"></i>
                                    <span class="service_txt">游戏</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_qyg"></i>
                                    <span class="service_txt">企业购</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_jiayou"></i>
                                    <span class="service_txt">加油卡</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_dianying"></i>
                                    <span class="service_txt">电影票</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_huoche"></i>
                                    <span class="service_txt">火车票</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_zhongchou"></i>
                                    <span class="service_txt">众筹</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_licai"></i>
                                    <span class="service_txt">理财</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_lipin"></i>
                                    <span class="service_txt">礼品卡</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="#" class="service_lk">
                                    <i class="service_ico service_ico_baitiao"></i>
                                    <span class="service_txt">白条</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="J_tab_content service_pop">
                        <div class="mod_tab_content_item service_pop_item mod_loading"></div>
                        <div class="mod_tab_content_item service_pop_item mod_loading"></div>
                        <div class="mod_tab_content_item service_pop_item mod_loading"></div>
                        <div class="mod_tab_content_item service_pop_item mod_loading"></div>
                        <a class="J_service_pop_close service_pop_close iconfont" href="javascript:;">&#xe600;</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="J_fs_act" class="fs_act"></div>
    </div>
    <!-- 推荐内容 -->
    <div class="J_f J_fbt need_ani fbt" id="fbt" data-tpl="fbt_tpl" data-custom="true" data-inlazyqueue="true">
        <div class="grid_c1 fbt_inner clearfix">
            <div class="box find fbt_col1 J_find">
                <div class="box_hd clearfix">
                    <i class="box_hd_arrow"></i><i class="box_hd_dec"></i>
                    <h3 class="box_tit">发现好货</h3>
                </div>
                <div class="box_bd clearfix">
                    <ul class="auto-style1">
                        <li class="find_item find_item_1" style="float:left"><a href="#" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>                     
                        <li class="find_item find_item_2" style="float:right"><a href="#" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>
                        <li class="find_item find_item_1" style="float:left"><a href="#" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>                     
                        <li class="find_item find_item_2" style="float:right"><a href="#" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>
                        <li class="find_item find_item_5" style="float:left"><a href="#" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>                     
                        <li class="find_item find_item_6" style="float:right"><a href="#" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>
                       
                    </ul>
                    

                </div>
            </div>
            <div class="box sup fbt_col2 J_sup">
                <div class="box_hd clearfix">
                    <i class="box_hd_arrow"></i><i class="box_hd_dec"></i>
                    <h3 class="box_tit">优品专辑</h3>
                </div>
                <div class="box_bd sup_tab J_sup_tab">
                    <div class="sup_page J_sup_page active" style="opacity: 1; z-index: 1; position: absolute;">
                        <a class="sup_page_lk" href="#" target="_blank">
                            <script>
                                (function () {
                                    var xmlhttp = new XMLHttpRequest();
                                    xmlhttp.open("GET", "/ajax/Index-ypzj.aspx?key=手机壳", true);
                                    xmlhttp.send();
                                    xmlhttp.onreadystatechange = function () {
                                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                            var res = xmlhttp.responseText;
                                            res = '<p class="sup_desc">优秀的手机壳，可以让你不可描述</p>' + res;
                                            $('.sup_page_lk')[0].innerHTML = res;
                                            $($('.sup_page_lk')[0]).attr('href', '/search.aspx?key=&type=&typeName=手机壳');
                                        }
                                        else if (xmlhttp.status == 500) {
                                            console.log('优品专辑加载失败:' + xmlhttp.responseText);
                                        }
                                    }
                                })()
                            </script>
                        </a>
                        <div class="sup_sep"></div>
                        <a class="sup_page_lk" href="#" target="_blank">
                            <script>
                                (function () {
                                    var xmlhttp = new XMLHttpRequest();
                                    xmlhttp.open("GET", "/ajax/Index-ypzj.aspx?key=进口电器", true);
                                    xmlhttp.send();
                                    xmlhttp.onreadystatechange = function () {
                                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                            var res = xmlhttp.responseText;
                                            res = '<p class="sup_desc">进口电器，是不是感觉老贵了</p>' + res;
                                            $('.sup_page_lk')[1].innerHTML = res;
                                            $($('.sup_page_lk')[1]).attr('href', '/search.aspx?key=&type=86&typeName=进口电器');
                                        }
                                        else if (xmlhttp.status == 500) {
                                            console.log('优品专辑加载失败:' + xmlhttp.responseText);
                                        }
                                    }
                                })();
                            </script>
                         </a>
                    </div>
                    <ul class="sup_ind">
                    </ul>
                </div>
            </div>
            <div class="box top fbt_col3 J_top">
                <div class="box_hd clearfix">
                    <i class="box_hd_arrow"></i><i class="box_hd_dec"></i>
                    <h3 class="box_tit">排行榜</h3>
                </div>
                <div class="box_bd top_tab J_top_tab">
                    <div class="top_tab_content J_tab_content">
                        <div class="J_tab_content_item top_tab_content_item top_tab_content_item_on" data-inlazyqueue="true" style="display: block;">
                            <ul class="top_list clearfix">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="J_f J_f_lift need_ani chn chn_t" id="portal_1" data-tpl="portal_tpl" data-backup="basic_1" data-source="cms:basic_1" data-inlazyqueue="true">
        <div class="ftit">
            <div class="grid_c1 ftit_inner">
                <h3>爱生活</h3>
            </div>
        </div>
        <div class="grid_c1 chn_inner chn_c2 clearfix">
            <div class="J_chn_col chn_col chn_col1">
                <div class="pt pt_cloth">
                    <div class="pt_hd pt_hd_qrcode">
                        <h3 class="pt_tit">爱逛</h3>
                    </div>
                    <div class="pt_bd_wrapper">
                        <div class="pt_bd pt_bd_col1">
                            <div class="pt_bd_inner">
                                <div class="pt_cover">
                                    <a href="#" class="pt_cover_lk" target="_blank">
                                        <img src="//img13.360buyimg.com/cms/s193x260_jfs/t5215/21/2573618256/78993/4a5cbdfc/591c240bN8a85ace7.jpg!q90" data-lazy-img="done" alt="服装城" title="服装城" class="pt_cover_img" data-webp="no"><i class="mod_actmark mod_actmark_portal"></i></a>
                                </div>
                                <div class="pt_bi pt_bi_4">
                                    <span class="pt_bi_split pt_bi_split_h"></span><span class="pt_bi_split pt_bi_split_v"></span><a href="#" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">格调男装</p>
                                        <p class="pt_bi_promo">不止5折</p>
                                        <img src="//img12.360buyimg.com/cms/s100x100_jfs/t5458/83/2632095237/15006/95fa4346/591c2443Nc5452c28.jpg!q90.webp" data-lazy-img="done" alt="格调男装" title="格调男装" class="pt_bi_img"></a><a href="#" class="pt_bi_item" target="_blank"><p class="pt_bi_tit">太平鸟集团</p>
                                            <p class="pt_bi_promo">低至59元</p>
                                            <img src="//img10.360buyimg.com/cms/s100x100_jfs/t5233/181/2582109153/20813/860c7f5a/591c2490Nf91ade31.jpg!q90.webp" data-lazy-img="done" alt="太平鸟集团" title="太平鸟集团" class="pt_bi_img"></a><a href="#" class="pt_bi_item" target="_blank" ><p class="pt_bi_tit">舒适内衣</p>
                                                <p class="pt_bi_promo">满99减20</p>
                                                <img src="//img13.360buyimg.com/cms/s100x100_jfs/t5566/101/2542731565/28193/1ca3b15c/591c252aN58c278f3.jpg!q90.webp" data-lazy-img="done" alt="舒适内衣" title="舒适内衣" class="pt_bi_img"></a><a href="#" class="pt_bi_item" target="_blank"><p class="pt_bi_tit">PLUS会员</p>
                                                    <p class="pt_bi_promo">199减50</p>
                                                    <img src="//img13.360buyimg.com/cms/s100x100_jfs/t5602/153/1315574365/47724/8aeee3df/59252f4aNe8c47528.png!q90.webp" data-lazy-img="done" alt="PLUS会员" title="PLUS会员" class="pt_bi_img"></a>
                                </div>
                                <div class="pt_more">
                                    <a href="#" class="pt_more_item" target="_blank">
                                        <img src="//img11.360buyimg.com/da/s193x130_jfs/t5743/295/1321273424/27765/77d5bd12/59252f6cN84bb6f6a.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a>
                                    <a href="#" class="pt_more_item" target="_blank">
                                        <img src="//img20.360buyimg.com/da/s193x130_jfs/t3901/245/497456384/60571/b002635e/5850158dNecf39355.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a>
                                    <a href="#" class="pt_more_item" target="_blank">
                                        <img src="//img20.360buyimg.com/da/s193x130_jfs/t3901/245/497456384/60571/b002635e/5850158dNecf39355.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a>
                                </div>
                            </div>
                            <div class="pt_bd_hide"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="J_chn_col chn_col chn_col2">
                <div class="pt pt_beauty">
                    <div class="pt_hd pt_hd_qrcode">
                        <h3 class="pt_tit">爱美丽</h3>
                    </div>
                    <div class="pt_bd_wrapper">
                        <div class="pt_bd pt_bd_col1">
                            <div class="pt_bd_inner">
                                <div class="pt_cover">
                                    <a href="#" class="pt_cover_lk" target="_blank">
                                        <img src="//img12.360buyimg.com/cms/s193x260_jfs/t5830/153/265547024/51386/b5f7912/591e5da6Nbd28f443.jpg!q90" data-lazy-img="done" alt="美妆商城" title="美妆商城" class="pt_cover_img" data-webp="no"><i class="mod_actmark mod_actmark_portal"></i></a>
                                </div>
                                <div class="pt_bi pt_bi_4">
                                    <span class="pt_bi_split pt_bi_split_h"></span>
                                    <span class="pt_bi_split pt_bi_split_v"></span>
                                    <a href="#" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">美妆馆</p>
                                        <p class="pt_bi_promo">尖货买二免一</p>
                                        <img src="//img12.360buyimg.com/cms/s100x100_jfs/t4696/114/2737301948/14622/2de4a74d/591e5dcdN2587cab6.jpg!q90.webp" data-lazy-img="done" alt="美妆馆" title="美妆馆" class="pt_bi_img"></a>
                                    <a href="#" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">面部护肤</p>
                                        <p class="pt_bi_promo">尖货买二免一</p>
                                        <img src="//img12.360buyimg.com/cms/s100x100_jfs/t5644/141/247071032/14404/7aaf9539/591e5e08N17a068d6.jpg!q90.webp" data-lazy-img="done" alt="面部护肤" title="面部护肤" class="pt_bi_img"></a>
                                    <a href="#" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">香水彩妆</p>
                                        <p class="pt_bi_promo">低至199减80</p>
                                        <img src="//img11.360buyimg.com/cms/s100x100_jfs/t5704/294/250787583/11670/3f00929d/591e5e3eN8e971144.jpg!q90.webp" data-lazy-img="done" alt="香水彩妆" title="香水彩妆" class="pt_bi_img"></a>
                                    <a href="#" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">个护馆</p>
                                        <p class="pt_bi_promo">第二件0元</p>
                                        <img src="//img13.360buyimg.com/cms/s100x100_jfs/t5674/187/254913436/23414/51fcc92c/591e5d31N85268154.jpg!q90.webp" data-lazy-img="done" alt="个护馆" title="个护馆" class="pt_bi_img"></a>
                                </div>
                                <div class="pt_more">
                                    <a href="#" class="pt_more_item" target="_blank">
                                        <img src="//img13.360buyimg.com/da/s193x130_jfs/t5635/135/1313641261/31052/a8ed5ee0/5925220fN334e6771.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a>
                                    <a href="#" class="pt_more_item" target="_blank">
                                        <img src="//img14.360buyimg.com/da/s193x130_jfs/t5686/115/329796523/38313/f325d5e7/591eb625N63633a4a.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a>
                                    <a href="#" class="pt_more_item" target="_blank">
                                        <img src="//img1.360buyimg.com/da/s193x130_jfs/t5401/111/2565992746/17423/cf1f97e2/591c18f7N9d8a1f03.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a>
                                </div>
                            </div>
                            <div class="pt_bd_hide"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--<div class="J_f J_lazyload J_f_lift mod_lazyload need_ani chn" id="portal_2" data-backup="basic_2" data-source="cms:basic_2" data-tpl="portal_tpl">
    </div>
    <div class="J_f J_lazyload J_f_lift mod_lazyload need_ani chn" id="portal_3" data-backup="basic_3" data-source="cms:basic_3" data-tpl="portal_tpl">
    </div>
    <div class="J_f J_lazyload J_f_lift mod_lazyload need_ani chn" id="portal_4" data-backup="basic_4" data-source="cms:basic_4" data-tpl="portal_tpl">
    </div>
    <div class="J_f J_lazyload J_f_lift mod_lazyload need_ani chn" id="portal_5" data-backup="basic_5" data-source="cms:basic_5" data-tpl="portal_tpl">
    </div>
    <div class="J_f J_lazyload J_f_lift mod_lazyload need_ani chn" id="portal_6" data-backup="basic_6" data-source="cms:basic_6" data-tpl="portal_tpl">
    </div>
    <div class="J_f J_lazyload J_f_lift mod_lazyload need_ani chn" id="portal_7" data-backup="basic_7" data-source="cms:basic_7" data-tpl="portal_tpl">
    </div>
    <div class="J_f J_lazyload J_f_lift mod_lazyload need_ani chn" id="portal_8" data-backup="basic_8" data-source="cms:basic_8" data-tpl="portal_tpl">
    </div>
    <div class="J_f J_lazyload mod_lazyload need_ani entry entry_c7 entry_2" id="entry_2" data-backup="special_2" data-source="cms:special_2" data-tpl="entry_tpl">
    </div>
    <div class="J_f J_lazyload J_f_lift mod_lazyload more J_more" id="more" data-custom="true" data-tpl="more_tpl">
    </div>
    <div class="J_f J_lazyload mod_lazyload mod_footer" id="footer" data-tpl="mod_footer_tpl">
    </div>
    <div class="J_f J_lazyload J_lift mod_lazyload lift" id="lift" data-tpl="elevator_tpl" data-forcerender="true">
    </div>-->
    <div id="J-global-toolbar">
        <div class="jdm-toolbar-wrap J-wrap">
            <div class="jdm-toolbar J-toolbar">
                <div class="jdm-toolbar-tabs J-tab">
                    <div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-jdvip" data-name="jdvip" data-login="true" data-iframe="//vip.jd.com/sideBar/index.html">
                        <i class="tab-ico"></i><em class="tab-text">东京会员</em><span class="tab-sub J-count hide">0</span>
                    </div>
                    <div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-cart" data-name="cart">
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
    <script src="/js/index.js"></script>
</body>
</html>
