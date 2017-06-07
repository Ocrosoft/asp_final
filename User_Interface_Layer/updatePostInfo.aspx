<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatePostInfo.aspx.cs" Inherits="User_Interface_Layer.updatePostInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="/js/jquery-2.1.4.min.js"></script>
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/user/purchase/2.0.0/widget/??common/common.css,header-2015/header-2015.css,consignee-scroll/consignee-scroll.css,consignee-selfpick/consignee-selfpick.css,payment-step/payment-step.css,presale-step/presale-step.css,shopping-list/shopping-list.css,invoice-dialog/invoice-dialog.css,order-virtual/order-virtual.css,order-summary/order-summary.css,checkout-floatbar/checkout-floatbar.css,paypwd/paypwd.css,/delivery-calendar-freight/delivery-calendar-freight.css,backpanel/backpanel.css" source="widget" />
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/1.0.0/ui-base.css,shortcut/2.0.0/shortcut.css,global-header/1.0.0/global-header.css,myjd/2.0.0/myjd.css,nav/2.0.0/nav.css,shoppingcart/2.0.0/shoppingcart.css,global-footer/1.0.0/global-footer.css,service/1.0.0/service.css" />
    <link charset="utf-8" rel="stylesheet" href="https://misc.360buyimg.com/jdf/1.0.0/ui/tips/1.0.0/tips.css" />
    <link charset="utf-8" rel="stylesheet" href="https://misc.360buyimg.com/jdf/1.0.0/ui/dialog/1.0.0/dialog.css" />
</head>
<body>
    <form id="form1" runat="server" action="/updatePostInfoPost.aspx" method="post">
        <div class="form-new" id="consignee-form">

            <!-- 收货人start -->
            <div class="item" id="name_div">
                <span class="label"><em>*</em>收货人</span>
                <div class="fl">
                    <input runat="server" type="text" class="itxt" id="consignee_name" name="consigneeParam.name" maxlength="20" value="..." />
                    <span class="error-msg" id="name_div_error"></span>
                </div>
            </div>
            <!-- 收货人end -->

            <!-- 详细地址start -->
            <div class="item">
                <span class="label"><em>*</em>详细地址</span>
                <div class="fl">
                    <!--span id="areaNameTxt"></span-->
                    <input runat="server" type="text" class="itxt itxt02" id="consignee_address" name="consigneeParam.address" maxlength="50" value="..." />
                    <span class="error-msg" id="address_div_error"></span>
                </div>
            </div>
            <!-- 详细地址end -->

            <!-- 手机号码start -->
            <div class="item" id="call_div">
                <span class="label"><em>*</em>手机号码</span>
                <div class="fl">
                    <span class="telnum-prefix" id="span_consignee_areaCode">0086
                    </span>
                    <span class="telnum-prefix-gap"></span>
                    <input runat="server" type="text" class="itxt itxt01" id="consignee_mobile" name="consigneeParam.mobile" onblur="check_Consignee('mobile_div')" maxlength="11" value="..." />
                </div>
                <span class="error-msg" id="mobile_div_error"></span>
            </div>
            <!-- 手机号码end -->

            <!-- 邮政编码start -->
            <div class="item" id="postcode_div">
                <span class="label"><em>*</em>邮政编码</span>
                <div class="fl">
                    <input runat="server" type="text" class="itxt" id="consignee_postcode" name="consigneeParam.postcode" value="" placeholder="" />
                    <span class="error-msg" id="postcode_div_error"></span>
                </div>
            </div>
            <!-- 邮政编码end -->

            <!-- 邮箱地址start -->
            <div class="item" id="email_div">
                <span class="label" id="span_consignee_email"><em>&nbsp;&nbsp;</em>邮箱地址</span>
                <div class="fl">
                    <input runat="server" type="text" class="itxt" id="consignee_email" name="consigneeParam.email" />
                    <span class="error-msg" id="email_div_error"></span>
                    <div class="ftx-03">用来接收订单提醒邮件，便于您及时了解订单状态</div>
                </div>
            </div>
            <!-- 邮箱地址end -->

            <div class="item mt20">
                <span class="label">&nbsp;</span>
                <div class="fl">
                    <a href="#none" class="btn-1"><span id="saveConsigneeTitleDiv">保存收货人信息</span></a>
                    <div class="loading loading-1" style="display: none"><b></b>正在提交信息，请等待！</div>
                </div>
            </div>
        </div>
    </form>
    <script>
        $('.btn-1').click(function () {
            if ($(this).hasClass('disabled')) return;
            $('.loading').css('display', 'block');
            $(this).addClass('disabled');
            $('form').submit();
        });
        if (location.href.indexOf('error=1') != -1) {
            alert('出现错误，请稍后再试.');
        }
    </script>
</body>
</html>
