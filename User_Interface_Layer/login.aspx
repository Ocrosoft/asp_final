﻿<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>蹭蹭-欢迎登录</title>
    <link rel="icon" href="//www.jd.com/favicon.ico" />
    <link type="text/css" rel="stylesheet" href="/css/login.css"/>
    <script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        $(function () {
            window.SysConfig = {
                encryptInfo: true,
                rememberMeShowEnable: false
            };
        });
    </script>
</head>
<body>
    <div class="w">
        <div id="logo">
            <a href="//www.jd.com/">
                <img src="//misc.360buyimg.com/lib/img/e/logo-201305-b.png" alt="蹭蹭" width="170" height="60">
            </a>
            <b></b>
        </div>
    </div>
    <div id="content">
        <div class="login-wrap">
            <div class="w">
                <div class="login-form">
                    <div class="login-tab login-tab-l">
                        <a href="javascript:void(0)">扫码登录</a>
                    </div>
                    <div class="login-tab login-tab-r">
                        <a href="javascript:void(0)">账户登录</a>
                    </div>
                    <div class="login-box">
                        <div class="mt tab-h">
                        </div>
                        <div class="msg-wrap">
                            <div class="msg-error hide"><b></b></div>
                        </div>
                        <div class="mc">
                            <div class="form">
                                <form id="formlogin" method="post" onsubmit="return false;">
                                    <div class="item item-fore1">
                                        <label for="loginname" class="login-label name-label"></label>
                                        <input id="loginname" type="text" class="itxt" name="loginname" tabindex="1"
                                            autocomplete="off"
                                            placeholder="邮箱/用户名/已验证手机" />
                                        <span class="clear-btn"></span>
                                    </div>

                                    <div id="entry" class="item item-fore2">
                                        <label class="login-label pwd-label" for="nloginpwd"></label>
                                        <input type="password" id="nloginpwd" name="nloginpwd" class="itxt itxt-error"
                                            tabindex="2" autocomplete="off" placeholder="密码" />
                                        <span class="clear-btn"></span>
                                        <span class="capslock"><b></b>大小写锁定已打开</span>
                                    </div>

                                    <div id="o-authcode"
                                        class="item item-vcode item-fore3  hide ">
                                        <input id="authcode" type="text" class="itxt itxt02" name="authcode" tabindex="3">
                                        <img id="JD_Verification1" class="verify-code" src="#" onclick="" />
                                        <a href="javascript:void(0)" onclick="">看不清换一张</a>
                                    </div>

                                    <div class="item item-fore4">
                                        <div class="safe">
                                            <span></span>
                                            <span class="forget-pw-safe">
                                                <a href="/uc/links?tag=safe" class="" target="_blank">忘记密码</a>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="item item-fore5">
                                        <div class="login-btn">
                                            <a href="javascript:;" class="btn-img btn-entry" id="loginsubmit" tabindex="6">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="coagent" id="kbCoagent">
                        <ul>
                            <li class="extra-r">
                                <div>
                                    <div class="regist-link">
                                        <a
                                            href="//reg.jd.com/reg/person?ReturnUrl=http%3A%2F%2Fwww.jd.com" target="_blank"><b></b>立即注册</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="login-banner">
                <div class="w">
                    <div id="banner-bg" class="i-inner">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="w">
        <div id="footer-2013">
            <div class="links">
                <a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx">关于我们
                </a>
                |
            <a rel="nofollow" target="_blank" href="//www.jd.com/contact/">联系我们
            </a>
                |
            <a rel="nofollow" target="_blank" href="//zhaopin.jd.com/">人才招聘
            </a>
                |
            <a rel="nofollow" target="_blank" href="//www.jd.com/contact/joinin.aspx">商家入驻
            </a>
                |
            <a rel="nofollow" target="_blank" href="//www.jd.com/intro/service.aspx">广告服务
            </a>
                |
            <a rel="nofollow" target="_blank" href="//app.jd.com/">手机京东
            </a>
                |
            <a target="_blank" href="//club.jd.com/links.aspx">友情链接
            </a>
                |
            <a target="_blank" href="//media.jd.com/">销售联盟
            </a>
                |
            <a href="//club.jd.com/" target="_blank">京东社区
            </a>
                |
            <a href="//gongyi.jd.com" target="_blank">京东公益
            </a>
                |
            </div>
            <div class="copyright">
                Copyright&nbsp;&copy;&nbsp;2004-2017&nbsp;&nbsp;京东JD.com&nbsp;版权所有
            </div>
        </div>
    </div>
    <script>
        // 切换到账号密码登录
        $(this).hasClass("login-tab-l") ? (-1 != window.location.href.indexOf("/popupLogin2013") && $(".no-reg-buy").hide(), $(".login-box").hide(), $(".qrcode-login").show().css("visibility", "visible"), $("#country_code_layer").hide(), t(), l ? (s(), q(!1, !1, !0)) : (n(), q(!0, !1))) : (-1 != window.location.href.indexOf("/popupLogin2013") && $(".no-reg-buy").show(), $(".login-box").show().css("visibility", "visible"), $("#entry").css("visibility", "visible"), $.browser.msie && /msie 8\.0/i.test(window.navigator.userAgent.toLowerCase()) && ($(".item").each(function () {
            if (0 != $(this).css("margin-bottom")) {
                if ($(this).next().is(".marginBottom"))
                    return;
                $(this).after('<div class="marginBottom" style="height:' + $(this).css("margin-bottom") + '"></div>'),
                    $(this).css("margin-bottom", "0px")
            }
        }), $(".msg-wrap").after('<div class="marginBottom" style="height:' + $(".msg-wrap").css("margin-bottom") + '"></div>'), $(".msg-wrap").css("margin-bottom", "0px")), $(".qrcode-login").hide()),
            $(".login-tab a").removeClass("checked"),
            $(this).find("a").addClass("checked")
    </script>
    <script>
        //随机生成广告
        var data = [{
            src: "//img30.360buyimg.com/da/jfs/t5740/34/1111642231/149958/7aae47e2/5923a768Nfb878b9e.jpg",
            bgColor: "#4890fc",
            weight: "#4890fc"
        }, {
            src: "//img14.360buyimg.com/da/jfs/t5650/74/324968046/136852/fb8981c2/591eae9fN2041b3b7.jpg",
            bgColor: "#2d7cf1",
            weight: "4"
        }, {
            src: "//img30.360buyimg.com/da/jfs/t5677/172/940128419/134452/40710eea/5922b035N0b46060a.jpg",
            bgColor: "#0c8afa",
            weight: "4"
        }, {
            src: "//img13.360buyimg.com/da/jfs/t5281/239/1862456648/43957/26091b6c/59155bf2N6d1c0f04.jpg",
            bgColor: "#E93854",
            weight: ""
        }
        ];
        var getRandom = function (arr) {
            var _temp = 0,
                _random = 0,
                _weight,
                _newArr = [];
            for (var i = 0; i < arr.length; i++) {
                _weight = parseInt(arr[i].weight) ? parseInt(arr[i].weight) : 1;
                _newArr[i] = [];
                _newArr[i].push(_temp);
                _temp += _weight;
                _newArr[i].push(_temp);
            }
            _random = Math.ceil(_temp * Math.random());
            for (var i = 0; i < _newArr.length; i++) {
                if (_random > _newArr[i][0] && _random <= _newArr[i][1]) {
                    return arr[i];
                }
            }
        };
        var tpl = '<div class="login-banner" style="background-color: {bgColor}">\		              <div class="w">\			         <div id="banner-bg"  clstag="pageclick|keycount|20150112ABD|46" class="i-inner" style="background: url({imgURI}) 0px 0px no-repeat;background-color: {bgColor}"></div>\		              </div>\		           </div>';
        var bgData = getRandom(data);
        var bannerHtml = tpl.replace(/{bgColor}/g, bgData.bgColor).replace(/{imgURI}/g, bgData.src);
        $('.login-banner').replaceWith(bannerHtml);
    </script>
</body>
</html>

