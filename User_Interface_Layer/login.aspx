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
    <form runat="server">
        <asp:HiddenField runat="server" ID="hide_name" />
        <asp:HiddenField runat="server" ID="hide_errorID" />
        <asp:HiddenField runat="server" ID="hide_errorMsg" />
    </form>
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
                                <form id="formlogin" action="login_cj.aspx" method="post">
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
    <script src="/js/login.js"></script>
</body>
</html>