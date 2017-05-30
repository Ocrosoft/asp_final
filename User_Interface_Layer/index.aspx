<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="User_Interface_Layer.index" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>京东(JD.COM)-正品低价、品质保障、配送及时、轻松购物！</title>
    <meta name="description" content="京东JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东" />
    <link rel="icon" href="//www.jd.com/favicon.ico" type="image/x-icon" />
    <link rel="search" title="京东JD.com" href="//misc.360buyimg.com/mtd/pc/common/conf/search.xml" type="application/opensearchdescription+xml" />
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
    <div id="shortcut">
        <div class="w">
            <ul class="fl">
                <li class="dorpdown" id="ttbar-mycity"></li>
            </ul>
            <ul class="fr">
                <li class="fore1" id="ttbar-login">
                    <asp:Label ID="ttbar_login_server" runat="server">
                        <a href="javascript:location.href='login.aspx?reutnURL='+location.href;" class="link-login">你好，请登录</a>&nbsp;&nbsp;
                        <a href="javascript:location.href='reg.aspx?reutnURL='+location.href;" class="link-regist style-red">免费注册</a>
                    </asp:Label>
                </li>
                <li class="spacer"></li>
                <li class="fore2">
                    <div class="dt"><a target="_blank" href="//order.jd.com/center/list.action">我的订单</a></div>
                </li>
                <li class="spacer"></li>
                <li class="fore3 dorpdown" id="ttbar-myjd">
                    <div class="dt cw-icon"><a target="_blank" href="//home.jd.com/">我的京东</a><i class="iconfont">&#xe605;</i><i class="ci-right"><s>◇</s></i></div>
                    <div class="dd dorpdown-layer"></div>
                </li>
                <li class="spacer"></li>
                <li class="fore4">
                    <div class="dt"><a target="_blank" href="//vip.jd.com/">京东会员</a></div>
                </li>
                <li class="spacer"></li>
                <li class="fore5">
                    <div class="dt"><a target="_blank" href="//b.jd.com/">企业采购</a></div>
                </li>
                <li class="spacer"></li>
                <li class="fore8 dorpdown" id="ttbar-serv">
                    <div class="dt cw-icon">客户服务<i class="iconfont">&#xe605;</i><i class="ci-right"><s>◇</s></i></div>
                    <div class="dd dorpdown-layer"></div>
                </li>
                <li class="spacer"></li>
                <li class="fore9 dorpdown" id="ttbar-navs">
                    <div class="dt cw-icon">网站导航<i class="iconfont">&#xe605;</i><i class="ci-right"><s>◇</s></i></div>
                    <div class="dd dorpdown-layer"></div>
                </li>
                <li class="spacer"></li>
                <li class="fore10 mobile" id="J_mobile">
                    <div class="dt mobile_txt">手机京东</div>
                    <div class="mobile_static">
                        <div class="mobile_static_qrcode"></div>
                    </div>
                    <div id='J_mobile_pop' class='mod_loading mobile_pop'>
                    </div>
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
                <h1 class="logo_tit"><a href="//www.jd.com" class="logo_tit_lk">京东</a></h1>
                <h2 class="logo_subtit">京东,多快好省</h2>
                <div class="logo_extend"></div>
            </div>
            <div id="search">
                <div class="search-m">
                    <div class="search_logo">
                        <a href="//www.jd.com" class="search_logo_lk">京东，多快好省</a>
                    </div>
                    <ul id="shelper" style="display: none"></ul>
                    <div class="form">
                        <input type="text" onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key" accesskey="s" class="text" />
                        <button onclick="search('key');return false;" class="button"><i class="iconfont">&#xe603;</i></button>
                    </div>
                </div>
            </div>
            <div id="settleup" class="dorpdown">
                <div class="cw-icon">
                    <i class="ci-left"></i>
                    <i class="ci-right"></i>
                    <i class="iconfont">&#xe607;</i>
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
            <div id="navitems">
                <ul id="navitems-group1">
                    <li class="fore1">
                        <a target="_blank" href="//miaosha.jd.com/">秒杀</a>
                    </li>
                    <li class="fore2">
                        <a target="_blank" href="https://a.jd.com/">优惠券</a>
                    </li>
                    <li class="fore3">
                        <a target="_blank" href="//red.jd.com/">闪购</a>
                    </li>
                    <li class="fore4">
                        <a target="_blank" href="//paimai.jd.com/">拍卖</a>
                    </li>
                </ul>
                <div class="spacer"></div>
                <ul id="navitems-group2">
                    <li class="fore1">
                        <a target="_blank" href="https://channel.jd.com/fashion.html ">服装城</a>
                    </li>
                    <li class="fore2">
                        <a target="_blank" href="//chaoshi.jd.com/">京东超市</a>
                    </li>
                    <li class="fore3">
                        <a target="_blank" href="//fresh.jd.com/">生鲜</a>
                    </li>
                    <li class="fore4">
                        <a target="_blank" href="//www.jd.hk/">全球购</a>
                    </li>
                </ul>
                <div class="spacer"></div>
                <ul id="navitems-group3">
                    <li class="fore1">
                        <a target="_blank" href="//jr.jd.com/">京东金融</a>
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
                    <div id="popCtn" style="display: none;" class="cate_pop">
                        <asp:Label ID="server_cate_pop" runat="server">
                        </asp:Label>
                    </div><!--class="cate_pop"-->
                </div>
            </div>
            <div class="fs_col2">
                <div class="J_slider slider">
                    <div class="J_slider_main slider_main"></div>
                    <div class="J_slider_extend slider_extend clearfix"></div>
                </div>
            </div>
            <div class="fs_col3">
                <!-- 用户信息 -->
                <div class="J_user user mod_loading">
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
                                    <li class="news_item"><a href="https://sale.jd.com/act/foqXLEhMRNHu2jB.html" target="_blank" class="news_link">优惠怎么可能会有！</a></li>
                                </ul>
                            </div>
                            <div class="mod_tab_content_item">
                                <ul class="news_list">
                                    <li class="news_item"><a href="//www.jd.com/news.aspx?id=34079" target="_blank" class="news_link">陈伟峰入驻东京</a></li>
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
                                <a target="_blank" href="//chongzhi.jd.com/" class="service_lk">
                                    <i class="service_ico service_ico_huafei"></i>
                                    <span class="service_txt">话费</span>
                                </a>
                            </li>
                            <li class="service_item service_frame mod_tab_head_item">
                                <a target="_blank" href="//jipiao.jd.com/" class="service_lk">
                                    <i class="service_ico service_ico_jipiao"></i>
                                    <span class="service_txt">机票</span>
                                </a>
                            </li>
                            <li class="service_item service_frame mod_tab_head_item">
                                <a target="_blank" href="//hotel.jd.com/" class="service_lk">
                                    <i class="service_ico service_ico_jiudian"></i>
                                    <span class="service_txt">酒店</span>
                                </a>
                            </li>
                            <li class="service_item service_frame mod_tab_head_item">
                                <a target="_blank" href="//game.jd.com/" class="service_lk">
                                    <i class="service_ico service_ico_youxi"></i>
                                    <span class="service_txt">游戏</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="//b.jd.com/" class="service_lk">
                                    <i class="service_ico service_ico_qyg"></i>
                                    <span class="service_txt">企业购</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="//jiayouka.jd.com/" class="service_lk">
                                    <i class="service_ico service_ico_jiayou"></i>
                                    <span class="service_txt">加油卡</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="//movie.jd.com/index.html" class="service_lk">
                                    <i class="service_ico service_ico_dianying"></i>
                                    <span class="service_txt">电影票</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="//train.jd.com/" class="service_lk">
                                    <i class="service_ico service_ico_huoche"></i>
                                    <span class="service_txt">火车票</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="//z.jd.com/sceneIndex.html?from=jrscyn_20162" class="service_lk">
                                    <i class="service_ico service_ico_zhongchou"></i>
                                    <span class="service_txt">众筹</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="//licai.jd.com/?from=jrscyn_20161" class="service_lk">
                                    <i class="service_ico service_ico_licai"></i>
                                    <span class="service_txt">理财</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="//o.jd.com/market/index.action" class="service_lk">
                                    <i class="service_ico service_ico_lipin"></i>
                                    <span class="service_txt">礼品卡</span>
                                </a>
                            </li>
                            <li class="service_item ">
                                <a target="_blank" href="//baitiao.jd.com/?from=jrscyn_20160" class="service_lk">
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
    <div class="J_f J_fbt need_ani fbt" id="fbt" data-tpl="fbt_tpl" data-custom="true" data-inlazyqueue="true">
        <div class="grid_c1 fbt_inner clearfix">
            <div class="box find fbt_col1 J_find">
                <div class="box_hd clearfix">
                    <i class="box_hd_arrow"></i><i class="box_hd_dec"></i>
                    <h3 class="box_tit">发现好货</h3>
                </div>
                <div class="box_bd clearfix">
                    <ul class="auto-style1">
                        <li class="find_item find_item_1" style="float:left"><a href="//fxhh.jd.com/#944643" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>                     
                        <li class="find_item find_item_2" style="float:right"><a href="//fxhh.jd.com/#944643" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>
                        <li class="find_item find_item_1" style="float:left"><a href="//fxhh.jd.com/#944643" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>                     
                        <li class="find_item find_item_2" style="float:right"><a href="//fxhh.jd.com/#944643" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>
                        <li class="find_item find_item_5" style="float:left"><a href="//fxhh.jd.com/#944643" target="_blank" class="find_item_lk">
                            <p class="find_item_name">COACH撞色牛皮单肩包</p>
                            <img src="//img13.360buyimg.com/mobilecms/s80x80_jfs/t5809/219/1316500039/323101/cffb66e0/592554c2Nd2a3ffb7.jpg!q90.webp" data-lazy-img="done" alt="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" title="这款单肩包采用牛皮材质打造，表层纹理充满肌理感，配以立体方形造型，增强了视觉效果；包身融入撞色条纹装饰，赋予时尚潮流气质，凸显型男生活品位；内部合理空间格局，满足多样化的存放需求。" class="find_item_img"></a>
                        </li>                     
                        <li class="find_item find_item_6" style="float:right"><a href="//fxhh.jd.com/#944643" target="_blank" class="find_item_lk">
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
                        <a class="sup_page_lk" href="//ypzj.jd.com/#452850" target="_blank">
                            <p class="sup_desc">不花冤枉钱，端午节送父母千元机正合适</p>
                            <img class="sup_img J_sup_img" src="//img12.360buyimg.com/mobilecms/s110x110_jfs/t5020/139/1417548519/236758/1e1f5405/58f09a36N39a9fd9a.jpg" data-lazy-src="//img12.360buyimg.com/mobilecms/s110x110_jfs/t5020/139/1417548519/236758/1e1f5405/58f09a36N39a9fd9a.jpg">
                            <img class="sup_img J_sup_img" src="//img13.360buyimg.com/mobilecms/s110x110_jfs/t5305/21/467548198/211117/19a0aec6/59004ba9N05faa926.jpg" data-lazy-src="//img13.360buyimg.com/mobilecms/s110x110_jfs/t5305/21/467548198/211117/19a0aec6/59004ba9N05faa926.jpg">
                            <img class="sup_img J_sup_img" src="//img14.360buyimg.com/mobilecms/s110x110_jfs/t4699/46/416468667/286668/d418f3df/58cf4c36Ncebeef9d.jpg" data-lazy-src="//img14.360buyimg.com/mobilecms/s110x110_jfs/t4699/46/416468667/286668/d418f3df/58cf4c36Ncebeef9d.jpg">
                        </a>
                        <div class="sup_sep"></div>
                        <a class="sup_page_lk" href="//ypzj.jd.com/#451591" target="_blank">
                            <p class="sup_desc">大容量装更多，轻奢变频对开门冰箱</p>
                            <img class="sup_img J_sup_img" src="//img10.360buyimg.com/mobilecms/s110x110_jfs/t5338/30/896940513/435408/4a750829/59093038Nb06eeeca.jpg" data-lazy-src="//img10.360buyimg.com/mobilecms/s110x110_jfs/t5338/30/896940513/435408/4a750829/59093038Nb06eeeca.jpg">
                            <img class="sup_img J_sup_img" src="//img11.360buyimg.com/mobilecms/s110x110_jfs/t2971/141/948667645/189678/fbaf8c36/57709c10N1110f07e.jpg" data-lazy-src="//img11.360buyimg.com/mobilecms/s110x110_jfs/t2971/141/948667645/189678/fbaf8c36/57709c10N1110f07e.jpg">
                            <img class="sup_img J_sup_img" src="//img12.360buyimg.com/mobilecms/s110x110_jfs/t5338/46/150164446/145761/125ff7aa/58f9c1c7N071c716d.jpg" data-lazy-src="//img12.360buyimg.com/mobilecms/s110x110_jfs/t5338/46/150164446/145761/125ff7aa/58f9c1c7N071c716d.jpg">
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
                                <li class="top_item top_item_1"><a href="//top.jd.com?cateId=653&amp;itemId=3133821" target="_blank" class="top_lk">
                                    <div class="top_rank top_rank_1">1</div>
                                    <div class="top_pic">
                                        <img src="//img11.360buyimg.com/mobilecms/s100x100_jfs/t3193/308/1586388837/134147/92414e51/57d0c55bNa8230260.jpg!q90.webp" data-lazy-img="done" alt="Apple iPhone 7 (A1660) 128G 金色 移动联通电信4G手机" title="Apple iPhone 7 (A1660) 128G 金色 移动联通电信4G手机" class="top_img">
                                    </div>
                                    <p class="top_name">Apple iPhone 7 (A1660) 128G 金色 移动联通电信4G手机</p>
                                </a></li>
                                <li class="top_item top_item_2"><a href="//top.jd.com?cateId=653&amp;itemId=4586850" target="_blank" class="top_lk">
                                    <div class="top_rank top_rank_2">2</div>
                                </a></li>
                                <li class="top_item top_item_3"><a href="//top.jd.com?cateId=653&amp;itemId=3867555" target="_blank" class="top_lk">
                                    <div class="top_rank top_rank_3">3</div>
                                </a></li>
                                <li class="top_item top_item_4"><a href="//top.jd.com?cateId=653&amp;itemId=3726830" target="_blank" class="top_lk">
                                    <div class="top_rank top_rank_4">4</div>
                                </a></li>
                                <li class="top_item top_item_5"><a href="//top.jd.com?cateId=653&amp;itemId=3370136" target="_blank" class="top_lk">
                                    <div class="top_rank top_rank_5">5</div>
                                </a></li>
                                <li class="top_item top_item_6"><a href="//top.jd.com?cateId=653&amp;itemId=3719293" target="_blank" class="top_lk">
                                    <div class="top_rank top_rank_6">6</div>
                                </a></li>
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
                                    <a href="//channel.jd.com/fashion.html" class="pt_cover_lk" target="_blank">
                                        <img src="//img13.360buyimg.com/cms/s193x260_jfs/t5215/21/2573618256/78993/4a5cbdfc/591c240bN8a85ace7.jpg!q90" data-lazy-img="done" alt="服装城" title="服装城" class="pt_cover_img" data-webp="no"><i class="mod_actmark mod_actmark_portal"></i></a>
                                </div>
                                <div class="pt_bi pt_bi_4">
                                    <span class="pt_bi_split pt_bi_split_h"></span><span class="pt_bi_split pt_bi_split_v"></span><a href="//channel.jd.com/men.html" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">格调男装</p>
                                        <p class="pt_bi_promo">不止5折</p>
                                        <img src="//img12.360buyimg.com/cms/s100x100_jfs/t5458/83/2632095237/15006/95fa4346/591c2443Nc5452c28.jpg!q90.webp" data-lazy-img="done" alt="格调男装" title="格调男装" class="pt_bi_img"></a><a href="//channel.jd.com/women.html" class="pt_bi_item" target="_blank"><p class="pt_bi_tit">太平鸟集团</p>
                                            <p class="pt_bi_promo">低至59元</p>
                                            <img src="//img10.360buyimg.com/cms/s100x100_jfs/t5233/181/2582109153/20813/860c7f5a/591c2490Nf91ade31.jpg!q90.webp" data-lazy-img="done" alt="太平鸟集团" title="太平鸟集团" class="pt_bi_img"></a><a href="//channel.jd.com/underwear.html" class="pt_bi_item" target="_blank" ><p class="pt_bi_tit">舒适内衣</p>
                                                <p class="pt_bi_promo">满99减20</p>
                                                <img src="//img13.360buyimg.com/cms/s100x100_jfs/t5566/101/2542731565/28193/1ca3b15c/591c252aN58c278f3.jpg!q90.webp" data-lazy-img="done" alt="舒适内衣" title="舒适内衣" class="pt_bi_img"></a><a href="//sale.jd.com/act/uwZDqEzY6WRp1kMm.html" class="pt_bi_item" target="_blank"><p class="pt_bi_tit">PLUS会员</p>
                                                    <p class="pt_bi_promo">199减50</p>
                                                    <img src="//img13.360buyimg.com/cms/s100x100_jfs/t5602/153/1315574365/47724/8aeee3df/59252f4aNe8c47528.png!q90.webp" data-lazy-img="done" alt="PLUS会员" title="PLUS会员" class="pt_bi_img"></a>
                                </div>
                                <div class="pt_more">
                                    <a href="//c-nfa.jd.com/adclick?keyStr=6PQwtwh0f06syGHwQVvROzh5ulIgMw7+jmnFGWIVTm4U8h5u7piHBpDE3sCn0Cwu02eFgy4adH5nPwjjizH4fzdwCDsuftl3z0WdHdCoAuR5E7dcnurpPSWFXSiMMeSS4fLWlvRBkxoM4QrINBB7LfrWQDrwCXKb8AYtABhwxk1FFq0KsGldBoQSZy0+kaP7Pg/5lcwJ9ODRALR4zzW6KndBYMCVFxlbZRUKij7Z92358nvVR6ukal9j8UOUAB7XX2eOVm6BWJgL+STwEf7TGxhRUJO1SzbN9ghEGFXB7f90eAcCcxt4/aYpXclWi6Ay4kZYtET9oANOMTk0wDstKw==&amp;cv=2.0&amp;url=//sale.jd.com/act/afeSkDZy1in60BEO.html" class="pt_more_item" target="_blank" clstag="h|keycount|2016|22e01" fclog="16613.111018.382415.1.571_1792_8552">
                                        <img src="//img11.360buyimg.com/da/s193x130_jfs/t5743/295/1321273424/27765/77d5bd12/59252f6cN84bb6f6a.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a><a href="//c-nfa.jd.com/adclick?keyStr=6PQwtwh0f06syGHwQVvROzh5ulIgMw7+jmnFGWIVTm6haJ4p3BNBARg3ax11hXAMemGqdzyqQCrCDah8dFbeaKo/UyNbkWI6APaCD0pQ/a9HWmoByPeXmwN+vPPmAue8sHXHOiZpi/DsCT0QQvZf+XM8S9XfpOHswn906TWu53Nsu5n0wC4ckcx894yhrY7lYz8ddh/GbNfIuDAiJ4gYKt4X/q+Z8U55m5KtuyGo30ndx+esPeiui5d2e7/61yXMEGCZSv23KzLEJ7iIcELU9Hh3ogyOSAmBubHByDZy7kg=&amp;cv=2.0&amp;url=//jdd.jd.com/" class="pt_more_item" target="_blank" clstag="h|keycount|2016|22e02" fclog="0.111019.319335.1.571_1792_8553"><img src="//img20.360buyimg.com/da/s193x130_jfs/t3901/245/497456384/60571/b002635e/5850158dNecf39355.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a><a href="//c-nfa.jd.com/adclick?keyStr=6PQwtwh0f06syGHwQVvROzh5ulIgMw7+jmnFGWIVTm4Jv1qtA9LDIwr1Gka46VKlWAnRzzylm8DbyP48mKPpRuAthx8clfve5ag27RQ90O5HWmoByPeXmwN+vPPmAue88vbCjJwzgisfHGxcwS/sj5xVjS3SwgLqbDyIAysYHdPRTJsTIxEzUWvc8qV23bIeAkuOIdHLRtkW/q4CIdzM/gKe2acHG0Ajuj9L8JXxidE+hmSpgLz9xmR1xEiObDPEY2cXhMASnNvmSUyLnxgFsxMv49nQdfWafuMVCtVmz8qXOlcppL6VE6XAjxQTKJJ8WOo1bdnPYgppNB+nDWfC8A==&amp;cv=2.0&amp;url=//sale.jd.com/act/z0VyocApfkbCue.html" class="pt_more_item" target="_blank" clstag="h|keycount|2016|22e03" fclog="0.111021.317646.1.571_1792_8554"><img src="//img14.360buyimg.com/da/s193x130_jfs/t5803/234/854247135/22746/58c7ed13/59223e64Nf7e872ba.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a>
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
                                    <a href="//channel.jd.com/beauty.html" class="pt_cover_lk" target="_blank" clstag="h|keycount|2016|23c01">
                                        <img src="//img12.360buyimg.com/cms/s193x260_jfs/t5830/153/265547024/51386/b5f7912/591e5da6Nbd28f443.jpg!q90" data-lazy-img="done" alt="美妆商城" title="美妆商城" class="pt_cover_img" data-webp="no"><i class="mod_actmark mod_actmark_portal"></i></a>
                                </div>
                                <div class="pt_bi pt_bi_4">
                                    <span class="pt_bi_split pt_bi_split_h"></span>
                                    <span class="pt_bi_split pt_bi_split_v"></span>
                                    <a href="//beauty.jd.com/" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">美妆馆</p>
                                        <p class="pt_bi_promo">尖货买二免一</p>
                                        <img src="//img12.360buyimg.com/cms/s100x100_jfs/t4696/114/2737301948/14622/2de4a74d/591e5dcdN2587cab6.jpg!q90.webp" data-lazy-img="done" alt="美妆馆" title="美妆馆" class="pt_bi_img"></a>
                                    <a href="//channel.jd.com/1316-1381.html" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">面部护肤</p>
                                        <p class="pt_bi_promo">尖货买二免一</p>
                                        <img src="//img12.360buyimg.com/cms/s100x100_jfs/t5644/141/247071032/14404/7aaf9539/591e5e08N17a068d6.jpg!q90.webp" data-lazy-img="done" alt="面部护肤" title="面部护肤" class="pt_bi_img"></a>
                                    <a href="//channel.jd.com/1316-1387.html" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">香水彩妆</p>
                                        <p class="pt_bi_promo">低至199减80</p>
                                        <img src="//img11.360buyimg.com/cms/s100x100_jfs/t5704/294/250787583/11670/3f00929d/591e5e3eN8e971144.jpg!q90.webp" data-lazy-img="done" alt="香水彩妆" title="香水彩妆" class="pt_bi_img"></a>
                                    <a href="//hbc.jd.com/" class="pt_bi_item" target="_blank">
                                        <p class="pt_bi_tit">个护馆</p>
                                        <p class="pt_bi_promo">第二件0元</p>
                                        <img src="//img13.360buyimg.com/cms/s100x100_jfs/t5674/187/254913436/23414/51fcc92c/591e5d31N85268154.jpg!q90.webp" data-lazy-img="done" alt="个护馆" title="个护馆" class="pt_bi_img"></a>
                                </div>
                                <div class="pt_more">
                                    <a href="//c-nfa.jd.com/adclick?keyStr=6PQwtwh0f06syGHwQVvROzh5ulIgMw7+jmnFGWIVTm6ry+JipfVh+0rkjAjSvxR7GXjdABAf8TJaBcFUD2Dk4lfrSm8q2rHiycFR5dQtZmUMfQjwWrjvL0Cdp7FWTKH34fLWlvRBkxoM4QrINBB7LaSz2Ao6X6HlvANjUH5vsKZo9xOf7LPRTPnYT7v5ClP9qg7lBKMNaPUH7HUwVbi2CBd0Hr7Fi8hVunvZC4tPYiigwBDdtxSPU3z8cp50sfgiF1pAhcXBWv+zgtdSUzgYBEGXVSM3evs0GIN7W0oIHYZuynqN4iTv4/b1f66WBNE0YyuRuUC5Ueuy0w4BtYM9ig==&amp;cv=2.0&amp;url=//sale.jd.com/act/ITXqm8Gn6DMy.html" class="pt_more_item" target="_blank" clstag="h|keycount|2016|23e01" fclog="16932.111024.382371.1.571_1792_8555">
                                        <img src="//img13.360buyimg.com/da/s193x130_jfs/t5635/135/1313641261/31052/a8ed5ee0/5925220fN334e6771.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a><a href="//c-nfa.jd.com/adclick?keyStr=6PQwtwh0f06syGHwQVvROzh5ulIgMw7+jmnFGWIVTm5CtKtocznSWzsQuAy2+j8yoYgBYKgRfaOER3zoc/t4+1bWdkFCvI59CGm609s5j8VHWmoByPeXmwN+vPPmAue8voHHlU5rMnLEPNn9WazGg2Ws2J0Be3FqXvsfsXQaxUkDKPWBMbcljOF04Ay5LXifzcHJ2ltM3Zj7gMXaNqWrNUHDHJOWgajMpcFLrQ7KrFLIxN0P8kYidLo8ATDXnhBNGsF79cSHbjZyaB7bQmyL/fo0trTgEVa5wyiRtYrPVJi4d/w23oTQBvdc76jXa2OO&amp;cv=2.0&amp;url=//channel.jd.com/1620-1625.html" class="pt_more_item" target="_blank" clstag="h|keycount|2016|23e02" fclog="0.111026.317662.1.571_1792_8556"><img src="//img14.360buyimg.com/da/s193x130_jfs/t5686/115/329796523/38313/f325d5e7/591eb625N63633a4a.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a><a href="//c-nfa.jd.com/adclick?keyStr=6PQwtwh0f06syGHwQVvROzh5ulIgMw7+jmnFGWIVTm4zhvotwjxsax0IcvGCZ/dibNiVVlK/YF689DNEwajS6n409RxtAjAmevkMiN3gjYp2nKCvv/rmVuhAXOLi2MaQ4fLWlvRBkxoM4QrINBB7LXPWmq1s4Fh9LGiuavkwYwlJP1MJu1O4HKKK6wz/bhesqg7lBKMNaPUH7HUwVbi2CBd0Hr7Fi8hVunvZC4tPYiigwBDdtxSPU3z8cp50sfgiF1pAhcXBWv+zgtdSUzgYBEGXVSM3evs0GIN7W0oIHYZuynqN4iTv4/b1f66WBNE0YyuRuUC5Ueuy0w4BtYM9ig==&amp;cv=2.0&amp;url=//sale.jd.com/act/k3uf5gMiZlCI.html" class="pt_more_item" target="_blank" clstag="h|keycount|2016|23e03" fclog="18685.111028.380317.1.571_1792_8557"><img src="//img1.360buyimg.com/da/s193x130_jfs/t5401/111/2565992746/17423/cf1f97e2/591c18f7N9d8a1f03.jpg!q90" data-lazy-img="done" alt="" title="" class="pt_more_img" data-webp="no"></a>
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
        </div-->
    <!--<script src="/js/index.js"></script>-->
    <script src="/js/index-cate.js"></script>
</body>
</html>
