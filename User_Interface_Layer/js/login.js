//随机生成广告
var data = [{ src: "//img14.360buyimg.com/da/jfs/t5884/122/2349462473/90181/fda9b438/592f8c35N1c2a38f2.jpg", bgColor: "#e8390d", weight: "4" }, { src: "//img13.360buyimg.com/da/jfs/t5998/245/1039108660/290364/6dca0b42/592f91efNcc3ee723.jpg", bgColor: "651da3 ", weight: "" }, { src: "//img10.360buyimg.com/da/jfs/t5590/188/2954512837/73880/637cfd7c/59350dd4Nef174f78.jpg", bgColor: "#fe3057", weight: "" }, { src: "//img11.360buyimg.com/da/jfs/t5650/210/2908527046/177433/89e9f82a/5934cc9cNe9f85e13.jpg", bgColor: "#020202", weight: "" }, { src: "//img13.360buyimg.com/da/jfs/t5887/33/2473228158/129435/aa2136aa/5930de18Nede0029b.jpg", bgColor: "#f63353", weight: "4" }, { src: "//img20.360buyimg.com/da/jfs/t5584/265/2343801236/63165/f78d0142/592fe45dN0bee9ebe.jpg", bgColor: "#1e1e1e", weight: "" }, { src: "//img12.360buyimg.com/da/jfs/t5941/9/1706654396/177433/89e9f82a/5934cc6eN1e93ce50.jpg", bgColor: "#020202", weight: "" }];
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
    var ret = '';
    if (location.href.indexOf('returnUrl') != -1)
        ret = location.href.split('returnUrl=')[1];
    var name = $('#loginname')[0].value;
    var pass = $('#nloginpwd')[0].value;
    var pass_encode = BASE64.encoder(pass);
    $('#nloginpwd')[0].value = pass_encode;
    if (ret != '') {
        console.log(ret);
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