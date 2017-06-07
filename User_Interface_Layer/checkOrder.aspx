<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkOrder.aspx.cs" Inherits="User_Interface_Layer.checkOrder" %>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="format-detection" content="telephone=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>订单结算页 -京东商城</title>
    <!--结算页面样式-->
    <link rel="stylesheet" href="//sp.jd.com/payment/1.2.0/css/bankList.css" charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/user/purchase/2.0.0/widget/??common/common.css,header-2015/header-2015.css,consignee-scroll/consignee-scroll.css,consignee-selfpick/consignee-selfpick.css,payment-step/payment-step.css,presale-step/presale-step.css,shopping-list/shopping-list.css,invoice-dialog/invoice-dialog.css,order-virtual/order-virtual.css,order-summary/order-summary.css,checkout-floatbar/checkout-floatbar.css,paypwd/paypwd.css,/delivery-calendar-freight/delivery-calendar-freight.css,backpanel/backpanel.css" source="widget" />
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/1.0.0/ui-base.css,shortcut/2.0.0/shortcut.css,global-header/1.0.0/global-header.css,myjd/2.0.0/myjd.css,nav/2.0.0/nav.css,shoppingcart/2.0.0/shoppingcart.css,global-footer/1.0.0/global-footer.css,service/1.0.0/service.css" />
    <link charset="utf-8" rel="stylesheet" href="https://misc.360buyimg.com/jdf/1.0.0/ui/tips/1.0.0/tips.css" />
    <link charset="utf-8" rel="stylesheet" href="https://misc.360buyimg.com/jdf/1.0.0/ui/dialog/1.0.0/dialog.css" />
    <script src="/js/jquery-2.1.4.min.js"></script>
</head>
<body id="mainframe">
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
                        <a target="_blank" href="http://order.jd.com/center/list.action">我的订单</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore3 dorpdown" id="ttbar-myjd">
                    <div class="dt cw-icon">
                        <i class="ci-right"><s>◇</s></i>
                        <a target="_blank" href="http://home.jd.com/">我的京东</a>
                    </div>
                    <div class="dd dorpdown-layer"></div>
                </li>
                <li class="spacer"></li>
                <li class="fore4">
                    <div class="dt">
                        <a target="_blank" href="http://vip.jd.com/">京东会员</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore5">
                    <div class="dt">
                        <a target="_blank" href="http://b.jd.com/">企业采购</a>
                    </div>
                </li>
                <li class="spacer"></li>
                <li class="fore6 dorpdown" id="ttbar-apps">
                    <div class="dt cw-icon">
                        <i class="ci-left"></i>
                        <i class="ci-right"><s>◇</s></i>
                        <a target="_blank" href="http://app.jd.com/">手机京东</a>
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
    <!--shortcut end-->


    <div class="w w1 header clearfix">
        <div id="logo">
            <a href="http://www.jd.com/" class="link1" target="_blank">
                <img src="//misc.360buyimg.com/lib/img/e/logo-201305.png" alt="京东商城"></a>
            <a href="#none" class="link2"><b></b>"结算页"</a>
        </div>
        <div class="stepflex" id="#sflex03">
            <dl class="first done">
                <dt class="s-num">1</dt>
                <dd class="s-text">1.我的购物车<s></s><b></b></dd>
            </dl>
            <dl class="normal doing">
                <dt class="s-num">2</dt>
                <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
            </dl>
            <dl class="normal last">
                <dt class="s-num">3</dt>
                <dd class="s-text">3.成功提交订单<s></s><b></b></dd>
            </dl>
        </div>
    </div>

    <!-- main -->
    <div id="container">
        <div id="content" class="w">
            <div class="checkout-tit">
                <span class="tit-txt">填写并核对订单信息</span>
            </div>
            <!--<div class="mc">-->
            <div class="checkout-steps">
                <!--  /widget/consignee-step/consignee-step.tpl -->
                <div class="step-tit">
                    <h3>收货人信息</h3>
                    <div class="extra-r">
                        <a href="#none" class="ftx-05 J_consignee_global" onclick=";">修改收货地址</a>
                    </div>
                </div>
                <div class="step-cont">
                    <div id="consignee-addr" class="consignee-content">
                        <div class="consignee-scrollbar">
                            <div class="ui-scrollbar-main">
                                <div class="consignee-scroll">
                                    <div class="consignee-cont" id="consignee1">
                                        <ul id="consignee-list">
                                            <li class="ui-switchable-panel ui-switchable-panel-selected" style="display: list-item;" id="consignee_index_138669292">
                                                <div class="consignee-item item-selected" id="consignee_index_div_138669292">
                                                    <span title="...">...</span><b></b>
                                                </div>
                                                <div class="addr-detail">
                                                    <span class="addr-name">...</span>
                                                    <span class="addr-info">...</span>
                                                    <span class="addr-tel">****</span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ /widget/consignee-step/consignee-step.tpl -->
                <div class="hr"></div>
                <!--/ /widget/shopping-list/shopping-list.tpl -->
                <div id="shipAndSkuInfo">
                    <div id="payShipAndSkuInfo">
                        <div class="step-tit">
                            <h3>支付方式</h3>
                        </div>
                        <div type="hide"></div>
                        <input type="hidden" id="totalPriceVender" value="0" />
                        <input type="hidden" id="totalNumVender" value="0" />
                        <div class="plusProductListVender hide">[]</div>
                        <div class="step-cont">
                            <div class="payment-list" id="">
                                <div class="list-cont">
                                    <ul id="payment-list">
                                        <li style="cursor: pointer;">
                                            <div class=" payment-item item-selected online-payment">
                                                余额支付<span id="cod" class="qmark-icon qmark-tip"></span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="hr"></div>
                        <!--/ /widget/payment-step/payment-step.tpl -->
                        <div class="step-tit">
                            <h3>送货清单</h3>
                            <div class="extra-r">
                                <a href="/cart.aspx" id="cartRetureUrl" class="return-edit ftx-05">返回修改购物车</a>
                            </div>
                        </div>
                        <div class="step-cont" id="skuPayAndShipment-cont">
                            <!--添加商品清单  zhuqingjie -->
                            <div class="shopping-lists" id="shopping-lists">
                                <!--定义大商品清单LIST-->
                                <div class="shopping-list ABTest">
                                    <div class="goods-list">
                                        <!--满返套装开始-->
                                        <div class="goods-items 200030650">
                                            <div class="goods-suit goods-last">
                                                <div class="goods-item goods-item-extra" goods-id="3790199" sx-type="0">
                                                    <div class="p-img">
                                                        <a target="_blank" href="http://item.jd.com/3790199.html?dist=">
                                                            <img src="//img14.360buyimg.com/N4/jfs/t5059/302/2455068799/478187/daa16abd/590013abNfa467366.jpg" alt="" /></a>
                                                    </div>
                                                    <div class="goods-msg">
                                                        <div class="goods-msg-gel">
                                                            <div class="p-name">
                                                                <a href="http://item.jd.com/3790199.html?dist=" target="_blank">微软（Microsoft）Surface Pro4 二合一平板电脑 12.3英寸（Intel i5 8G内存 256G存储 触控笔 ） CR3-00008					     
                                                                </a>
                                                            </div>
                                                            <div class="p-price">
                                                                <strong class="jd-price">￥ 7288.00
                                                                </strong>
                                                                <!--增加预售金额显示 end-->
                                                                <span class="p-num">x1
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--满返套装结束-->
                                    </div>
                                    <!--goods-list 结束-->
                                    <div class="dis-modes">

                                        <!-- 实物商品搭售虚拟商品 -->
                                        <div class="mode-item mode-tab">
                                            <div class="mode-item-tit">
                                                <h4>配送方式</h4>
                                            </div>
                                            <div class="mode-tab-nav">
                                                <ul>
                                                    <li class="mode-tab-item curr" id="jd_shipment_item" onclick="doSwithTab('pay')" clstag="pageclick|keycount|trade_201602181|11">
                                                        <span id="jdShip-span-tip" class="m-txt">京东快递<i class='qmark-icon qmark-tip' data-tips='由京东公司负责配送，速度很快，还接受上门刷卡付款服务'></i></span><b></b>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="mode-tab-con " id="jd_shipment">
                                                <ul class="mode-list">
                                                    <li id="shipment_times" class="delivery-info-li-none-border">
                                                        <div class="fore1" id="jd_shipment_calendar_date"><span class="ftx-03">配送时间：</span>&nbsp;&nbsp;工作日、双休日与节假日均可送货</div>
                                                        <div class="fore2 hide" id="jdshipdate_eidt_id" onclick="doEdit311Time()" clstag="pageclick|keycount|trade_201602181|14"><a href="#none" class="ftx-05">修改</a></div>
                                                        <div id="forcedChoice-sales" class="fresh-tip-cont hide">
                                                            <span class="fl fresh-tip-left"><i></i>京准达</span>
                                                            <span class="fl fresh-tip-right">限时免费，准时送达</span>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!--dis-modes 结束-->
                                    <div class="clr"></div>
                                    <div class="weight-cont total-freight-weight hide">总重量：<em class="ftx-03 total-freight-weight-val"></em></div>
                                </div>
                                <div class="clr"></div>
                            </div>
                            <!--shopping-lists 结束-->
                        </div>
                    </div>
                </div>
                <!--添加商品清单结束-->
                <!--添加备注信息-->
                <div class="order-remarks hide" id="orderRemarkItem">
                </div>
            </div>
            <!-- </div> -->
            <!-- </div> -->
            <!--  /widget/order-summary/order-summary.tpl -->
            <div class="order-summary">
                <!--  预售 计算支付展现方式 begin -->
                <div class="statistic fr">
                    <div class="list">
                        <span><em class="ftx-01">2</em> 件商品，总商品金额：</span>
                        <em class="price" id="warePriceId"
                            v="8237.00">￥8237.00</em>
                    </div>
                    <div class="list">
                        <span>运费：</span>
                        <em class="price" id="freightPriceId">￥0.00</em>
                    </div>
                </div>
                <div class="clr"></div>
            </div>
            <div class="trade-foot">
                <div class="trade-foot-detail-com">
                    <div class="fc-price-info">
                        <span class="price-tit">应付总额：</span>
                        <span class="price-num" id="sumPayPriceId">￥7937.00</span>
                    </div>
                    <div class="giftbuy-info">
                        <label class="noShowMoney hide" id="giftBuyHidePriceDiv">
                            <input type="checkbox" id="giftBuyHidePrice" checked>包装内不显示礼品价格
                        </label>
                    </div>
                    <div class="fc-consignee-info">
                        <span class="mr20" id="sendAddr">寄送至： 浙江 杭州市 江干区 九堡镇  高教园区学源街18号浙江财经大学（下沙校区）</span>
                        <span id="sendMobile">收货人：李达也 158****1870</span>
                    </div>
                </div>
            </div>
            <div id="checkout-floatbar" class="group">
                <div class="ui-ceilinglamp checkout-buttons">
                    <div class="sticky-wrap">
                        <div class="inner">
                            <button type="submit" class="checkout-submit" id="order-submit" onclick="javascript:submit_Order();">
                                提交订单<b></b>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ui-dialog" style="width: 690px; position: absolute; z-index: 10000; display: none; overflow: hidden; top: 189.5px; left: 602.5px;">
        <div class="ui-dialog-title" style="width: 670px;"><span>编辑收货人信息</span>     </div>
        <div class="ui-dialog-content" style="height: 458px; width: 670px; overflow: hidden;">

            <iframe src="/updatePostInfo.aspx" style="width:100%;height:100%;"></iframe>

        </div>
        <a class="ui-dialog-close" title="关闭"><span class="ui-icon ui-icon-delete"></span></a>
    </div>
    <div class="ui-mask" style="display:none;position: absolute; left: 0px; top: 0px; opacity: 0.15; z-index: 9998; width: 1903px; height: 1805px; background-color: rgb(0, 0, 0);"></div>
    <!-- /main -->
    <!-- footer -->
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
    <div class="w">
        <div id="footer-2014">
            <div class="links"><a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx">关于我们</a>|<a rel="nofollow" target="_blank" href="//www.jd.com/contact/">联系我们</a>|<a rel="nofollow" target="_blank" href="//help.jd.com/user/custom.html">联系客服</a>|<a rel="nofollow" target="_blank" href="//vc.jd.com/cooperation.html">合作招商</a>|<a rel="nofollow" target="_blank" href="//helpcenter.jd.com/venderportal/index.html">商家帮助</a>|<a rel="nofollow" target="_blank" href="//jzt.jd.com">营销中心</a>|<a rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>|<a target="_blank" href="//club.jd.com/links.aspx">友情链接</a>|<a target="_blank" href="//media.jd.com/">销售联盟</a>|<a href="//club.jd.com/" target="_blank">京东社区</a>|<a href="//sale.jd.com/act/FTrWPesiDhXt5M6.html" target="_blank">风险监测</a>|<a href="//news.jd.com/30_1.html" target="_blank" clstag="h|keycount|2016|43">隐私政策</a>|<a href="//gongyi.jd.com" target="_blank">京东公益</a>|<a href="//en.jd.com/" target="_blank">English Site</a>|<a href="//en.jd.com/help/question-58.html" target="_blank">Contact Us</a></div>
            <div class="copyright">
                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000088">
                    <img src="//img13.360buyimg.com/cms/jfs/t2293/321/1377257360/19256/c267b386/56a0a994Nf1b662dc.png" />
                    京公网安备 11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank" href="//img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>
                互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="//sale.jd.com/act/pQua7zovWdJfcIn.html" target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="//misc.360buyimg.com/wz/wlwhjyxkz.jpg" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>
                Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733&nbsp;&nbsp;nbsp;&nbsp;&nbsp;<a class="mod_copyright_license" target="_blank" href="//sale.jd.com/act/7Y0Rp81MwQqc.html">经营证照</a><br>
                京东旗下网站：<a href="https://www.jdpay.com/" target="_blank">京东钱包</a>
            </div>
            <div class="authentication">
                <a rel="nofollow" target="_blank" href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202007080200026">
                    <img width="103" height="32" alt="经营性网站备案中心" src="//img12.360buyimg.com/da/jfs/t535/349/1185317137/2350/7fc5b9e4/54b8871eNa9a7067e.png" class="err-product" />
                </a>
                <script type="text/JavaScript">function CNNIC_change(eleId) { var str = document.getElementById(eleId).href; var str1 = str.substring(0, (str.length - 6)); str1 += CNNIC_RndNum(6); document.getElementById(eleId).href = str1; } function CNNIC_RndNum(k) { var rnd = ""; for (var i = 0; i < k; i++) rnd += Math.floor(Math.random() * 10); return rnd; }</script>
                <a rel="nofollow" target="_blank" id="urlknet" tabindex="-1" href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005">
                    <img border="true" width="103" height="32" onclick="CNNIC_change('urlknet')" oncontextmenu="return false;" name="CNNIC_seal" alt="可信网站" src="//img11.360buyimg.com/da/jfs/t643/61/1174624553/2576/4037eb5f/54b8872dNe37a9860.png" class="err-product" />
                </a>
                <a rel="nofollow" target="_blank" href="http://www.bj.cyberpolice.cn/index.do">
                    <img width="103" height="32" alt="网络警察" src="//img12.360buyimg.com/cms/jfs/t2050/256/1470027660/4336/2a2c74bd/56a89b8fNfbaade9a.jpg" class="err-product" />
                </a>
                <a rel="nofollow" target="_blank" href="https://search.szfw.org/cert/l/CX20120111001803001836">
                    <img width="103" height="32" src="//img11.360buyimg.com/da/jfs/t451/173/1189513923/1992/ec69b14a/54b8875fNad1e0c4c.png" class="err-product" />
                </a>
                <a target="_blank" href="http://www.12377.cn">
                    <img width="103" height="32" src="//img30.360buyimg.com/da/jfs/t1915/215/1329999964/2996/d7ff13f0/5698dc03N23f2e3b8.jpg"></a>
                <a target="_blank" href="http://www.12377.cn/node_548446.htm">
                    <img width="103" height="32" src="//img14.360buyimg.com/da/jfs/t2026/221/2097811452/2816/8eb35b4b/5698dc16Nb2ab99df.jpg"></a>
            </div>
        </div>
    </div>
    <script src="/js/checkOrder.js"></script>
</body>
</html>
