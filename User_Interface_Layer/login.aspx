<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="User_Interface_Layer.login" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>东京-欢迎登录</title>
    <link rel="icon" href="#" />
    <link type="text/css" rel="stylesheet" href="/css/login.css" />
    <script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="/js/jbase64.js"></script>
</head>
<body>
    <div class="w">
        <div id="logo">
            <a href="#">
                <img src="/Images/logo-201305-b.png" alt="东京" width="170" height="60">
            </a>
            <b></b>
        </div>
    </div>
    <div id="content">
        <div class="login-wrap">
            <div class="w">
                <div class="login-form">
                    <div class="login-tab login-tab-l">
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
                                <form id="formlogin" method="post">
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
                                                <a href="#" class="" target="_blank">忘记密码</a>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="item item-fore5">
                                        <div class="login-btn">
                                            <a href="javascript:;" class="btn-img btn-entry" id="loginsubmit" OnClick="loginsubmit_Click" tabindex="6">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
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
                                            href="reg.aspx" target="_blank"><b></b>立即注册</a>
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
                <a rel="nofollow" target="_blank" href="#">关于我们
                </a>
                |
            <a rel="nofollow" target="_blank" href="#">联系我们
            </a>
                |
            <a rel="nofollow" target="_blank" href="#">人才招聘
            </a>
                |
            <a rel="nofollow" target="_blank" href="#">商家入驻
            </a>
                |
            <a rel="nofollow" target="_blank" href="#">广告服务
            </a>
                |
            <a rel="nofollow" target="_blank" href="#">手机东京
            </a>
                |
            <a target="_blank" href="#">友情链接
            </a>
                |
            <a target="_blank" href="#">销售联盟
            </a>
                |
            <a href="#" target="_blank">东京社区
            </a>
                |
            <a href="#" target="_blank">东京公益
            </a>
                |
            </div>
            <div class="copyright">
                Copyright&nbsp;&copy;&nbsp;2016-2017&nbsp;&nbsp;东京DJ.com&nbsp;版权所有
            </div>
        </div>
    </div>
    <script>
        //随机生成广告
        var data = [{
            src: "/Images/5923a768Nfb878b9e.jpg",
            bgColor: "#4890fc",
            weight: "#4890fc"
        }, {
            src: "/Images/591eae9fN2041b3b7.jpg",
            bgColor: "#2d7cf1",
            weight: "4"
        }, {
            src: "/Images/5922b035N0b46060a.jpg",
            bgColor: "#0c8afa",
            weight: "4"
        }];
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
    <script>
        var capslock = false;
        // 输入显示清除按钮
        $('#loginname,#nloginpwd').keyup(function (e) {
            var text = this.value;
            var btn = this.nextElementSibling;
            if (text.length > 0) btn.style.display = 'block';
            else btn.style.display = 'none';
            // 大小写
            if (this.id == 'nloginpwd') {
                var keyCode = e.keyCode || e.which;
                if (keyCode == 20) capslock = !capslock;
                var isShift = e.shiftKey;
                if (keyCode >= 65 && keyCode <= 90) {
                    var c = text[text.length - 1];
                    if (c >= 'a' && c <= 'z' && isShift) capslock = true;
                    else if (c >= 'a' && c <= 'z' && !isShift) capslock = false;
                    else if (c >= 'A' && c <= 'Z' && isShift) capslock = false;
                    else if (c >= 'A' && c <= 'Z' && !isShift) capslock = true;
                }
                if (capslock) this.nextElementSibling.nextElementSibling.style.display = 'inline';
                else this.nextElementSibling.nextElementSibling.style.display = 'none';
            }
        });
        $('#nloginpwd').focusout(function () {
            this.nextElementSibling.nextElementSibling.style.display = 'none';
        });
        $('#nloginpwd').focusin(function () {
            if (capslock) this.nextElementSibling.nextElementSibling.style.display = 'inline';
            else this.nextElementSibling.nextElementSibling.style.display = 'none';
        });
        // 清除按钮
        $('.clear-btn').click(function () {
            this.previousElementSibling.value = '';
            this.style.display = 'none';
        });
    </script>
    <script>
        $('#loginsubmit').click(function () {
            $('#formlogin').submit();
        });
        $('#formlogin').submit(function () {
            var name = $('#loginname')[0].value;
            var pass = $('#nloginpwd')[0].value;
            var pass_encode = BASE64.encoder(pass);
            $('#nloginpwd')[0].value = pass_encode;
            return true;
        });
	</script>
    <script>
        /*
        $('#loginname')[0].value = '${name}';
        var msg = '${errorMsg}';
        if (msg.length != 0) {
            $('.msg-error')[0].innerHTML = '<b></b>${errorMsg}';
            $('.msg-error').css('display', 'block');
            $('#${errorID}').addClass('item-error');
        }
        */
	</script>
</body>
</html>