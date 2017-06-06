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
	<link rel="stylesheet" href="//sp.jd.com/payment/1.2.0/css/bankList.css" charset="utf-8">
						<link type="text/css" rel="stylesheet"  href="//misc.360buyimg.com/user/purchase/2.0.0/widget/??common/common.css,header-2015/header-2015.css,consignee-scroll/consignee-scroll.css,consignee-selfpick/consignee-selfpick.css,payment-step/payment-step.css,presale-step/presale-step.css,shopping-list/shopping-list.css,invoice-dialog/invoice-dialog.css,order-virtual/order-virtual.css,order-summary/order-summary.css,checkout-floatbar/checkout-floatbar.css,paypwd/paypwd.css,/delivery-calendar-freight/delivery-calendar-freight.css,backpanel/backpanel.css" source="widget"/>
				<link type="text/css" rel="stylesheet"  href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/1.0.0/ui-base.css,shortcut/2.0.0/shortcut.css,global-header/1.0.0/global-header.css,myjd/2.0.0/myjd.css,nav/2.0.0/nav.css,shoppingcart/2.0.0/shoppingcart.css,global-footer/1.0.0/global-footer.css,service/1.0.0/service.css"/>
		<script type="text/javascript" src="//misc.360buyimg.com/jdf/lib/jquery-1.6.4.js"></script>
		<script type="text/javascript" src="//misc.360buyimg.com/jdf/1.0.0/unit/??base/1.0.0/base.js,basePatch/1.0.0/basePatch.js"></script>
		<script type="text/javascript" src="//misc.360buyimg.com/user/purchase/2.0.0/js/cookieTrack_v4.js"></script>
	
	<script type="text/javascript" src="//trade.jd.com/shopping/misc/js/order.common.js?r=20170518"></script>
	<script type="text/javascript" src="//trade.jd.com/shopping/misc/js/jquery.checkout.js?v=03091"></script>
</head>	<body id="mainframe">
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
<div id="o-header-2013"><div id="header-2013" style="display:none;"></div></div>
<!--shortcut end-->


<div class="w w1 header clearfix">
    <div id="logo">
                    <a href="http://www.jd.com/" class="link1" target="_blank"><img src="//misc.360buyimg.com/lib/img/e/logo-201305.png" alt="京东商城"></a>
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

<!-- /header -->
<!--/ /widget/header/header.tpl -->

<div id="consignee_back" name="consignee_back" style="display:none"></div>
<div id="consignee_back_action" name="consignee_back_action" style="display:none"></div>
<div id="part-invoice_back" name="part-invoice_back" style="display:none"></div>
<div id="part-invoice_back_action" name="part-invoice_back_action" style="display:none"></div>
<div id="payment-ship_back_action" name="payment-ship_back_action" style="display:none"></div>
<div id="payment-ship_back" name="payment-ship_back" style="display:none"></div>
<input type="hidden" name="beforePickSiteId" id="beforePickSiteId"><!--自提点-->
<input type="hidden" name="beforePickDate" id="beforePickDate"><!--自提时间-->
<input type="hidden" name="beforePickSiteNum" id="beforePickSiteNum"><!--默认5个-->
<input type="hidden" name="beforePickRegionId" id="beforePickRegionId" value="-1"><!--搜索区域-->
<input type="hidden" name="beforePickSelRegionid" id="beforePickSelRegionid"><!--搜索区域-->
<input type="hidden" id="beforePickName" name="beforePickName"/>
<input type="hidden" id="sopCartJson"/>
<input type="hidden" id="showInvoiceSeparate" value="true"><!-- 是否支持货票分离 -->
<input type="hidden" id="invoiceSeparateSwitch" value="0"><!-- 货票分离开关值 -->
<input type="hidden" id="hasBigItem" value="false">
<input type="hidden" id="hasGiftCardSku" value="false"/>
<input type="hidden" id="sopNotPutInvoice" value="false">
<input type="hidden" id="isChangeItemByArea" value="false"/>
<input type="hidden" id="hasTang9" value="false">
<input type="hidden" id="isHasSam" value="false"/>
<input type="hidden" id="needPay" value="7937.00"/>
<input type="hidden" id="consignee_id" name="consignee_id" value="138669292">
<input type="hidden" id="hideAreaIds"
       value="15-1213-2963-49963"/>
<input type="hidden" id="isPresale" value="false"/>
<input type="hidden" id="presaleStepPay" value=""/>
<input type="hidden" id="flowType" value=""/>
<input type="hidden" id="flowId" value=""/>
<input type='hidden' id="cur_payid" value="4">
<input type="hidden" id="showCheckCode" value="false"/>
<input type="hidden" id="reset_promise_311" value="0"/>
<input type="hidden" id="resetFlag" value="0000000000"/>
<input type="hidden" id="easyBuyFlag" value=""/>
<input type="hidden" id="ui-dialog-close" value=""/>
<input type="hidden" id="overseaPurchaseCookies" value=""/>
<input type="hidden" id="isHasSimCard" value="false">
<input type="hidden" id="ignorePriceChange" value="0">
<input type="hidden" id="canBaitiaoDetail" value="true"/>
<input type="hidden" id="getEquipInfo" value="true"/>
<input type="hidden" id="selfPickShutDownFlag" value="0">
<input type="hidden" id="selfPickOptimize" value="0">
<input type="hidden" id="TrackID" name="TrackID" value="TestTrackId"/>
<input type="hidden" id="invokeNewCouponInterface" name="invokeNewCouponInterface" value="true"/>
<input type="hidden" id="submitButtonABTest" value="0">
<input type="hidden" id="eid" value="" />
<input type="hidden" id="fp" value="" />
<input type="hidden" id="baitiaoPayRequest" value="plan=1" />
<input type="hidden" id="baitiaoPayRepayDateRequest" value="repayDate=" />
<input type="hidden" id="jdpy_cardInfo" value="nocard" />
<form id="direct_pay" action="https://cashier.jd.com/direct/directPay.action" method="post">
	<input type="hidden"  name="orderId"/>
	<input type="hidden"  name="toType"/>
	<input type="hidden"  name="orderType"/>
	<input type="hidden"  name="directPayInfoJson"/>
	<input type="hidden"  name="payMethod"/>
	<input type="hidden"  name="key"/>
	<input type="hidden"  name="countdownTime"/>
	<input type="hidden"  name="orderSubmitTime"/>
	<input type="hidden"  name="sendPayDict"/>
</form>
<input type="hidden" id="lastneedPay" value="7937.00"/>
<input type="hidden" id="btNeedPay" value="7937.00"/>
<input type="hidden" id="isNewVertual" name="isNewVertual" value="true"/>
<input type="hidden" id="isBestCoupon" name="isBestCoupon"/>
<input type="hidden" id="agreeNoRefundInMain" value="false"/>

<input type="hidden" id="allFreightWeight" value="2.210kg"/>
<input type="hidden" id="overFreightWeight" value=""/>
<input type="hidden" id="copywritingContent" value="0"/>
<input type="hidden" id="bigItemCopywritingContent" value="0"/>
<input type="hidden" id="normalCopywritingContent" value="0"/>
<input type="hidden" id="calendarCopywritingContent" value="0"/>
<input type="hidden" id="needForJZD" value="0"/>
<input type="hidden" id="needForJZDcalendar" value="0"/>
<input type="hidden" id="allSxFreightWeight" value=""/>
<input type="hidden" id="allWmFreightWeight" value=""/>
<input type="hidden" id="overSxFreightWeight" value=""/>
<input type="hidden" id="overWmFreightWeight" value=""/>
<input type="hidden" id="totalFreightWeightShow" value="2.210"/>
<input type="hidden" id="topTitleInfoUsed" value="1"/>
<input type="hidden" id="topTitleInfoFor315" value="1"/>
<input type="hidden" id="riskControl" value="D0E404CB705B9732FFCE859A28D33FD4FFA0880019F6DFFDDCDD7C42C0854B1D1A2C08F5DA9D5191"/>
<input type="hidden" id="newReplacedFlow" value="true"/>
<input type="hidden" id="hongKongId" value="52993"/>
<input type="hidden" id="taiWanId" value="32"/>
<input type="hidden" id="overSeasId" value="53283"/>
<div class="replacedSkus hide">[]</div>
<input type="hidden" id="plusStatus" value="0"/>
<input type="hidden" id="totalPrice" value="0"/>
<div class="plusInfoConfig hide">{"plusInfos":[{"content":"开通PLUS会员，享受商品会员价","url":"http://plus.jd.com/order/page","clstag":"pageclick|keycount|201601152|50","typeContent":"立即开通","classInfo":null,"configId":0},{"content":"开通PLUS会员，享受商品会员价","url":"http://plus.jd.com/order/page","clstag":"pageclick|keycount|201601152|49","typeContent":"立即开通","classInfo":null,"configId":0},{"content":"开通PLUS会员，享受商品会员价","url":"http://plus.jd.com/order/page","clstag":"pageclick|keycount|201601152|48","typeContent":"立即开通","classInfo":null,"configId":0},{"content":"开通PLUS会员，每月送5张自营运费券","url":"http://plus.jd.com/index","clstag":"pageclick|keycount|201601152|47","typeContent":"立省运费","classInfo":null,"configId":0},{"content":"还在花运费？每月领5张自营运费券","url":"http://plus.jd.com/order/page","clstag":"pageclick|keycount|201601152|50","typeContent":"立即开通","classInfo":null,"configId":0},{"content":"免费试用PLUS会员，享受商品会员价","url":"http://plus.jd.com/index","clstag":"pageclick|keycount|201601152|50","typeContent":"立省运费","classInfo":null,"configId":0}],"classInfo":"com.jd.trade.app.common.config.PlusConfig","configId":26283}</div>
<input type="hidden" id="totalFreight" value=""/>
<div class="plusProductList hide">[]</div>
<input type="hidden" id="closeRefreshSelfpick" value="0"/>
<!-- main -->
<div id="container">
    <div id="content" class="w">
        <!-- <div class="m"> -->
		<div class="orderInfo-tip hide">
			<span class="wicon"></span>
			<span class="ftx-03"> 温馨提示：订单中存在不支持7天无理由退换商品，请确认相关商品信息后提交订单。</span>
			<span class="cls-btn" onclick="closeorderInfotip()">x</span>
		</div>
            <div class="checkout-tit">
                <span class="tit-txt">填写并核对订单信息</span>
                                                              </div>
            <!--<div class="mc">-->
                <div class="checkout-steps">
                    <!--  /widget/consignee-step/consignee-step.tpl -->
                    <div class="step-tit">
                        <h3>收货人信息</h3>
                        <div class="extra-r">
                        	<a href="#none" class="ftx-05 J_consignee_global" onclick="use_NewConsigneeOversea()">新增收货地址</a>
                            <!--<a href="#none" class="ftx-05" onclick="use_NewConsignee()" clstag="pageclick|keycount|trade_201602181|3">新增收货地址</a>-->
                            <input type="hidden" id="del_consignee_type" value="0"/>
                        </div>
                    </div>
                    <div class="step-cont">
                        <div id="consignee-addr" class="consignee-content">
                        	<div class="consignee-scrollbar">
								<div class="ui-scrollbar-main">
									<div class="consignee-scroll">
			                            <div class="consignee-cont" id="consignee1">
			                                			                                <ul id="consignee-list">
			                                <!---->
			                                    <!--
<li class="ui-switchable-panel" id="consignee_index_138669292" selected="selected" style="cursor: pointer;">
	<div class="consignee-item item-selected" consigneeId="138669292" id="consignee_index_div_138669292">
		<b></b>
		<div class="user-name">
			<div class="fl"><strong limit="4">李达也</strong>&nbsp;&nbsp;收</div>
			<div class="fr">158****1870</div>
			<div class="clr"></div>
		</div>
		<div class="mt10" limit="15">浙江 杭州市 江干区 九堡镇</div>
		<div class="adr-m" limit="30">高教园区学源街18号浙江财经大学（下沙校区）</div>
		<div class="op-btns ar">
										<a href="#none" class="ftx-05 mr10 setdefault-consignee hide" fid="138669292">设为默认地址</a>
						<a href="#none" class="ftx-05 mr10 edit-consignee" fid="138669292">编辑</a>
			<a href="#none" class="ftx-05 del-consignee hide" fid="138669292">删除</a>
		</div>
	</div>
</li>
-->

<li  class="ui-switchable-panel ui-switchable-panel-selected"    style="display: list-item;"  id="consignee_index_138669292" selected="selected" style="cursor: pointer;" c_li_custom_label="consignee_li">
	<div  class="consignee-item item-selected"  consigneeId="138669292" provinceId="15" cityId="1213" id="consignee_index_div_138669292" consigneeType="0" clstag="pageclick|keycount|trade_201602181|1" c_div_custom_label="consignee_div">		
		<span limit="8" title="李达也 浙江">李达也 浙江</span><b></b>
	</div>
	<div class="addr-detail">
		<!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
				 <span class="addr-name" limit="6">李达也</span>
		 <span class="addr-info" limit="45">浙江 杭州市 江干区 九堡镇高教园区学源街18号浙江财经大学（下沙校区）</span>
		 <span class="addr-tel">158****1870</span>
					</div>
	<div class="op-btns" consigneeId="138669292" isOldAddress="false">
				<a href="#none" class="ftx-05 setdefault-consignee hide" fid="138669292" clstag="pageclick|keycount|trade_201602181|4">设为默认地址</a>		<a href="#none" class="ftx-05 edit-consignee" fid="138669292" clstag="pageclick|keycount|trade_201602181|6">编辑</a>
		<a href="#none" class="ftx-05 del-consignee hide" fid="138669292" clstag="pageclick|keycount|trade_201602181|5">删除</a>
	</div>
</li>

	             
       <!-- 地址升级提示:两种情况 -->      
              
       

          <!-- 地址升级隐藏域信息 -->
  	      <input type="hidden"
  	             id="hid_upArea_138669292"
  	             consigneeId="138669292"
	             isOldAddress="false"
	             isMapping="false"
	             newProvinceId="0"
	             newCityId="0"
	             newCountyId="0"
	             newTownId="0" 
	             newProvinceName=""
	             newCityName=""
	             newCountyName=""
	             newTownName=""
	             address_type="1"
	             addressName="李达也 浙江"
	             name="李达也"
	             email=""
	             mobile="158****1870"
	             phone=""
	             idCard=""
	             address="高教园区学源街18号浙江财经大学（下沙校区）"
	             ceshi1=""/>
	             
			                                    <!---->
			                                </ul>
			                            </div>
		                            </div>
	                            </div>
                            </div>
                        </div>
                        
                        <div class="addr-switch switch-on" id="consigneeItemAllClick" onclick="show_ConsigneeAll()" clstag="pageclick|keycount|trade_201602181|2">
                            <span>更多地址</span><b></b>
                        </div>
                        <div class="addr-switch switch-off hide" id="consigneeItemHideClick"
                             onclick="hide_ConsigneeAll()">
                            <span>收起地址</span><b></b>
                        </div>

                        <div id = "selfPickArea" class="consignee-scroll mt10 hide">
                        	<div class="consignee-cont">
                        		<div class="hr" id="selfPickLine"></div>
                        		<div class="picksite-lead hide" id="firstAccessTip">
									<i class="pl-joy"></i>
									<span class="pl-info">自提地址挪位置啦~根据您的配送习惯，<br>我们为您新增了京东自提点</span>
									<span class="pl-btn" onclick='doHandleFirstAccess()'>我知道了</span>
									<i class="pl-cls" onclick='doHandleFirstAccess()'></i>
                					<i class="pl-arrow"></i>
								</div>
                        		<ul id="selfPickInfo">
                        			                        			                        		<li id="defaultSelfPick" defaultSelfPick="1">
	                     				<div id="selfPickSiteName" class="consignee-item" clstag="pageclick|keycount|trade_201602181|40" onclick='doSelectSelfPickSite("0","")'>
											<span id="pickName" pickId="0" limit="8">京东自提点</span>
												<b></b>				
										</div>
										<div class="addr-detail">
											<span class="addr-name" limit="6">
											
											</span>
											<span class="addr-info" limit="45">
												  											</span>
											<span class="addr-tel">
												
											</span>
										</div>
										<div class="addr-ops">
											<a id = "selfPickEdit" href="#none" onclick="openEditSelfPickConsigneeDialog()" clstag="pageclick|keycount|trade_201602181|41" class="ftx-05 mr10 edit-selfconsignee hide" fid="0">更换自提地址</a>
											<i class="pick-err-icon noPickChoose hide"></i><span class="ftx-01 mr10 noPickChoose hide">部分商品不支持</span>
											<a class="ftx-05 selfpick-edit selfPickChoose hide" href="#none" onclick="openEditSelfPickConsigneeDialog()">重新选择</a>
										</div>
	                        		</li>
	                        		                        		</ul>
                        		                        	</div>
                        </div>
                        <!--end-->
                       
                         <div class="picksite-scroll mt10">
                        	<div class="picksite-cont">
                        		<div class="hr hide" id="zitihr"></div>
                        		<div id="zititype1" class="consignee-picksite-info mb10 mt10 hide">
                        			<span class="c-picksite-logo">京东自提</span>
                        			<span class="ftx-03 ml5">省运费·无续重·随时取</span>
                        			<a target='_blank' href="http://help.jd.com/user/issue/100-965.html" class="ftx-05 ml10 J_picksite_desc_btn">详情</a>
                        		</div>
                        		<div id="zititype2" class="consignee-picksite-info mb10 mt10 hide">
                        			<span class="c-picksite-logo">京东自提</span>
                        			<span class="ftx-01 ml5" id="absMoney">选择京东自提，立省运费</span>
                        			<a target='_blank' href="http://help.jd.com/user/issue/100-965.html" class="ftx-05 ml10 J_picksite_desc_btn">详情</a>
                        		</div>
                        		<div id="zititype3" class="consignee-picksite-info mb10 mt10 hide">
                        			<span class="c-picksite-logo">京东自提</span>
                        			<span class="ftx-01 ml5">周末没人？使用京东自提 省运费·无续重·随时取</span>
                        			<a target='_blank' href="http://help.jd.com/user/issue/100-965.html" class="ftx-05 ml10 J_picksite_desc_btn">详情</a>
                        		</div>
                        		<div id="zititype5" class="consignee-picksite-info mb10 mt10 hide">
                        			<span class="c-picksite-logo">京东自提</span>
                        			<span class="ftx-01 ml5">抱歉，存在不支持自提的商品或该地址下没有可用的自提点</span>
                        			<a target='_blank' href="http://help.jd.com/user/issue/100-965.html" class="ftx-05 ml10 J_picksite_desc_btn">详情</a>
                        		</div>
                        		<ul id="selfPickOptimizeUl">
                        		</ul>
                        	</div>
                        </div>
                        
                        <div id="zititype4" class="picksite-nosuport-cont hide">
                        			<span class="tips-cont ml10"><b></b>订单中部分商品不支持自提，暂无法使用京东自提</span>                       
                        			<a href="#none" class="ftx05 J_picksite_disable_info ml30">详情&nbsp;></a>
                        			<div class="picksite-nosuport-box">
                        			  <i class="arrow-up"></i>
                        			  <strong>以下商品不支持自提</strong>
                        			  <ul id="unSupportSelfPickSkuList">
                        			  </ul>
                        			</div>
                       </div>


                                                    <input type="hidden" id="consigneeList_giftSenderConsigneeMobile"
                                   value="">
                            <input type="hidden" id="consigneeList_giftSenderConsigneeName"
                                   value="">
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
<input type="hidden" id="totalPriceVender" value="0"/>
<input type="hidden" id="totalNumVender" value="0"/>
<div class="plusProductListVender hide">[]</div>
<div class="step-cont">
  <div class="payment-list" id="">
    <div class="list-cont">
          <ul id="payment-list">
        <input type="hidden" id="instalmentPlan" value="false">
		
													
		      
        			<li style="cursor: pointer;" onclick="
									 save_Pay(1,0,1); 				" 
								clstag="pageclick|keycount|trade_201602181|8"											    												>

				<div class=" payment-item  online-payment " for="pay-method-1"
					payname="货到付款" payid="1" onlinePayType="0"><b></b>
					    					货到付款<span class="qmark-icon qmark-tip" data-tips="送货上门后再收款，支持现金、POS机刷卡、支票支付 <a href='//help.jd.com/user/issue/103-983.html' target='_blank' class='ftx-05'>查看服务及配送范围</a>"></span>					                    													                                																</div>
			</li>
			
            
					<li style="cursor: pointer;" onclick="
				save_Pay(4,0,1);" 
				clstag="pageclick|keycount|trade_201602181|7"															    												>

				<div class=" payment-item item-selected online-payment " for="pay-method-4"
					payname="在线支付" payid="4" onlinePayType="0"><b></b>
																	<em class="payment-promo">惠</em> 
												在线支付                    													                <span id="cod" class="qmark-icon qmark-tip" data-tips="即时到账，支持绝大数银行借记卡及部分银行信用卡 <a href='//help.jd.com/user/issue/223-562.html' target='_blank' class='ftx-05'> 查看银行及限额</a>"></span>                 																</div>
			</li>
			
            
					<li style="cursor: pointer;" onclick="
				save_Pay(5,0,1);" 
												clstag="pageclick|keycount|trade_201602181|9"							    												>

				<div class="hide payment-item  online-payment " for="pay-method-5"
					payname="公司转账" payid="5" onlinePayType="0"><b></b>
																	公司转账                    													                                												<span class="qmark-icon qmark-tip" data-tips="通过快钱平台转账 转账后1-3个工作日内到账 <a href='//help.jd.com/user/issue/list-175.html' target='_blank' class='ftx-05'>查看账户信息</a>"></span> 				</div>
			</li>
			
            
					<li style="cursor: pointer;" onclick="
				save_Pay(2,0,1);" 
																clstag="pageclick|keycount|trade_201602181|10"			    												>

				<div class="hide payment-item  online-payment " for="pay-method-2"
					payname="邮局汇款" payid="2" onlinePayType="0"><b></b>
																	邮局汇款                    													<span class="qmark-icon qmark-tip" data-tips="通过快钱平台收款 汇款后1-3个工作日到账 <a href='//help.jd.com/user/issue/list-174.html' target='_blank' class='ftx-05'>查看帮助</a>"></span>                                																</div>
			</li>
			
            
				<li id="payment-less" class="hide">
          <div class="payment-item-on" clstag="pageclick|keycount|PaymentLead__2016030411|10">
            <span>收起</span><b></b>
          </div>
        </li>
        <li id="payment-more">
          <div class="payment-item-off" clstag="pageclick|keycount|PaymentLead__2016030411|9">
            <span>更多</span><b></b>
          </div>
        </li>


<script>
$('.online-payment')
.hover(function(){
	$(this).addClass('payment-item-hover');
},function(){
	$(this).removeClass('payment-item-hover');
}); 
if($("#payment-list li").length<=4){
	$('#payment-less').hide();
	$('#payment-more').hide();
	var payid=[5,2,8];
	for(var i in payid){
		$("#payment-list div[payid="+payid[i]+"]").show();
	}
}
$('.payment-item-on').click(function(){
	$('#payment-less').hide();
	$('#payment-more').show();
	var payid=[5,2,8];
	for(var i in payid){
		var payment = $("#payment-list div[payid="+payid[i]+"]");
		if(!payment.hasClass("item-selected")){
			payment.hide(100);
		}
	}
});
$('.payment-item-off').click(function(){
	$('#payment-less').show();
	$('#payment-more').hide();
	var payid=[5,2,8];
	for(var i in payid){
		var payment = $("#payment-list div[payid="+payid[i]+"]");
		if(!payment.hasClass("item-selected")){
			payment.show(100);
		}
	}
});
</script>
              </ul>
          </div>
  </div>
</div>
<div class="hr"></div>
<!--/ /widget/payment-step/payment-step.tpl -->
<div class="step-tit">
  <h3>送货清单</h3>
  <div class="extra-r">
  	<a class="price-desc" id="price-desc" href="#none" data-tips="因可能存在系统缓存、页面更新导致价格变动异常等不确定性情况出现，商品售价以本结算页商品价格为准；如有疑问，请您立即联系销售商咨询。">
  		<i></i>&nbsp;价格说明
  	</a>
          <a href="//cart.jd.com" id="cartRetureUrl" class="return-edit ftx-05" clstag="pageclick|keycount|trade_201602181|15">返回修改购物车</a>
      </div>
</div>
<div class="step-cont" id="skuPayAndShipment-cont">
  <!--添加商品清单  zhuqingjie -->
  <div class="shopping-lists" id="shopping-lists"> 
           <!--定义大商品清单LIST-->
    	<div class="shopping-list ABTest">
      <div class="goods-list">
		      <!--购物车单品商品-->
                <!--一般套装商品-->
     <!--满返套装商品-->
   <!--满赠套装商品-->
     <!--配送方式-->
    <div class="goods-tit">
      <h4 class="vendor_name_h" id="0">商家：京东自营</h4>
    </div>

      <!--单品开始-->
      <div class="goods-items">            </div>       
      <!--单品结束-->			         
      <!--一般套装开始-->
           <!--一般套装结束-->
     <!--满返套装开始-->
                       <div class="goods-items 200030650">
                    <div class="goods-suit goods-last">
          		  <!--跨店铺满减  开始-->
		              <div class="goods-suit-tit">
              <span class="sales-icon">满减</span>
                                                <strong>活动商品已购满1000.00元，已减300.00元现金</strong>
                                             
                                <span class="ml20" style="display: inline-block;border: 1px solid #7abd54;color: #7abd54;padding: 2px 5px;">&nbsp;返现：<em>￥300.00</em></span>
                          </div> 
							     						        <div class="goods-item goods-item-extra" goods-id="3790199" sx-type="0">
    
				<div class="p-img">
					<a target="_blank" href="http://item.jd.com/3790199.html?dist="><img src="//img14.360buyimg.com/N4/jfs/t5059/302/2455068799/478187/daa16abd/590013abNfa467366.jpg" alt=""></a>
				</div>
				<div class="goods-msg">
		          <div class="goods-msg-gel">			
		  					<div class="p-name">
		  					<!-- 京东精选 begin -->
		  							  					<!-- 京东精选 end -->
                                 		  					     <a href="http://item.jd.com/3790199.html?dist=" target="_blank">
		  					           微软（Microsoft）Surface Pro4 二合一平板电脑 12.3英寸（Intel i5 8G内存 256G存储 触控笔 ） CR3-00008					     
		  					     </a>
		  					</div>
                                                                    <div class="p-price">
                                				      			  <!--增加预售金额显示 begin   预售分阶段支付类型（1：一阶梯全款支付；2：一阶梯定金支付(全款或定金可选)；3：三阶梯(仅定金)；4：三阶梯(全款或定金可选)；5：一阶梯仅定金支付） -->
				      			  
								  									 									  <strong class="jd-price">
                                          ￥ 7288.00
                                                                                </strong>
									 				      			  				      			  <!--增加预售金额显示 end-->
				              <span class="p-num">
																      				                x1
    				              												              </span>
				                <span id="pre-state" class="p-state" skuId="3790199">有货</span>
                                                                    <span class="p-weight">1.640kg</span>
                                				                				                  				                
				                  				                  				                  					  </div>
           		 </div>  
								</div>
        <div>
                                <i class="p-icon p-icon-w sevenicon"></i><span class="ftx-07 withouthk seven">支持7天无理由退货</span> 
		  		          </div>
        
				<div class="clr"></div>
								    			    			      <!-- 京券和东券显示 -->
				 				 
				  <!-- 延保显示 -->
				  					 				  				  				  <!-- 京东礼品购礼品盒展示 -->
				  				  
				  <!-- 京东loc门店展示 -->
				  				  
				 </div>
			       			</div>
          </div>
                              <!--满返套装结束-->
     <!--满赠套装开始-->
                       <div class="goods-items">
                        <div class="goods-suit goods-last">
                          <div class="goods-suit-tit">
                                    <span class="sales-icon">换购</span>
                                <strong>
                
                                      已购满1件
                  
                                    ，您可以返回购物车加价换购商品
                  
                
                                </strong>
              </div>
                      						        <div class="goods-item goods-item-extra" goods-id="3419681" sx-type="0">
    
				<div class="p-img">
					<a target="_blank" href="http://item.jd.com/3419681.html?dist="><img src="//img14.360buyimg.com/N4/jfs/t3613/270/276960050/195172/ebf643d9/5805e012Nb24f60dc.jpg" alt=""></a>
				</div>
				<div class="goods-msg">
		          <div class="goods-msg-gel">			
		  					<div class="p-name">
		  					<!-- 京东精选 begin -->
		  							  					<!-- 京东精选 end -->
                                 		  					     <a href="http://item.jd.com/3419681.html?dist=" target="_blank">
		  					           荣耀平板2 标准版 8英寸 (八核 3G/16G 1920x1200 4800mAh WiFi) 珍珠白					     
		  					     </a>
		  					</div>
                                                                    <div class="p-price">
                                				      			  <!--增加预售金额显示 begin   预售分阶段支付类型（1：一阶梯全款支付；2：一阶梯定金支付(全款或定金可选)；3：三阶梯(仅定金)；4：三阶梯(全款或定金可选)；5：一阶梯仅定金支付） -->
				      			  
								  									 									  <strong class="jd-price">
                                          ￥ 949.00
                                                                                </strong>
									 				      			  				      			  <!--增加预售金额显示 end-->
				              <span class="p-num">
																      				                x1
    				              												              </span>
				                <span id="pre-state" class="p-state" skuId="3419681">有货</span>
                                                                    <span class="p-weight">0.570kg</span>
                                				                				                  				                
				                  				                  				                  					  </div>
           		 </div>  
								</div>
        <div>
                                <i class="p-icon p-icon-w sevenicon"></i><span class="ftx-07 withouthk seven">支持7天无理由退货</span> 
		  		          </div>
        
				<div class="clr"></div>
								    			    			      <!-- 京券和东券显示 -->
				 				 
				  <!-- 延保显示 -->
				  					 				  				  				  <!-- 京东礼品购礼品盒展示 -->
				  				  
				  <!-- 京东loc门店展示 -->
				  				  
				 </div>
			               </div>
          </div>
                              <!--满赠套装结束-->
 						<!-- 买家版运费险 -->
        <div class="hide service-items ml20 mr20">
            <div class="hide service-item" id="vender_freight_insurance_0">
                <div class="hr"></div>
                <span class="service-desc">退换无忧</span>
                <strong class="service-price"></strong>
            </div>
        </div>
      </div><!--goods-list 结束-->
      <div class="dis-modes">
		      <!--购物车单品商品-->
		              <!--一般套装商品-->
		   <!--满返套装商品-->
    	 <!--满赠套装商品-->
        <!--以下为京东配送方式-->
           <!--配送方式-->
         <!--配送方式-->
         <!--配送方式-->
        
        <!-- 实物商品搭售虚拟商品 -->
                               <div class="mode-item mode-tab">
                  <div class="mode-item-tit">
                    <h4>配送方式</h4>
                    <div class="extral-r"><a id="jd-goods-item" class="cor-goods" href="#none"><i></i>对应商品</a></div>
                  </div>
                  <div class="mode-tab-nav">
                    <ul>
                                              <li class="mode-tab-item curr" id="jd_shipment_item" onclick="doSwithTab('pay')" clstag="pageclick|keycount|trade_201602181|11">
							<span id="jdShip-span-tip" class="m-txt">京东快递<i class='qmark-icon qmark-tip' data-tips='由京东公司负责配送，速度很快，还接受上门刷卡付款服务'></i></span><b></b>
                        </li>
                                            <li class="mode-tab-item hide " id="pick_shipment_item" onclick="doSwithTab('picksite')" clstag="pageclick|keycount|trade_201602181|12">
						
						<span class="m-txt">上门自提<i class="qmark-icon qmark-tip" data-tips="自提时付款，支持现金、POS刷卡、支票支付<a href='http://help.jd.com/user/issue/100-181.html' target='_blank' class='ftx-05'>查看自提流程</a>"></i></span><b></b>
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
                                         <li id="forcedChoice-times" style="display:none">
                                 			<a href="#none" onclick="doEdit311Time(3)" class="fl ftx08 mr15 edit-delivery-time-fresh"><i class="date-icon mr5"></i>选择配送时间</a>
                              			    <span class="fl fresh-tip-left"><i></i>京准达</span>
                              			    <span class="fl fresh-tip-right">限时免费，准时送达</span>
                          			     </li>
                                         <li class="delivery-info-li" id="delivery-info-li-zxj">
							                  <span class="delivery-tips fr">
							                      <i class="d-ico fl mr5"></i><i class="d-arr"></i>
							                      <a id="zxj_show_id" href="#none" class="mr5 hide" onclick="doEdit311Time(3)">京准达</a>
							                      <a id="311_show_id" href="#none" class="mr5 hide" onclick="doEdit311Time(1)">标准达</a>
							                      <a id="411_show_id" href="#none" class="mr5 hide" onclick="doEdit311Time(2)">极速达</a>配送服务全面升级
							                  </span>
							             </li>	
		                                 <li class="buyer_insurance hide" id="0" style="display:none;">
                                            <div class="foreAll">
                                                <span class="mode-label ftx-03">退换无忧：</span>
                                                <div class="mode-infor J-mode-infor-tips">
                                                    <label>
                                                        <input id="vender_0" class="fl buyer_freight_insurance" type="checkbox" onclick="selectBuyerFreightInsurance(this, 0)" />
                                                        <span id="0" class="fl mode-infor-con buyer_insurance"></span>
                                                        <em class="fr"></em>
                                                        <span class="mode-infor-tips mode-infor-tips-sec" style="display: none;"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </li>
    								</ul>
                                                                          <div class="tips-618 hide tips-618-for-normal" style="z-index:9">
                                           <div class="tips-con">
                                               <i>&nbsp;</i>
                                               <p class="tips-m">
                                                   双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。
                                               </p>
                                           </div>
                                       </div>
                                       							</div>	
            						
								<div class="mode-tab-con hide" id="selfpick_shipment">													
    								<ul class="mode-list">								
										<li>
											<div class="fore1" id="selfpick_name"><span class="ftx-03">自提地点：</span></div>
        									<div class="fore2" onclick="doEditPicksite()"><a href="#none" class="ftx-05 picksite-edit">修改</a></div>
        								</li>	 										
    									<li>
											 <div class="fore1" id="selfpick_date"><span class="ftx-03">自提时间：</span></div>
    										<div class="fore2" onclick="doEditPickSiteDate('0')"><a href="#none" class="ftx-05">修改</a></div>
    									</li>
    									<li class="buyer_insurance hide" id="0" style="display:none;">
                                            <div class="foreAll">
                                                <span class="mode-label ftx-03">退换无忧：</span>
                                                <div class="mode-infor J-mode-infor-tips">
                                                    <label>
                                                        <input id="vender_0" class="fl buyer_freight_insurance" type="checkbox" onclick="selectBuyerFreightInsurance(this, 0)" />
                                                        <span id="0" class="fl mode-infor-con buyer_insurance"></span>
                                                        <em class="fr"></em>
                                                        <span class="mode-infor-tips mode-infor-tips-sec" style="display: none;"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </li>
    								</ul>
    						   </div>
    						   <!--隐藏自提点开始-->
								<div id="picksite_hidediv"  class="hide">
								     <!-- 选择自提点 -->

<div class="form picksite-box">
	<div class="item">
		<span class="label">选择区域：</span>
		<div class="fl">
			<select name="pickRegion" id="pickRegion_select" class="selt pickRegion_select" onchange="doEditPickReigon(this)">
						   <option value="-1">全部区域</option>
						   <option value="15:1213:3409:0"  >下城区</option>
						   <option value="15:1213:3038:0"  >滨江区</option>
						   <option value="15:1213:4285:0"  >下沙区</option>
						   <option value="15:1213:1218:0"  >桐庐县</option>
						   <option value="15:1213:1217:0"  >富阳区</option>
						   <option value="15:1213:1215:0"  >萧山区</option>
						   <option value="15:1213:1214:0"  >余杭区</option>
						   <option value="15:1213:49711:0"  >临安市</option>
						   <option value="15:1213:1220:0"  >淳安县</option>
						   <option value="15:1213:3408:0"  >上城区</option>
						   <option value="15:1213:3411:0"  >西湖区</option>
						   <option value="15:1213:2963:0"  >江干区</option>
						   <option value="15:1213:3410:0"  >拱墅区</option>
						</select>
		</div>
	</div>
	<div class="item">
		<span class="label">选择自提点：</span>
		<div class="fl">
			<div class="pick-sites pick-sites-more"  id="pick-sites">
				<!--循环取出自提点信息开始-->
													<!--选中的自提点-->
											<!--可用自提点-->
    				    <div pickid="428" pickName="乔司站"  class="site-item site-item-selected"  pickName="乔司站" >
    						<div class="site-in-short" style="cursor:pointer" onclick="doSelectPicksite(this)">
    							乔司站 
																																    							<b></b>
    						</div>
    						<div class="field">
    							<span class="tip">地址：浙江省杭州市江干区九堡镇九堡家苑三区7排21号 0571-86193622</span>
    							<a href="http://help.jd.com/user/issue/421-1289.html#qiaosizhan" target="_blank" class="ftx-05 map-link">详细地图</a>  
    						</div>
    						<div class="clr"></div>
    					</div>
										
					
									<!--选中的自提点-->
											<!--可用自提点-->
    				    <div pickid="164349" pickName="浙江财经下沙校区京东派"  class="site-item"  pickName="浙江财经下沙校区京东派" >
    						<div class="site-in-short" style="cursor:pointer" onclick="doSelectPicksite(this)">
    							浙江财经下沙校区京东派 
																																    							<b></b>
    						</div>
    						<div class="field">
    							<span class="tip">地址：浙江省杭州市江干区学源街18号财经大学体育场外围b-5店铺（物流超市旁） 18094712207</span>
    							<a href="http://help.jd.com/o/help/question-353.html#zjcjxsxq " target="_blank" class="ftx-05 map-link">详细地图</a>  
    						</div>
    						<div class="clr"></div>
    					</div>
										
					
									<!--选中的自提点-->
											<!--可用自提点-->
    				    <div pickid="201311" pickName="浙江工商大学下沙校区京东派"  class="site-item"  pickName="浙江工商大学下沙校区京东派" >
    						<div class="site-in-short" style="cursor:pointer" onclick="doSelectPicksite(this)">
    							浙江工商大学下沙校区京东派 
																																    							<b></b>
    						</div>
    						<div class="field">
    							<span class="tip">地址：浙江省杭州市江干区下沙高教园2号大街24号（钱江湾43幢） 18605782203</span>
    							<a href="" target="_blank" class="ftx-05 map-link">详细地图</a>  
    						</div>
    						<div class="clr"></div>
    					</div>
										
					
									<!--选中的自提点-->
											<!--可用自提点-->
    				    <div pickid="245490" pickName="浙江经贸职业技术京东派"  class="site-item"  pickName="浙江经贸职业技术京东派" >
    						<div class="site-in-short" style="cursor:pointer" onclick="doSelectPicksite(this)">
    							浙江经贸职业技术京东派 
																																    							<b></b>
    						</div>
    						<div class="field">
    							<span class="tip">地址：浙江省杭州市江干区下沙高教园区学源街18号下沙成蹊苑53幢宿舍1楼	 13735573931</span>
    							<a href="" target="_blank" class="ftx-05 map-link">详细地图</a>  
    						</div>
    						<div class="clr"></div>
    					</div>
										
					
									<!--选中的自提点-->
											<!--可用自提点-->
    				    <div pickid="570088" pickName="杭州电子科技下沙校区京东派"  class="site-item"  pickName="杭州电子科技下沙校区京东派" >
    						<div class="site-in-short" style="cursor:pointer" onclick="doSelectPicksite(this)">
    							杭州电子科技下沙校区京东派 
																																    							<b></b>
    						</div>
    						<div class="field">
    							<span class="tip">地址：浙江省杭州市下沙区杭州电子科技大学学生生活区-下沙高教园区5号楼 15314685751</span>
    							<a href="" target="_blank" class="ftx-05 map-link">详细地图</a>  
    						</div>
    						<div class="clr"></div>
    					</div>
										
					
								<!--循环取出自提点信息结束-->
			</div>
			<div class="pick-more" >
				<span  class="selfpick_more_link open ftx05"  style="cursor:pointer;" onclick="open_MorePicksite(this)">展开更多<b></b></span>
			</div>
		</div>
	</div>
	<div class="item">
		<span class="label">&nbsp;</span>
		<div class="fl">
			<div class="op-btns">
				<a class="btn-9" onclick="doSaveDialogPickSite()">保存自提点</a>
				<a class="btn-9 ml10" href="javascript:jQuery.closeDialog();">取消</a>
			</div> 
			<div class="ftx-03 mt10">温馨提示：</div>
			<div class="ftx-03">1、自提时付款，支持现金、POS刷卡、支票支付 <a class="ftx-05" href="http://help.jd.com/user/issue/100-181.html" target="_blank">查看自提流程</a></div>
            <div class="ftx-03"><span class="ftx-04">2、京东将根据您的收货地址显示其范围内的自提点，请确保您的收货地址正确填写。 </span></div>
		</div>
	</div>
</div>
<script type="text/javascript">
   //选择自提点
   function doSelectPicksite(thisElement){
      if($(thisElement).parent().hasClass("site-item-disabled")){
         //alert("您所选取的自提点不可用");
         return;
      }
      $("#selfpick_siteDiv .site-item").each(function(index,item){
	       if($(this).hasClass("site-item-selected")){
	           $(this).removeClass().addClass("site-item");
	       }
	  });
	  if($(thisElement).parent().hasClass("site-item-selected")==false){
	      $(thisElement).parent().removeClass().addClass("site-item site-item-selected");
	  }
   }
   function doClosePickSite(){
   	   $(".site-item").each(function(index,item){
	       if($(this).hasClass("site-item-selected")){
	           $(this).removeClass().addClass("site-item");
	       }
	  });
	  javascript:jQuery.closeDialog();
   }
</script>                                </div>
    						   <!--隐藏自提点结束-->	
							   <!--自提点配送时间开始-->
							   <div id="pickSiteShipDate" class="hide">							       
							         	<div class="date-box">
		<div class="date-list">
			<ul>
			  			       				       <li class="li_pick_shipment" date="2017-06-07" picksite_date="6-07" picksite_weekDay="周三" onclick="doSwithPickShipDate('0',this)">
						   6-07
						   <span class="data">周三</span>
					  </li>
			       			  			       				       <li class="li_pick_shipment" date="2017-06-08" picksite_date="6-08" picksite_weekDay="周四" onclick="doSwithPickShipDate('0',this)">
						   6-08
						   <span class="data">周四</span>
					  </li>
			       			  			       				       <li class="li_pick_shipment" date="2017-06-09" picksite_date="6-09" picksite_weekDay="周五" onclick="doSwithPickShipDate('0',this)">
						   6-09
						   <span class="data">周五</span>
					  </li>
			       			  			       				       <li class="li_pick_shipment" date="2017-06-10" picksite_date="6-10" picksite_weekDay="周六" onclick="doSwithPickShipDate('0',this)">
						   6-10
						   <span class="data">周六</span>
					  </li>
			       			  			       				       <li class="li_pick_shipment" date="2017-06-11" picksite_date="6-11" picksite_weekDay="周日" onclick="doSwithPickShipDate('0',this)">
						   6-11
						   <span class="data">周日</span>
					  </li>
			       			  			</ul>
		</div>
		<div class="ftx-03 mt10">
			温馨提示：<br>
			1、您选择的时间可能会因库存不足等因素导致订单延迟，请您谅解！<br>
			2、我们会在您选定提货日期的前一天处理您的订单，在此之前您的订单处于暂停状态。
	
		</div>
		<div class="op-btns mt20 ac">
			<a href="#none" onclick="doSavePickShipDate('0')" class="btn-9">保存</a>
			<a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10">取消</a>
		</div>
	</div>

<script type="text/javascript">
        //点击切换自提点配送时间
        function doSwithPickShipDate(venderId,thisElement){
			 $('.li_pick_shipment').removeClass().addClass("li_pick_shipment");
            $(thisElement).removeClass().addClass("li_pick_shipment selected");
        }
        
        //保存自提点配送时间
        function doSavePickShipDate(venderId){
           $("#selfpick_date").html('<span class="ftx-03">配送时间：</span>' + $('.li_pick_shipment.selected').attr("picksite_date") + " " + $('.li_pick_shipment.selected').attr("picksite_weekDay"));
           $("#saveParam_pickDate").val($('.li_pick_shipment.selected').attr("date"));
		   doSavePayAndShipmentInfo("jd_picksite_time");
           jQuery.closeDialog();
        }
</script>							    </div>
							   <!--自提点配送时间结束-->
							   <!--非大件对应商品清单开始-->
							   <div class="hide" id="jdItem_surpportSku">
    						        								<div class="tooltip-goods">
    									<div class="tooltip-tit">
    										以下商品为<strong>非大件商品</strong>
    									</div>
    									<div class="goods-items">
    									 	    											    											    											<div class="goods-item">
    												<div class="p-img">
    													<a href="#none"><img src="//img14.360buyimg.com/N4/jfs/t5059/302/2455068799/478187/daa16abd/590013abNfa467366.jpg" alt=""></a>
    												</div>
    												<div class="p-name">
    													<a href="#none">微软（Microsoft）Surface Pro4 二合一平板电脑 12.3英寸（Intel i5 8G内存 256G存储 触控笔 ） CR3-00008</a>
    												</div>
    											</div>
    											    											    										    											    											    											<div class="goods-item">
    												<div class="p-img">
    													<a href="#none"><img src="//img14.360buyimg.com/N4/jfs/t3613/270/276960050/195172/ebf643d9/5805e012Nb24f60dc.jpg" alt=""></a>
    												</div>
    												<div class="p-name">
    													<a href="#none">荣耀平板2 标准版 8英寸 (八核 3G/16G 1920x1200 4800mAh WiFi) 珍珠白</a>
    												</div>
    											</div>
    											    											    										    									</div>
    								</div>		
    						   </div>
							   <!--非大件对应商品清单结束-->
    					 </div>
					 					 <!--以下为京东大家电配送-->
					 					 
			         <!--以下为京东第三方配送-->					
					 				<!--以下为第三方配送-->	 				
				<!--如果是SOP快递或者是京东中小件商品，但是不支持配送，则采用快递运输-->
				 			</div><!--dis-modes 结束-->
			<div class="clr"></div>
			<!--
			<div class="freight-cont">			   
				   					       <strong class="ftx-01" style="color:#666" freightByVenderId="0"  popJdShipment="false">免运费</strong>
				   			  </div>
	      -->
                        <div class="weight-cont total-freight-weight hide">总重量：<em class="ftx-03 total-freight-weight-val"></em></div>
          		</div><!--shopping-list 结束-->
				<form id="skuAndShipment_submit_form"  method = 'post'  action = '' >
	   <input type="hidden" id="saveParam_paymentId" name="saveParam.paymentId" /><!--支付方式id-->
	   <input type="hidden" id="saveParam_otype" name="saveParam.onlinePayType" />
	   <!-- 京东配送 -->
	   <input type="hidden" id="saveParam_jdShipmentType" name="saveParam.jdShipmentType" value="65" /><!--京东配送-->
	   <input type="hidden" id="saveParam_jdShipTime" name="saveParam.jdShipTime" value="3"/><!-- 区分工作日，311，411-->
	   <input type="hidden" id="saveParam_jdPayWayId" name="saveParam.jdPayWayId" value="0"/><!--货到付款方式-->
	   <input type="hidden" id="saveParam_jdCheckType" name="saveParam.jdCheckType" value="2"/><!--如果是支票这个只是写死的[仅支持京东上门自取]-->
	   <input type="hidden" id="saveParam_jdBigItemShipTimeOffset" name="saveParam.jdBigItemShipTimeOffset" value="0"/><!--京东大家电配送时间偏移量-->
	   <input type="hidden" id="saveParam_jdBigItemInstallTimeOffest" name="saveParam.jdBigItemInstallTimeOffest" value="0"/><!--京东大家电安装时间偏移量-->	  
	   <!--311-->
	   <input type="hidden" id="saveParam_promiseType" name="saveParam.promiseType"/><!--1表示311类型，2表示411-->
	   <input type="hidden" id="saveParam_promiseDate" name="saveParam.promiseDate"/><!--日历-->
	   <input type="hidden" id="saveParam_promiseTimeRange" name="saveParam.promiseTimeRange"/><!--波次-->
	   <input type="hidden" id="saveParam_promiseSendPay" name="saveParam.promiseSendPay"/><!--选择的sendpay-->
	   <input type="hidden" id="saveParam_batchId" name="saveParam.batchId"/><!--选择的sendpay-->
	   <input type="hidden" id="saveParam_promiseMessage" name="saveParam.promiseMessage"/><!--预约配送提示-->
	   <!--411-->	  
	   <input type="hidden" id="saveParam_jdBigItemNightShip" name="saveParam.jdBigItemNightShip" value="false"/><!--大家电是否支持晚间配送-->	   	   
	    <!--京东第三方配送-->
	   <input type="hidden" id="saveParam_otherShipmentType" name="saveParam.otherShipmentType" value=""/><!--京东第三方配送-->
	   <input type="hidden" id="saveParam_otherShipTime" name="saveParam.otherShipTime" value=""/><!--区分工作日，311，411-->	   
	   <input type="hidden" id="saveParam_otherBigItemShipOffset" name="saveParam.otherBigItemShipOffset" value=""/><!--京东大家电安装时间偏移量-->
	   <input type="hidden" id="saveParam_otherBigItemInstallTimeOffset" name="saveParam.otherBigItemInstallTimeOffset" value=""/><!--京东大家电配送时间偏移量-->
		<!--sop京东第三方配送-->
		<input type="hidden" id="saveParam_sopShipment" name="saveParam.sopShipment" value=""/><!--sop京东三方配送-->
	   <input type="hidden" id="saveParam_sopOtherShipmentType" name="saveParam.sopOtherShipmentType" value=""/><!--sop第三方配送-->
	   <!-- 自提方式 -->
	   <input type="hidden" id="saveParam_pickShipmentType" name="saveParam.pickShipmentType" value=""/>
       <!--自提方式-->
	   <input type="hidden" id="saveParam_pickSiteId"  name="saveParam.pickSiteId" value="428"/><!--自提点-->
	   <input type="hidden" id="saveParam_pickDate" name="saveParam.pickDate" value="2017-06-07"/><!--自提时间-->
	   <input type="hidden" id="saveParam_pickSiteNum" name="saveParam.pickSiteNum" value="5" /><!--默认5个-->
	   <input type="hidden" id="saveParam_pickRegionId" name="saveParam.pickRegionId"  /><!--搜索区域-->	   
	   
	   <input type="hidden" id="saveParam_jdBigItemPromiseType"  name="saveParam.jdBigItemPromiseType"/>
	   <input type="hidden" id="saveParam_jdBigItemPromiseDate" name="saveParam.jdBigItemPromiseDate" />
	   <input type="hidden" id="saveParam_jdBigItemPromiseTimeRange" name="saveParam.jdBigItemPromiseTimeRange"  />
	   <input type="hidden" id="saveParam_jdBigItemPromiseSendPay" name="saveParam.jdBigItemPromiseSendPay"  />  
	   <input type="hidden" id="saveParam_jdBigItemBatchId" name="saveParam.jdBigItemBatchId"  />
	   
	   <input type="hidden" id="saveParam_otherBigItemPromiseType"  name="saveParam.otherBigItemPromiseType"/>
	   <input type="hidden" id="saveParam_otherBigItemPromiseDate" name="saveParam.otherBigItemPromiseDate" />
	   <input type="hidden" id="saveParam_otherBigItemPromiseTimeRange" name="saveParam.otherBigItemPromiseTimeRange"  />
	   <input type="hidden" id="saveParam_otherBigItemPromiseSendPay" name="saveParam.otherBigItemPromiseSendPay"  />  
	   <input type="hidden" id="saveParam_otherBigItemBatchId" name="saveParam.otherBigItemBatchId"  /><!--搜索区域-->	
	</form>
	<input type="hidden" id="mainSkuIdAndNums" value="3419681_1,3790199_1,"/><!--icon隐藏域,用于更新库存-->
	<input type="hidden" id="calendar_hdata" value=""/><!--icon隐藏域，用户存日历控件时间段-->
	<input type="hidden" id="calendar_ddata" value=""/><!--icon隐藏域，用户存日历控件日期-->
	<input type="hidden" id="calendar_x" value=""/><!--icon隐藏域，存日历控件X坐标-->
	<input type="hidden" id="calendar_y" value=""/><!--icon隐藏域，用日历控件Y坐标-->
	<input type="hidden" id="calendar_big_hdata" value=""/><!--icon隐藏域，用户存日历控件时间段-->
	<input type="hidden" id="calendar_big_ddata" value=""/><!--icon隐藏域，用户存日历控件日期-->
	<input type="hidden" id="calendar_big_bzd_hdata" value=""/><!--icon隐藏域，用户存日历控件时间段-->
	<input type="hidden" id="calendar_big_bzd_ddata" value=""/><!--icon隐藏域，用户存日历控件日期-->
	<input type="hidden" id="calendar_big_x" value=""/><!--icon隐藏域，存日历控件X坐标-->
	<input type="hidden" id="calendar_big_y" value=""/><!--icon隐藏域，用日历控件Y坐标-->
	<input type="hidden" id="calendar_big_bzd_x" value=""/><!--icon隐藏域，存日历控件X坐标-->
	<input type="hidden" id="calendar_big_bzd_y" value=""/><!--icon隐藏域，用日历控件Y坐标-->	
	<input type="hidden" id="last_sel_promiseDate" value=""/><!--icon隐藏域，记录上次选中的日期-->	
	<input type="hidden" id="last_sel_promiseTimeRange" value=""/><!--icon隐藏域，记录上次选中的时间段-->	
	<input type="hidden" id="last_sel_promiseSendPay" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="last_sel_batchId" value=""/><!--icon隐藏域，记录上次选中的sendpay-->	
	<input type="hidden" id="big_last_sel_promiseDate" value=""/><!--icon隐藏域，记录上次选中的日期-->	
	<input type="hidden" id="big_last_sel_promiseTimeRange" value=""/><!--icon隐藏域，记录上次选中的时间段-->	
	<input type="hidden" id="big_last_sel_promiseSendPay" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="big_last_sel_batchId" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="big_last_sel_offset" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="big_bzdrl_last_sel_promiseDate" value=""/><!--icon隐藏域，记录上次选中的日期-->	
	<input type="hidden" id="big_bzdrl_last_sel_promiseTimeRange" value=""/><!--icon隐藏域，记录上次选中的时间段-->	
	<input type="hidden" id="big_bzdrl_last_sel_promiseSendPay" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="big_bzdrl_last_sel_offset" value=""/>
	<input type="hidden" id="big_bzdrl_last_sel_batchId" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="big_bzd_last_sel_promiseDate" value=""/><!--icon隐藏域，记录上次选中的日期-->	
	<input type="hidden" id="big_bzd_last_sel_promiseTimeRange" value=""/><!--icon隐藏域，记录上次选中的时间段-->	
	<input type="hidden" id="big_bzd_last_sel_promiseSendPay" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="big_bzd_last_sel_batchId" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="bigshipment_bzd_type" value="0"/><!--icon隐藏域，记录上次选中的sendpay-->
    <input type="hidden" id="shipment411_sendpay" value=""/><!--411sendpay-->		
	<input type="hidden" id="shipment_support_type" value=""/><!--icon隐藏域，当前311和411支持的类型，0表示311,411都不支持,1表示只支持311,2表示只支持411,3表示311,411都支持-->	
	<input type="hidden" id="shipment_select_support" value="0"/><!--icon隐藏域，当前311和411选中的是哪一个，1表示选中311,2表示选中411,3表示京准达-->	
	<input type="hidden" id="bigshipment_bzd_support" value="0"/><!--icon隐藏域，当前京准达和标准达支持的类型，标准达 0表示不支持,1表示支持-->	
	<input type="hidden" id="bigshipment_bzd_shipAndInstall" value="0"/><!--icon隐藏域，大家电标准达是否支持送装一体，1：支持  0不支持不处理,-1不支持-->	
	<input type="hidden" id="bigshipment_jzd_support" value="0"/><!--icon隐藏域，当前京准达和标准达支持的类型，京准达 0表示不支持,1表示支持-->	
	<input type="hidden" id="bigshipment_select_support" value="1"/><!--icon隐藏域，当前京准达和标准达选中的是哪一个，1表示选中京准达,2表示选中标准达-->
	<input type="hidden" id="shipment_cur411_support" value=""/><!--icon隐藏域，当前411是否还支持配送，1支持，2不支持-->	
	<input type="hidden" id="shipment411_msg" value=""/><!--icon隐藏域，411提示信息-->	
	<input type="hidden" id="pick_sel_regionid" value=""/><!--icon隐藏域，临时存放选中的自提点区域ID-->
	<input type="hidden" id="temp_pick_sel_regionid" value=""/><!--icon隐藏域，临时存放选中的自提点区域ID-->
	<input type="hidden" id="pick_sel_id" value=""/><!--icon隐藏域，临时存放选中的自提点ID-->
	<input type="hidden" id="is_invoke_pickdate" value="0"/><!--自提时间隐藏域，是否要刷新自提点时间-->
	<input type="hidden" id="is_refresh_installdate" value=""/><!--icon隐藏域，是否要刷新商品安装时间-->
	<input type="hidden" id="bigItemCodDates" value=""/><!--icon隐藏域，是否要刷新商品安装时间-->
	
	<input type="hidden" id="popVenderIdStr" value="0"/><!--icon隐藏域，所有店铺ID串-->
	<input type="hidden" id="locShopIdStr"  value=""/><!--icon隐藏域，所有loc门店ID串 -->
		
	<input type="hidden" id="calendar_hdata_zxj_jzd" value=""/><!--icon隐藏域，用户存日历控件时间段-->
	<input type="hidden" id="calendar_ddata_zxj_jzd" value=""/><!--icon隐藏域，用户存日历控件日期-->
	<input type="hidden" id="calendar_x_zxj_jzd" value=""/><!--icon隐藏域，存日历控件X坐标-->
	<input type="hidden" id="calendar_y_zxj_jzd" value=""/><!--icon隐藏域，用日历控件Y坐标-->
	<input type="hidden" id="last_sel_promiseDate_zxj_jzd" value=""/><!--icon隐藏域，记录上次选中的日期-->	
	<input type="hidden" id="last_sel_promiseTimeRange_zxj_jzd" value=""/><!--icon隐藏域，记录上次选中的时间段-->	
	<input type="hidden" id="last_sel_promiseSendPay_zxj_jzd" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="last_sel_batchId_zxj_jzd" value=""/><!--icon隐藏域，记录上次选中的sendpay-->
	<input type="hidden" id="promiseSopViewList" /><!--sop日历弹窗隐藏域-->
	<input type="hidden" id="jzdAmount_hidden" value=""/><!--京准达运费收费标准-->
	<input type="hidden" id="jsdAmount_hidden" value=""/><!--极速达运费收费标准-->
	<input type="hidden" id="djzdAmount_hidden" value=""/><!--大家电京准达运费收费标准-->
	<input type="hidden" id="bigItemJzdInstallTimeOffest" value=""/><!--大家电京准达安装偏移量-->
	<input type="hidden" id="bigItemInstallTimeOffest" value=""/><!--大家电标准达安装偏移量-->
	<input type="hidden" id="forcedChoice" autocomplete="off" value=""/><!--生鲜是否显示默认时效-->
	
	<!--隐藏的sop配送日历开始-->
	<script id="sop_shipment_hidediv" type="text/temp">
		  <div class="date-thickbox" >
				<div class="tab-nav">
					<ul>
						<li class="tab-nav-item tab-item-selected" >标准达 <b> </b> </li> 
					</ul>
				</div>
				<div class="tab-con" id="tab_sop_div">
					<div class="date-delivery" id="date-delivery-sop"></div>
					<div class="ftx-03 mt20">
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
					<div class="op-btns mt10 ac"> <a id="timeSaveSop" clstag="pageclick|keycount|trade_201602181|52" href="javascript:void(0);"  class="btn-1">确定 </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
				</div>
		</div>
	</script>
	<!--隐藏的sop配送日历结束-->
	<!--隐藏的311配送日历开始-->
	<script id="shipment_hidediv" type="text/temp">
		  <div class="date-thickbox" >
				<div class="tab-nav">
					<ul>
						<li class="tab-nav-item" id="li_zxj_id" onclick="doSwith311Tab('zxj')"><span id="jzdAmount"></span> <b> </b> </li>
						<li class="tab-nav-item" id="li_311_id" onclick="doSwith311Tab('311')">标准达 <b> </b> </li> 
						<li class="tab-nav-item" id="li_411_id" onclick="doSwith311Tab('411')"><span id="jsdAmount"></span><b> </b> </li>
					</ul>
				</div>
				<div class="tab-con" id="tab_zxj_div">
					<div class="date-delivery date-delivery-freight" id="date-delivery0"></div>
					<div class="ftx-03 mt20">
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
		           	 <div class="tips-618 mt20 hide tips-618-for-calendar">
		              <div class="tips-con">
		                <p class="tips-m">双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。</p>
		          	  </div>
		         	 </div>
					<div class="op-btns mt10 ac"> <a id="timeSaveZxj" clstag="pageclick|keycount|trade_201602181|52" href="javascript:void(0);"  class="btn-1">确定 </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
				</div>
				<div class="tab-con hide" id="tab_311_div">
					<div class="date-delivery date-delivery-new" id="date-delivery1"></div>
					<div class="ftx-03 mt20">
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
		           	 <div class="tips-618 mt20 hide tips-618-for-calendar">
		              <div class="tips-con">
		                <p class="tips-m">双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。</p>
		          	  </div>
		         	 </div>
					<div class="op-btns mt10 ac"> <a id="timeSave311" clstag="pageclick|keycount|trade_201602181|51" href="javascript:void(0);"  class="btn-1"> 确定 </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
				</div>
				<div class="tab-con hide" id="tab_411_div">
					<div> 下单后或支付成功后2小时送达</div>
					<div class="ftx-03 mt20" id="message_show_411">
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
					<div class="op-btns mt10 ac"> <a id="timeSave411" clstag="pageclick|keycount|trade_201602181|53" class="btn-1"> 确定 </a> <a href="javascript:jQuery.closeDialog();" class="btn-9 ml10"> 取消 </a> </div>
				</div>
		</div>
	</script>
	<!--隐藏的311配送日历结束-->
	<!--隐藏的大家电配送日历开始-->
	<script id="bigShipment_hidediv" type="text/temp">
		  <div class="date-thickbox">
				<div class="tab-nav">
					<ul>
						<li class="tab-nav-item tab-item-selected" id="li_djd_id" onclick="doSwithBigTab('djd')"><span id="djzdAmount"></span> <b> </b> </li>
						<li class="tab-nav-item" id="li_bzd_id" onclick="doSwithBigTab('bzd')">标准达 <b> </b> </li> 
					</ul>
				</div>
				<div class="tab-con" id="tab_djd_div">
					<div class="date-delivery date-delivery-freight" id="big-date-delivery0"></div>
					<div class="ftx-03 mt20">
					<i class="date-delivery-icon"></i>
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
                    <div class="tips-618 mt20 hide tips-618-for-calendar">
                        <div class="tips-con">
                            <p class="tips-m">双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。</p>
                        </div>
                    </div>
					<div class="op-btns mt10 ac"> <a id="timeSaveDjdJzd" clstag="pageclick|keycount|trade_201602181|55" href="javascript:void(0);"  class="btn-1"> 确定  </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
		         </div>
				 <div class="tab-con hide" id="tab_bzd_div">
					<div class="date-delivery date-delivery-new" id="big-date-delivery1"></div>
					<div class="ftx-03 mt20">
					<i class="date-delivery-icon"></i>
						温馨提示：我们会努力按照您指定的时间配送，但因天气、交通等各类因素影响，您的订单有可能会有延误现象！
					</div>
                     <div class="tips-618 mt20 hide tips-618-for-calendar">
                         <div class="tips-con">
                             <p class="tips-m">双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。</p>
                         </div>
                     </div>
					<div class="op-btns mt10 ac"> <a id="timeSaveBzd" clstag="pageclick|keycount|trade_201602181|54" href="javascript:void(0);"  class="btn-1"> 确定  </a> <a href="javascript:jQuery.closeDialog();"  class="btn-9 ml10"> 取消 </a> </div>
				 </div>
		  </div>
	</script>
	<!--隐藏的大家电配送日历结束-->
	<script id="nostock-box01" type="text/temp">
    <div class="limited-thickbox">
    	<div class="tip-box icon-box">
    		<span class="warn-icon m-icon"></span>
    		<div class="item-fore">
    			<h3>下手慢了~部分商品被抢空，继续结算其它商品？</h3>
    		</div>
    	</div>
    	<div class="goods-items" id="out-skus">
    	</div>
    	<div class="op-btns ac">
    			<a href="javascript:continueBuy()" class="btn-1" clstag="trade|keycount|sop|bfwhjxjs">继续</a>
    			<a href="javascript:goCart()" class="btn-9 ml10" clstag="trade|keycount|sop|bfwhfhgwc">返回购物车</a>
    	</div>
    </div>
    </script>
    <br><br>
	<div id="trade-nostock-recommendation-render" style="display:none"></div>
    <script id="nostock-box02" type="text/temp">
    <div class="limited-thickbox">
    	<div class="tip-box icon-box">
    		<span class="warn-icon m-icon"></span>
    		<div class="item-fore">
    			<h3>下手慢了~全部商品被抢空了
					<span class="extra">
                        <a href="javascript:goCart()" class="btn-9 ml10" clstag="trade|keycount|sop|qbwhfhgwc">返回购物车</a>
                    </span>
				</h3>
    		</div>
    	</div>
    	<div class="p-lists">
    		<div class="mt">
    			看看其他的...
    		</div>
    		<div class="mc" id="trade-nostock-recommendation">
    		</div>
    	</div>
    </div>
    </script>
    <!--隐藏的无货代下单div-->
<script id="nostock-box03" type="text/temp">
    <div class="nostock-thickbox">
    	<div class="tip-box icon-box-new">
			<span class="warn-icon m-icon"></span>
			<div class="item-fore">
				<h3>下手慢了，部分商品被抢空，是否继续购买？</h3>
				<span>商品可能不满足某些优惠条件</span>
			</div>
		</div>
    	<div class="goods-items" id="out-skus">
    	</div>
    <div class="subs-info" id="detailAddr" style="display:none">
		<span class="sub-tit">到货代下单信息：</span>
		<br>
		<span class="fl">下一个月到货自动为您下单</span>
		<em class="fl ml10 mr10">|</em>
		<span class="fl">在线支付</span>
		<em class="fl ml10 mr10">|</em>
		<span class="fl ml5 mr5" id="name"></span>
		<span class="fl ml5 mr5" id="addrTel"></span>
		<span class="fl addr ml5" id="addrInfo"></span>
		<br>
		<span>可以去<em class="ml5 mr5">我的京东-京东代下单</em><a href="//skunotify.jd.com/storeOrderSubMvc/queryStoreSub.action" target="_blank" class="ftx-05">查看详情</a></span>
	</div>
	<div class="op-btns ar">
		<a href="javascript:continueBuy()" class="btn-1">确定</a>
		<a href="javascript:goCart()" class="btn-9 ml10">取消</a>
	</div>
    </div>
</script>
     <!--无货代下单失败提示div-->
<script id="nostock-failed" type="text/temp">
		<div class="nostock-tipsbox" >
			<div class="tip-box icon-box-new">
				<span class="error-icon m-icon"></span>
				<div class="item-fore">
					<h3>提交失败</h3>
					<span>可能是由于网络问题，导致提交失败，尝试返回填写</span>
				</div>
			</div>
			<div class="op-btns ac mt20 ml30">
				<a href="javascript:goCart()" class="btn-1">返回</a>
				<a href="#nogo" id="nostock-failedClose" class="btn-9 ml10">关闭</a>
			</div>
		</div>
</script>
<!--无货代下单成功提示div-->
<script id="nostock-success" type="text/temp">
<div class="nostock-tipsbox">
	<div class="tip-box tip-box-succ icon-box-new">
		<span class="succ-icon m-icon"></span>
		<div class="item-fore">
			<h3>订阅消息成功！</h3>
		</div>
	</div>
	<div class="op-btns ac mt20 ml80">
		<a href='javascript:goCart()' class="btn-1">返回购物车</a>
		<a href='//skunotify.jd.com/storeOrderSubMvc/queryStoreSub.action' target='_blank' class="btn-9 ml10">查看代下单详情</a>
	</div>
</div>
</script>
<script>
/**
 * 退换无忧浮层
 */
$(".J-mode-infor-tips").hover(
    function() {
        $(this).find(".mode-infor-tips").show();
    },
    function() {
        $(this).find(".mode-infor-tips").hide();
    }
);
</script>
        <div class="clr"></div>
  </div>
  <!--shopping-lists 结束-->  
</div>	                        </div>
                    </div>
                    <!--添加商品清单结束-->
                    <!--添加备注信息-->
                    <div class="order-remarks hide" id="orderRemarkItem">
                    </div>
                    <!--  /widget/invoice-step/invoice-step.tpl -->
                                        <div class="hr"></div>
                    <!-- 发票信息 -->
                    <div class="step-tit" id="invoice-step">
    <h3>发票信息</h3>
    	</div>
<div class="step-content">
    <div id="part-inv" class="invoice-cont">
    	                	<span class="mr10"> 普通发票（电子） &nbsp; </span>
        	<span class="mr10"> 个人&nbsp; </span>
        	<span class="mr10"> 明细&nbsp; </span>  
        	 
					                     <a href="#none" id="invoiceEdit" class="ftx-05 invoice-edit" onclick="edit_Invoice()" clstag="pageclick|keycount|trade_201602181|16">修改</a>
                    </div>
</div>
                    <div class="clr"></div>
                    <!--/ /widget/invoice-step/invoice-step.tpl -->
                    <div class="hr"></div>
                    <!--  /widget/order-coupon/order-coupon.tpl -->
                      <div class="step-tit step-toggle-off" id="virtualdiv" onclick="vertualHidOrShow()" clstag="pageclick|keycount|xunizichan__2016031015|1" >
    <h3>使用优惠/京东卡/抵用</h3>
    <i></i>
  </div>
    <div class="step-cont order-virtual" style="display: none;">
        <div class="order-virtual-tabs">
            <ul>
                            <li class="ui-switchable-item" id="couponitem" onclick="query_coupons_vertual()" clstag="pageclick|keycount|xunizichan__2016031015|2"><span>优惠券</span>
                <i style="display: none"></i>
              </li>
                                          <li class="ui-switchable-item" id="giftitem" onclick="query_giftCards_vertual()" clstag="pageclick|keycount|xunizichan__2016031015|3"><span>礼品卡</span><i style="display: none"></i></li>
                                          <li class="ui-switchable-item" id="jdbeanitem"  onclick="showOrHideJdBean()" clstag="pageclick|keycount|xunizichan__2016031015|4"><span>京豆</span><i style="display: none"></i></li>
                                          <li class="ui-switchable-item" id="balanceitem" clstag="pageclick|keycount|xunizichan__2016031015|5"><span>余额</span><i style="display: none"></i></li>
                          </ul>
        </div>
        <div class="ui-switchable-panel-main" id>
            <div class="ftx01 virtual-warning ml20 hide" id="safeBalancePart">
              <span>
                为保障您的账户资金安全，请先
                <a target="_blank" href="http://safe.jd.com/user/paymentpassword/safetyCenter.action" class="ftx-05">
                  [开启支付密码]
                </a>
              </span>
            </div>
            <div class="hr hide"></div>
            <!-- coupon -->
                         <div class="coupon-main ui-switchable-panel">
              <div class="coupon-optimal ml20" id="bestCouponDiv">
                  <label clstag="pageclick|keycount|xunizichan__2016031015|13">
                    <input id="bestCouponCheck" type="checkbox" onclick="getBastCouponList(this)" />
                    <span id="bestCoupon">
                      使用最优组合
                    </span>
                  </label>
              </div>
              <div class="hr" id="couponsplit"></div>
              <div class="coupon-cont">
                  <div class="coupon-tab ml20">
                    <ul>
                      <li class="coupon-tab-item curr" id="skucoupontit" clstag="pageclick|keycount|xunizichan__2016031015|6">商品优惠券</li>
                      <li class="coupon-tab-item" id="freightcoupontit" clstag="pageclick|keycount|xunizichan__2016031015|7">运费券</li>
                      <li class="coupon-tab-item" id="changecoupontit" clstag="pageclick|keycount|xunizichan__2016031015|8">优惠码兑换</li>
                    </ul>
                  </div>
                  <div class="coupon-tab-panel-main ml20" id="coupons">
                  </div>
              </div>
            </div>
                        <!-- giftcard -->
                        <div class="giftcard-main ui-switchable-panel" id="gift">
            </div>
                                    <!-- jdbean-->
            <div class="jdbean-main ui-switchable-panel">
                <div class="beans-2015 ml20" id="jdBeans-new">   
                </div>
            </div>
                                    <!-- balance -->
            <div class="balance-main ui-switchable-panel">
                <div class="form v-balance ml20" id="jdBalance" clstag="pageclick|keycount|xunizichan__2016031015|12">
                      <input id="selectOrderBalance" type="checkbox" class="jdcheckbox"  value=""                       onclick="useOrCancelBalance(this)">
                      <label id="canUsedBalanceId" for="selectOrderBalance">
                        &nbsp;使用余额（账户当前余额：<span class="ftx-01">0.00</span>元）
                                              </label>
                        <div class="ftx01 safeLpkPart hide" id="safeBalancePart">
                            为保障您的账户资金安全，余额暂不可用，请先
                            <a target="_blank"
                               href="//safe.jd.com/user/paymentpassword/safetyCenter.action">[开启支付密码]</a>
                        </div>
                    
                </div>
            </div>
                        <div class="virtual-usedcont">
              <span class="virtual-usedcont-price">金额抵用<em id="total">￥</em></span>
              <ul>
                <li id="couponTotalShow" style="display: none;">使用优惠券<em ></em>张，优惠<em></em>元 </li>
                <li id="freeFreightShow" style="display: none;">| 使用运费券<em></em>张，抵用运费<em></em>元 </li>
                <li id="giftCardShow" style="display: none;">| 使用京东E卡<em></em>张，抵用<em></em>元</li>
                <li id="jdBeanShow" style="display: none;">| 使用京豆，抵用<em></em>元<li>
                <li id="balanceShow" style="display: none;">| 使用余额，抵用<em></em>元</li>
              </ul>
            </div>
        </div>
    </div>

                    <!--/  /widget/order-coupon/order-coupon.tpl -->
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
                        <span>返现：</span>
                        <em class="price" id="cachBackId" v="300.00"> -￥300.00</em>
                    </div>
                    <div class="list">
                        <span>运费：</span>
                        <em class="price" id="freightPriceId"> ￥0.00</em>
                    </div>
                    <div class="list"                     style="display:block;" >
				        <span>服务费：</span>
				        <em class="price" id="serviceFeeId">￥0.00</em>
				    </div>
				    <div class="list"                     style="display:block;" >
                        <span>退换无忧：</span>
                        <em class="price" id="buyerFreightInsuranceId">￥0.00</em>
                    </div>
                    <div class="list"
                         id="showCouponPrice"  style="display:none;"  >
                        <input id="couponPriceNum" type="hidden" value="0"/>
                        <input id="couponPricehidden" type="hidden" value="0.00"/>
                        <span>商品优惠：</span><em class="price" id='couponPriceId'>-￥0.00</em>
                    </div>
                    <div class="list"
                         id="showFreeFreight"  style="display:none;"  >
                        <input id="freeFreightPriceNum" type="hidden" value="0"/>
                        <input id="freeFreightPricehidden" type="hidden" value="0.00"/>
                        <span>运费优惠：</span><em class="price" id="freeFreightPriceId"> -￥0.00</em>
                    </div>
                    <div class="list"
                         id="showGiftCardPrice"  style="display:none;"  >
                        <input id="giftCardPricehidden" type="hidden" value="0.00"/>
                        <input id="giftCardPriceNum" type="hidden" value="0"/>
                        <span> 礼品卡： </span><em class="price"
                                                id='giftCardPriceId'>-￥ 0.00</em>
                    </div>
                    <div class="list" id="showUsedJdBean"  style="display:none;"  >
                        <input type="hidden" id="jdBeanexChange" value="0">
                        <span>京豆：</span><em class="price" id='usedJdBeanId'>-￥0</em>
                    </div>
                    <div class="list"
                         id="showUsedOrderBalance"  style="display:none;"  >
                        <input type="hidden" id="useBalanceShowDiscount" value="0.00">
                        <span>余额：</span><em class="price" id='usedBalanceId'>-￥0.00</em>
                    </div>
                    <div class="list" id="showPeriodFee" style="display:none;">
                        <span>分期手续费(由分期银行收取)：</span><em class="price" id="periodFee">￥0.00</em>
                    </div>
                </div>
                <div class="clr"></div>
                    </div>
        <!--/ /widget/order-summary/order-summary.tpl -->
        <!-- 运费弹窗显示 -->
        <div id="tooltip-box06" class="hide">
                    <div class="summary-freight-box-new">
                <div class="sfb-tit" >
                  	  <span>店铺运费明细</span>
                  	  <span class="ml5 ftx-03" id="frightDetail"></span>
                </div>
                <div class="sfb-con">
                                                                                                        <!-- 只包含延保商品的商家不显示 -->
                                                                                                                                                                                                                                                        <div class="sfb-item">
                                              <div class="sfb-item-tit">
                                                                                                                        <span class="vendor_name_freight" id="0">
                                            京东自营                                            </span>
                                                                                <em class="ftx-03 hide" id="xzweight-detail-bak">
                                            （总重2.210kg
                                                                                            ）
                                                                                    </em>
                                        <em class="ftx-03 hide" id="sxweight-detail-bak">
                                            （总重
                                                                                            ）
                                                                                    </em>
                                        <em class="ftx-03 hide" id="wmweight-detail-bak">
                                            （总重2.210kg
                                                                                            ）
                                                                                    </em>
                                                                </div>
<!-- begin 运费明细块 -->
                                                        <div class="sfb-item-info" id="normal-freight-container">
                                    <span class="sfb-item-info-tit normal-freight-title">非生鲜商品
                                        <em class="ftx-03 hide" id="xzweight-detail">
                                            （总重2.210kg
                                                                                            ）
                                                                                    </em>
                                    </span>
                                    <span>基础运费：<b class="ftx-01 base-freight"></b><a href="http://help.jd.com/user/issue/109-188.html" target="_blank" class="ml5 ftx-05 hide" id="freighttips">查看港澳台地区收费标准</a></span>
                                    <span class="hide">续重运费：<b class="ftx-01 xz-freight"></b><a href="http://help.jd.com/user/issue/109-188.html" target="_blank" class="ml5 ftx-05">查看续重标准></a></span>
                                    <span class="hide">续重运费：<b class="ftx-01 overseaxz-freight"></b><a href="http://help.jd.com/user/issue/109-3492.html" target="_blank" class="ml5 ftx-05">查看续重标准></a></span>
                                    <span class="hide">海外地区附加燃油费：<b class="ftx-01 fuel-freight"></b></span>
                                    <span class="hide">免运费<b class="ftx-01 free-freight" freightByVenderId="0" popJdShipment="false"></b></span>
                                </div>
                                <div class="hr" id="sx-freight-split-line"></div>
                                <div class="sfb-item-info hide" id="sx-freight-container">
                                    <span class="sfb-item-info-tit sx-freight-title">生鲜商品
                                        <em class="ftx-03 hide" id="sxweight-detail">
                                            （总重
                                                                                            ）
                                                                                    </em>
                                    </span>
                                    <span>基础运费：<b class="ftx-01 base-freight"></b></span>
                                    <span class="hide">续重运费：<b class="ftx-01 xz-freight">￥20.00</b><a href="http://help.jd.com/user/issue/109-188.html" target="_blank" class="ml5 ftx-05">查看续重标准></a></span>
                                    <span class="hide">免运费<b class="ftx-01 free-freight" freightByVenderId="0" popJdShipment="false"></b></span>
                                </div>
                                <div class="hr" id="ext-freight-split-line"></div>
                                <div class="sfb-item-info hide" id="ext-freight-container">
                                    <span class="hide">非生鲜京准达运费：<b class="ftx-01 jzd-freight"></b></span>
                                    <span class="hide">非生鲜极速达运费：<b class="ftx-01 jsd-freight"></b></span>
                                    <span class="hide">大件京准达运费：<b class="ftx-01 djzd-freight"></b></span>
                                    <span class="hide">生鲜京准达运费：<b class="ftx-01 jzdsx-freight"></b></span>
                                    <span class="hide">生鲜大件极速达运费：<b class="ftx-01 jzdsxdj-freight"></b></span>
                                    <span class="hide">生鲜极速达运费：<b class="ftx-01 jsdsx-freight"></b></span>
                                </div>
                                                    <div class="sfb-item-goods">
                                 <div class="ui-switchable-body">
                                     <div class="ui-switchable-panel-main" >
                                                                                                                                                                       <div class="ui-switchable-panel" >
                                                <ul class="sfb-goods-list">
                                                                                                                                                                                                   <li id="3419681" class="sfb-goods-item" >
                                                     <a href="#none" title="荣耀平板2 标准版 8英寸 (八核 3G/16G 1920x1200 4800mAh WiFi) 珍珠白"><img height="50" width="50" src="//img12.360buyimg.com/n3/jfs/t3613/270/276960050/195172/ebf643d9/5805e012Nb24f60dc.jpg" alt=""/></a>
                                                                                                          </li>
                                                                                                                                                                                                                                                                                                                                                                                            <li id="3790199" class="sfb-goods-item" >
                                                     <a href="#none" title="微软（Microsoft）Surface Pro4 二合一平板电脑 12.3英寸（Intel i5 8G内存 256G存储 触控笔 ） CR3-00008"><img height="50" width="50" src="//img12.360buyimg.com/n3/jfs/t5059/302/2455068799/478187/daa16abd/590013abNfa467366.jpg" alt=""/></a>
                                                                                                          </li>
                                                                                                                                                                                                      </ul>
                                                     </div>
                                                                                                                               </div>
                                 </div>
                                  <div class="sfb-ui-switchable-page" >
                                     <a href="javascript:void(0)" class="sfb-prev">&lt;</a>
                                     <a href="javascript:void(0)" class="sfb-next">&gt;</a>
                                 </div>
                             </div>
                        </div>
                                                            </div>
            </div> 
        </div>  
        <!-- 运费弹窗结束-->
		<div id="tooltip-box09" class="hide">
              <div class="plus-box-cont">
                <div class="pbox-tit">
                  <strong class="fl"><em class="ftx-01" id="totalNum">0</em>件商品有PLUS专享价</strong>
                  <span class="ml5 ftx-03 fr">可省<em class="ml5 ftx-01" id="totalPricetip">￥0</em></span>
                </div>
                <div class="pbox-con" id="plusProducts">
                    <ul>
                                            </ul>
                </div>
              </div>
		</div>
        <!--  /widget/checkout-floatbar/checkout-floatbar.tpl -->
        <div class="trade-foot">
			<div id="plusInfoByFreight" class="hide"></div>
			<div id="plusInfo" class="hide"></div>
			<div class="trade-foot-detail-com">
				                <div class="fc-price-info">
                  <span class="price-tit">应付总额：</span>
                  <span class="price-num" id="sumPayPriceId">￥7937.00</span>
                </div>
                <div class="fc-baitiao-info" style="display: none;">
					<span>白条支付：<em>不分期</em>（不使用优惠）<i class="bt-edit-icon" onclick="javascript:btDetail();" clstag="pageclick|keycount|PaymentLead__2016030411|5"></i></span>
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
			   <!-- 支付密码 -->
              <div class="pay-pwd mt10 hide" id="paypasswordPanel">
      			<div id="payPassword_container" class="alieditContainer clearfix" data-busy="0">
          			<label for="i_payPassword" class="i-block">支付密码：</label>
          				<div class="i-block">
  	         				<div class="i-block six-password">
                  				<input class="i-text sixDigitPassword" id="txt_paypassword" type="password" autocomplete="off" required="required" value="" name="payPassword_rsainput" data-role="sixDigitPassword" tabindex="" maxlength="6" minlength="6" aria-required="true" AUTOCOMPLETE="off" onchange='clearError()'>
                  			<div tabindex="0" class="sixDigitPassword-box">
	                      <i><b></b></i>
	                      <i><b></b></i>
	                      <i><b></b></i>
	                      <i><b></b></i>
	                      <i><b></b></i>
	                      <i><b></b></i>
	                      <span id="cardwrap" data-role="cardwrap"></span>
                  		</div>
              		</div>
	              <span class="forgot-password">
	                  <a target="_blank" href="//safe.jd.com/user/paymentpassword/getBackPassword.action">
	                 	 忘记密码？
	                  </a>
	              </span>
          		</div>
      		</div>
		      <div id="no-pwd-error" class="pay-pwd-error hide">
		          <label class="error-msg" for="">请输入6位数字密码</label>
		      </div>
		      <div id="pwd-error" class="pay-pwd-error hide" style="margin-right:16px;">
		           <label class="error-msg" for=""></label>
		      </div>
		      <div class="payment-bt-tips hide">
		          <span class="bt-tips-cont">结算金额变动，请重新选择白条分期以及白条优惠</span><i class="bt-tips-close" onclick="closebtErrorTip();">×</i>
		      </div>
  			</div>
			    <!-- 预售 -->
			  
            <!---->
            <div class="pay-pwd" id="paypasswordPanel" style="display: none">
              <div class="pay-pwd-cont">
                <span class="label">
                  支付密码
                </span>
                <input type="password" class="itxt" id="txt_paypassword">
                <span class="forgot-password">
                  <a target="_blank" href="http://safe.jd.com/user/paymentpassword/getBackPassword.action">
                    忘记支付密码？
                  </a>
                </span>
              </div>
            </div>
            <!-- 支付密码 -->

			<!--港澳售项目 -->
			<div class="hkmtbuy-con hide" id="hkmtbuy-area">
                <div class="hkmtbuy-chk">
                   <label for=""><input type="checkbox" checked="" id="hkmtbuy" name="">已阅读并同意</label><a href="http://help.jd.com/user/issue/266-1691.html" class="ftx05" target="_blank">《售全球服务协议》</a>
    			</div>
  			</div>
  			
  			<!-- 全球售、台湾售 -->
			<div class="hkmtbuy-con hide" id="overseamtbuy-area">
                <div class="hkmtbuy-chk">
                   <label for=""><input type="checkbox" checked="" id="overseamtbuy" name="">已阅读并同意</label><a href="" class="ftx05" onclick="javascript:return openOverseaAgree();">《售全球服务协议》</a>
    			</div>
  			</div>
  			
            <div id="checkout-floatbar" class="group">
                <div class="ui-ceilinglamp checkout-buttons">
                    <div class="sticky-placeholder hide" style="display: none;">
                    </div>
                    <div class="sticky-wrap">
                        <div class="inner">
                        	                            <button type="submit" class="checkout-submit" id="order-submit"
                                    onclick="javascript:submit_Order();" clstag="pageclick|keycount|trade_201602181|25">
                               	 提交订单<b></b>
                            </button>
                                                        
                            <span id="checkCodeDiv"></span>

                            <div class="checkout-submit-tip" id="changeAreaAndPrice" style="display: none;">
                                由于价格可能发生变化，请核对后再提交订单
                            </div>
                            <!--div style="display:none" id="factoryShipCodShowDivBottom" class="dispatching">
                              部分商品货到付款方式：先由京东配送“提货单”并收款，然后厂商发货。
                            </div-->
                        </div>
                        <span id="submit_message" style="display:none" class="submit-error"></span>

                        <div class="submit-check-info" id="submit_check_info_message" style="display:none"></div>
                    </div>
                </div>
            </div>

        </div>
        <!--/ /widget/checkout-floatbar/checkout-floatbar.tpl -->

        <!--  /widget/backpanel/backpanel.tpl -->
        <div id="backpanel">
            <div id="backpanel-inner" class="hide switchOn">
                <div class="bp-item bp-item-survey">
                    <a href="http://surveys.jd.com/index.php?r=survey/index/sid/416587/lang/zh-Hans" class="survey" target="_blank">我要反馈</a>
                </div>
                <div class="bp-item bp-item-backtop" data-top="0">
                    <a href="#none" class="backtop" target="_self">返回顶部</a>
                </div>
            </div>
        </div>
        <!--/ /widget/backpanel/backpanel.tpl -->

    </div>

</div>


<!-- /main -->

<!--  /widget/footer/footer.tpl -->
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

<script type="text/javascript" rel="stylesheet" src="//misc.360buyimg.com/user/purchase/2.0.0/widget/??/checkout-floatbar/checkout-floatbar.js,backpanel/backpanel.js" source="widget"></script>
<script type="text/javascript" rel="stylesheet" src="//misc.360buyimg.com/user/purchase/2.0.0/js/paypwd.js"></script>
<script>
    $("#consignee_id").val('138669292');
    $("#hideAreaIds").val('15-1213-2963-49963');
</script>
<!-- 不支持自提商品列表隐藏域  -->
<script id="noSupSkus_hideDiv" type="text/temp">&nbsp;</script>
<!-- 港澳售项目 -->
<script id="hkmt-box01" type="text/temp">
<div class="hkmt-thickbox-warn">
	<div class="tip-box icon-box-new">
		<span class="warn-icon-yellow m-icon"></span>
		<div class="item-fore">
			<span>订单中部分商品不支持对当前地址的配送<br>请返回购物车修改</span>
		</div>
	</div>
	<div class="op-btns ac mt30 mb30">
		<a href="//cart.jd.com" class="btn-1">返回购物车</a>
		<a href="#none" class="btn-9 ml10" onclick="javascript:closeDialog();">取消</a>
	</div>
</div>
</script>
<script id="hkmt-box02" type="text/temp">
<div class="hkmt-thickbox-confirm">
	<div class="tip-box icon-box-new">
		<span class="confirm-icon m-icon"></span>
		<div class="item-fore">
			<h3>继续提交即视为同意协议，提交订单？</h3>
		</div>
	</div>
	<div class="agreement-main agreement-off">
		<span class="agreement-tit">《售全球服务协议》</span>
		<p class="agreement-cont">本服务协议由您与北京京东叁佰陆拾度电子商务有限公司共同缔结，本协议具有合同效力。
<br>本协议中协议双方合称协议方，北京京东叁佰陆拾度电子商务有限公司在本协议中亦称为京东。
<br>一、定义： 
<br>1.	海外直运：收货地址为大陆以外地址的订单，由京东负责安排合作承运商将货物通过直邮的方式寄递。 
<br>2.	包裹：是指京东依用户要求将货品进行合理的物流包装、封箱并粘贴运单后适合运输的包件。 
<br>本协议中协议双方合称协议方，北京京东叁佰陆拾度电子商务有限公司在本协议中亦称为京东。
<br>一、定义： 
<br>1.	海外直运：收货地址为大陆以外地址的订单，由京东负责安排合作承运商将货物通过直邮的方式寄递。 
<br>2.	包裹：是指京东依用户要求将货品进行合理的物流包装、封箱并粘贴运单后适合运输的包件。 
<br>本协议中协议双方合称协议方，北京京东叁佰陆拾度电子商务有限公司在本协议中亦称为京东。
<br>一、定义： 
<br>1.	海外直运：收货地址为大陆以外地址的订单，由京东负责安排合作承运商将货物通过直邮的方式寄递。 
<br>2.	包裹：是指京东依用户要求将货品进行合理的物流包装、封箱并粘贴运单后适合运输的包件。 
		</p>
	</div>
	<div class="agreement-showall-outter pt10 pb10 ac"><a href="#none" class="agreement-showall">查看更多<i></i></a></div>
	<div class="op-btns ac mt20">
		<a href="#none" onclick="javascript:parent.continue_SubmitOrder(0);" class="btn-1">继续提交订单</a>
		<a href="#none" class="btn-9 ml10" onclick="javascript:closeDialog();">取消</a>
	</div>
</div>
</script>
<!-- 海外售 -->
<style>
.oversea-table{border:solid #b3b3b3;color:#000;border-width:1px 0 0 1px}
.oversea-table th,.oversea-table td{border-right:1px solid #d0d0d0;border-bottom:1px solid #b3b3b3;padding:5px;height:25px}
</style>
<script id="overseamt-box01" type="text/temp">
	<div class="hkmt-thickbox-confirm">
		<div class="tip-box icon-box-new">
			<span class="confirm-icon m-icon"></span>
			<div class="item-fore">
				<h3>继续提交即视为同意协议，提交订单？</h3>
			</div>
		</div>
		<div class="agreement-main agreement-off">
			<span class="agreement-tit">《售全球服务协议》</span>
			<p class="agreement-cont">
				<h3>一、协议内容与效力</h3>
				<p>本服务协议由您与广州晶东贸易有限公司共同缔结，本协议具有合同效力。本协议中协议双方合称协议方，广州晶东贸易有限公司在本协议中亦称为京东。 </p>
				<p>您在JD.COM购买页面上勾选《售全球服务协议》前，请您仔细阅读本协议的全部内容。如果您对本协议的条款有疑问的，请通过京东客服渠道进行询问，京东将向您解释条款内容。如果您不同意本协议的任意内容，或者无法准确理解京东对条款的解释，请不要勾选《售全球服务协议》和进行后续操作。您通过网络页面点击勾选、确认或以其他方式选择接受本协议，即表示您同意接受本协议的全部内容。 </p>
				<p>您勾选该服务时，相应服务费用将向您进行相应展示，您勾选该服务，即视为您接受该服务的相应价格。服务商有权不定时修订该价格，服务商修改价格后，如您继续选择《售全球服务协议》，视为您接受修改后的价格。 </p>
				<p>如您不同意相关变更，应停止使用本服务。经修订的协议及规则一经公布后，立即自动生效，成为本协议的有效组成部分。登陆或继续使用“本服务”将表示您接受经修订的协议。如果您不同意本协议之内容，或者您所属的国家或地方排除本协议内容之一部或全部时，请您立即停止使用本服务。 </p>
				<p>您同意于使用本服务时，您全部之意思表示，均以电子文件作为表示方法，如您于各项服务与功能等页面点选同意或确认等功能键时，即视为您正式之意思表示。 </p>
				<p>本协议是京东为向您提供售全球服务而与您特别订立的协议。本协议的生效不代表您与京东订立的其他协议失去效力。除非另有特别约定，您与京东订立的包括《用户注册协议》在内的任何协议均继续有效，您仍然应当遵守各协议的相关约定。各协议之间约定存在冲突的，以特别约定优先于一般约定，后订立的约定优先于先订立的约定为原则进行处理。</p>
				<h3>二、服务及相关约定</h3>
				<p>1. 京东向您提供售全球服务，服务模式为：</p>
				<p>（1）如您在京东商城提交订单时填写港澳、台湾、海外收货地址，则系统默认使用港澳、台湾、海外直运。 </p>
				<p>（2）合作承运商按照您的收货地址信息安排运输并配送到您指定的港澳、台湾、海外收货地址。</p>
				<p>2. 在您选择直运服务过程中，您承诺遵守以下约定： </p>
				<p>（1） 您同意一旦使用本服务即同意您所授权京东的合作承运商有权知晓及使用您的相关交易信息，包括收件人姓名，身份证件号码及联系方式等。 </p>
				<p>（2）您同意在领取包裹时需确认外包装完好后方进行签收，您签收包裹即表示包裹外包装完好；您同意并在此确认，如您收货时包裹外包装完好，则直运服务即符合本协议相应约定。签收后发生的包裹损坏、毁损、遗失等情况京东不承担相关责任。</p>
				<h3>三、用户行为规则</h3>
				<p>用户通过京东账户操作的各种行为应符合法律法规规定、平台规则规定及注册协议约定，当出现（包含但不限于）以下行为时，视为用户自愿同意接受京东或商家进行权益降级，扣除京豆，冻结或关闭京东账户，取消订单，不再提供服务等操作，且同意京东或商家不进行任何赔偿或补偿。如给京东或相关方造成损失，用户愿意承担相应责任：</p>
				<p>（1） 注册资料内容含虚假信息；</p>
				<p>（2） 虚假交易、虚假好评,发布无根据的恶意评价；</p>
				<p>（3） 购买正品商品，退货时退回非京东平台对应订单中销售的商品、以次充好、以假乱真等行为；</p>
				<p>（4） 无故、无正常理由拒收签收订单货物的行为；</p>
				<p>（5） 符合非正常订单中的行为；</p>
				<h3>四、下单</h3>
				<p>1. 订购的商品价格以您下订单时京东网上价格为准。</p>
				<p>2. 请您清楚准确地填写您的真实姓名、送货地址及联系方式。因如下情况造成订单延迟或无法配送等，京东将不承担责任：</p>
				<p>A. 客户提供错误信息和不详细的地址； </p>
				<p>B. 货物送达无人签收，由此造成的重复配送所产生的费用及相关的后果； </p>
				<p>C. 不可抗力，例如：自然灾害、交通戒严、突发战争等。</p>
				<h3>五、配送</h3>
				<p>1、费用</p>
				<p>售全球运费将按照商品重量收取（限重30kg及以上或单边长度大于等于55厘米不销售），具体订单的运费以订单结算页公示金额为准。 如对运费收取有任何异议，请联系京东客服进行咨询沟通。</p>
				<p>京东不承担目的国的进口关税，京东商城销售的商品价格均未包含进口税金。如遇海关查验、查扣等情景，请您根据要求配合缴纳税金，否则京东无法保证配送成功。</p>
				<p>2 在正常派件失败后，会联系您协调再次派送的时间，并承诺免费派送3次；如若3次派送后仍无法签收的，则需要您主动联系，前往承运商在收件地附近的派送点进行自提或联系承运商进行再次派送，并承担因此而产生的额外配送费用；从您的包裹三次派送失败后承运商将为您在派送点免费保管包裹15个自然日。逾期如您仍未到派送点自提或联系承运商进行再次派送，则京东有权按照当地的法律、行业惯例自行处理，不再对该包裹的存储，灭失等风险承担责任。 （注：根据承运商提供的实际承运方式的不同，部分承运方式在正常派件失败后，则需要您主动联系，前往包裹被存放的邮局进行自提；邮局保管包裹之时间与费用视您当地邮局政策所定，京东将不再另行通知于您；逾期行为之处理办法同上文所述。）</p>
				<p>3. 因非承运商原因而需要从港澳、台湾、海外退回包裹时，您需要自行联系承运商将包裹退回中国大陆境内。该退运服务的收费由您和承运商自行结算。</p>
				<h3>六、争议解决</h3>
				<p>本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国法律（不包括香港、澳门、台湾法律）予以处理。如发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向有管辖权的中华人民共和国大陆地区法院提起诉讼。 </p>
				<h3>七、售后服务总则（只适用于港澳、台湾、海外地区）</h3>
				<p>京东全球售商品支持订单完成后7天内退货、补发，不支持换货和维修。</p>
				<table cellspacing="0" cellpadding="0" class="oversea-table">
					<tbody>
						<tr>
		                    <th><b>退货类别</b></th>
		                    <th><b>具体描述</b></th>
		                    <th><b>申请时间期限</b></th>
		                    <th><b>是否收取返回运费</b></th>
		                    <th><b>退回方式</b></th>
		                    <th><b>退回金额</b></th>
		                    <th><b>退款方式</b></th>
		                    <th><b>备注</b></th>
		                </tr>
		                <tr>
		                    <td>到货物流损、缺件或商品描述与网站不符等京东原因</td>
		                    <td>物流损指在运输过程中造成的损坏、漏液、破碎、性能故障，于收到货后24小时内反馈，经售后人员核查情况属实。缺件指商品原装配件缺失。</td>
		                    <td>收货后（且订单状态为完成）7天内申请售后退货</td>
		                    <td>否</td>
		                    <td>客户寄回</td>
		                    <td>全额（包括退回运费）</td>
		                    <td>退至账户余额</td>
		                    <td>京东审核期间可能需要您提供实物照片、视频等，以便售后人员快速做出判断并及时处理。</td>
		                </tr>
		                <tr>
		                    <td>不支持7天无理由退货</td>
		                    <td>非京东原因造成的，不支持顾客7天无理由退货</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                    <td>不 支 持</td>
		                </tr>
					</tbody>
				</table>
				<p>说明：</p>
				<p>1. 实际收货日期按照第三方物流平台显示的实际签收日期为准。</p>
				<p>2. 在商品退货时，需扣除购买该商品时通过评价或晒单所获得的京豆及相应优惠，如账户京豆已使用，则从商品退款金额中相应扣除；有赠品的主商品发生退货时，需将赠品一并提交退货返回，如赠品未退回，则主商品无法全额退款。</p>
				<p>3. 以下商品不支持“非京东原因”退货</p>
				<p>（1） 个人定作类商品；</p>
				<p>（2）鲜活易腐类商品；</p>
				<p>（3）在线下载或者您拆封的音像制品，计算机软件等数字化商品； </p>
				<p>（4）交付的报纸期刊类商品；</p>
				<p>（5）其他根据商品性质不适宜退货，经您在购买时确认不宜退货的商品。</p>
			</p>
		</div>
		<div class="agreement-showall-outter pt10 pb10 ac"><a href="#none" class="agreement-showall">查看更多<i></i></a></div>
		<div class="op-btns ac mt20">
			<a href="#none" onclick="javascript:parent.continue_SubmitOrder(1);" class="btn-1">继续提交订单</a>
			<a href="#none" class="btn-9 ml10" onclick="javascript:closeDialog();">取消</a>
		</div>
	</div>
</script>
		<div class="w">
	<div id="footer-2014">
		<div class="links"><a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx">关于我们</a>|<a rel="nofollow" target="_blank" href="//www.jd.com/contact/">联系我们</a>|<a rel="nofollow" target="_blank" href="//help.jd.com/user/custom.html">联系客服</a>|<a rel="nofollow" target="_blank" href="//vc.jd.com/cooperation.html">合作招商</a>|<a rel="nofollow" target="_blank" href="//helpcenter.jd.com/venderportal/index.html">商家帮助</a>|<a rel="nofollow" target="_blank" href="//jzt.jd.com">营销中心</a>|<a rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>|<a target="_blank" href="//club.jd.com/links.aspx">友情链接</a>|<a target="_blank" href="//media.jd.com/">销售联盟</a>|<a href="//club.jd.com/" target="_blank">京东社区</a>|<a href="//sale.jd.com/act/FTrWPesiDhXt5M6.html" target="_blank">风险监测</a>|<a href="//news.jd.com/30_1.html" target="_blank" clstag="h|keycount|2016|43">隐私政策</a>|<a href="//gongyi.jd.com" target="_blank">京东公益</a>|<a href="//en.jd.com/" target="_blank">English Site</a>|<a href="//en.jd.com/help/question-58.html" target="_blank">Contact Us</a></div>
		<div class="copyright"><a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000088"><img src="//img13.360buyimg.com/cms/jfs/t2293/321/1377257360/19256/c267b386/56a0a994Nf1b662dc.png" /> 京公网安备 11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank" href="//img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="//sale.jd.com/act/pQua7zovWdJfcIn.html" target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="//misc.360buyimg.com/wz/wlwhjyxkz.jpg" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733&nbsp;&nbsp;nbsp;&nbsp;&nbsp;<a class="mod_copyright_license" target="_blank" href="//sale.jd.com/act/7Y0Rp81MwQqc.html">经营证照</a><br>京东旗下网站：<a href="https://www.jdpay.com/" target="_blank">京东钱包</a>
		</div>		
		<div class="authentication">
			<a rel="nofollow" target="_blank" href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202007080200026">
				<img width="103" height="32" alt="经营性网站备案中心" src="//img12.360buyimg.com/da/jfs/t535/349/1185317137/2350/7fc5b9e4/54b8871eNa9a7067e.png" class="err-product" />
			</a>
			<script type="text/JavaScript">function CNNIC_change(eleId){var str= document.getElementById(eleId).href;var str1 =str.substring(0,(str.length-6));str1+=CNNIC_RndNum(6); document.getElementById(eleId).href=str1;}function CNNIC_RndNum(k){var rnd=""; for (var i=0;i < k;i++) rnd+=Math.floor(Math.random()*10); return rnd;}</script>
			<a rel="nofollow" target="_blank" id="urlknet" tabindex="-1" href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&ct=df&pa=294005">
				<img border="true" width="103" height="32" onclick="CNNIC_change('urlknet')" oncontextmenu="return false;" name="CNNIC_seal" alt="可信网站" src="//img11.360buyimg.com/da/jfs/t643/61/1174624553/2576/4037eb5f/54b8872dNe37a9860.png" class="err-product" />
			</a>
			<a rel="nofollow" target="_blank" href="http://www.bj.cyberpolice.cn/index.do">
				<img width="103" height="32" alt="网络警察" src="//img12.360buyimg.com/cms/jfs/t2050/256/1470027660/4336/2a2c74bd/56a89b8fNfbaade9a.jpg" class="err-product" />
			</a>
			<a rel="nofollow" target="_blank" href="https://search.szfw.org/cert/l/CX20120111001803001836">
				<img width="103" height="32" src="//img11.360buyimg.com/da/jfs/t451/173/1189513923/1992/ec69b14a/54b8875fNad1e0c4c.png" class="err-product" />
			</a>
			<a target="_blank" href="http://www.12377.cn"><img width="103" height="32" src="//img30.360buyimg.com/da/jfs/t1915/215/1329999964/2996/d7ff13f0/5698dc03N23f2e3b8.jpg"></a>
			<a target="_blank" href="http://www.12377.cn/node_548446.htm"><img width="103" height="32" src="//img14.360buyimg.com/da/jfs/t2026/221/2097811452/2816/8eb35b4b/5698dc16Nb2ab99df.jpg"></a>
		</div>
	</div>
</div>
	</body>
</html>