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
// 登录按钮
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}
$('#loginsubmit').click(function () {
    $('#formlogin').submit();
});
$('#formlogin').submit(function () {
    var ret = GetQueryString('returnUrl');
    var name = $('#loginname')[0].value;
    var pass = $('#nloginpwd')[0].value;
    var pass_encode = BASE64.encoder(pass);
    $('#nloginpwd')[0].value = pass_encode;
    if (ret != null) {
        $('#formlogin').attr('Action', $('#formlogin').attr('Action') + '?returnUrl=' + ret);
    }
    return true;
});
try {
    $('#loginname')[0].value = $('#hide_name')[0].value;
    var msg = $('#hide_errorMsg')[0].value;
    if (msg.length != 0) {
        $('.msg-error')[0].innerHTML = '<b></b>' + msg;
        $('.msg-error').css('display', 'block');
        $('#' + $('#hide_errorID')[0].value).addClass('item-error');
    }
}
catch (e) {
    console.log(e);
}