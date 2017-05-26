var capslock = false;
function showTips(ele) {
    var p = ele.parentNode.nextElementSibling;
    if ($(ele.parentNode).hasClass('form-item-error')) return; // 错误不显示提示
    var html = ele.outerHTML;
    html = html.substring(html.indexOf('default'));
    html = html.substring(html.indexOf('\"') + 1);
    html = html.substring(0, html.length - 2);
    p.innerHTML = html;
}
function showError(ele, msg) {
    if ($(ele.parentNode).hasClass('form-item-valid')) $(ele.parentNode).removeClass('form-item-valid');
    var statu = ele.parentNode.nextElementSibling;
    if (!$(ele.parentNode).hasClass('form-item-error')) $(ele.parentNode).addClass('form-item-error');
    statu.innerHTML = '<span id="form-pwd-error" class="error"><i class="i-error"></i>' + msg + '</span>'; // 添加提示
    statu.style.display = 'block'; // 显示提示
}
function checkAccount(ele) {
    var text = ele.value;
    if (text.length == 0) {
        if ($(ele.parentNode).hasClass('form-item-valid')) $(ele.parentNode).removeClass('form-item-valid');
        hideError(ele);
        return;
    }
    if (text.length < 4 || text.length > 20) showError(ele, '长度只能在4-20个字符之间');
    else {
        $(ele.nextElementSibling).css('background', 'url("/Images/loading.gif")'); // 显示加载图片
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("GET", "/checkUserExits.aspx?name=" + text, true);
        xmlhttp.send(); // 检查是否已被注册
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var res = xmlhttp.responseText.split("\n")[0].trim();
                $($('#form-account')[0].nextElementSibling).css('background', '');
                if (res == 'False') {
                    if (!$($('#form-account')[0].parentNode).hasClass('form-item-valid'))
                        $($('#form-account')[0].parentNode).addClass('form-item-valid');
                }
                else {
                    var p = $($('#form-account')[0].parentNode);
                    if (p.hasClass('form-item-valid')) p.removeClass('form-item-valid');
                    showError($('#form-account')[0], '该用户名已被注册');
                }
            }
        }
    }
}
function hideTips(ele) {
    if ($(ele.parentNode).hasClass('form-item-error')) return; // 错误不显示提示
    ele.parentNode.nextElementSibling.innerHTML = '';
}
function hideError(ele) {
    if ($(ele.parentNode).hasClass('form-item-error')) $(ele.parentNode).removeClass('form-item-error');
    ele.parentNode.nextElementSibling.innerHTML = '';
}
function checkPass(ele) {
    var text = ele.value;
    if (text.length == 0) {
        if ($(ele.parentNode).hasClass('form-item-valid')) $(ele.parentNode).removeClass('form-item-valid');
        hideError(ele);
        return;
    }
    if (text.length < 6 || text.length > 20) showError(ele, '长度只能在6-20个字符之间');
    else {
        if (!$(ele.parentNode).hasClass('form-item-valid')) $(ele.parentNode).addClass('form-item-valid');
    }
}
function checkRePass(ele) {
    var text = ele.value;
    var textpr = ele.parentNode.previousElementSibling.previousElementSibling.children[2].value;
    if (text.length == 0) {
        if ($(ele.parentNode).hasClass('form-item-valid')) $(ele.parentNode).removeClass('form-item-valid');
        hideError(ele);
        return;
    }
    if (text.length != 0 && textpr.length != 0) { // 密码，重复密码都不为空，且两者不等
        if (text != textpr) {
            showError(ele, '两次密码输入不一致');
        }
        else {
            if (!$(ele.parentNode).hasClass('form-item-valid')) $(ele.parentNode).addClass('form-item-valid');
            if ($(ele.parentNode).hasClass('form-item-error')) $(ele.parentNode).removeClass('form-item-error');
        }
    }
}
// 输入框提示
$('.field').focusin(function () {
    showTips(this);

    if (this.id == 'form-account') {
        //
    }
    else if (this.id == 'form-pwd') {
        if (capslock) this.nextElementSibling.nextElementSibling.style.display = 'block';
        else this.nextElementSibling.nextElementSibling.style.display = 'none';
    }
    else if (this.id == 'form-equalTopwd') {
        if (capslock) this.nextElementSibling.nextElementSibling.style.display = 'block';
        else this.nextElementSibling.nextElementSibling.style.display = 'none';
    }
    else if (this.id = 'authCode') {
        //
    }
});
$('.field').focusout(function () {
    hideTips(this);
    if (this.id == 'form-account') { // 账号
        checkAccount(this);
    } else if (this.id == 'form-pwd') { // 密码
        checkPass(this);
        checkRePass(this.parentNode.nextElementSibling.nextElementSibling.children[2]);
        this.nextElementSibling.nextElementSibling.style.display = 'none';
    }
    else if (this.id == 'form-equalTopwd') {
        checkRePass(this);
        this.nextElementSibling.nextElementSibling.style.display = 'none';
    }
    else if (this.id = 'authCode') {
        //
    }
});
$('.field').keyup(function () {
    hideError(this);
    showTips(this);
});
$('#form-pwd,#form-equalTopwd').keyup(function (e) {
    // 检查大小写
    var keyCode = e.keyCode || e.which;
    if (keyCode == 20) capslock = !capslock;
    var isShift = e.shiftKey;
    var text = this.value;
    if (keyCode >= 65 && keyCode <= 90) {
        var c = text[text.length - 1];
        if (c >= 'a' && c <= 'z' && isShift) capslock = true;
        else if (c >= 'a' && c <= 'z' && !isShift) capslock = false;
        else if (c >= 'A' && c <= 'Z' && isShift) capslock = false;
        else if (c >= 'A' && c <= 'Z' && !isShift) capslock = true;
    }
    if (capslock) this.nextElementSibling.nextElementSibling.style.display = 'block';
    else this.nextElementSibling.nextElementSibling.style.display = 'none';
});
$('#register-form').submit(function () {
    var a = $('#form-account')[0], b = $('#form-pwd')[0], c = $('#form-equalTopwd')[0], d = $('#authCode')[0];
    checkAccount(a);
    if (a.value.length == 0) showError(a, '用户名不能为空');
    checkPass(b);
    if (b.value.length == 0) showError(b, '密码不能为空');
    checkRePass(c);
    if (c.value.length == 0) showError(c, '两次密码输入不一致');
    if (d.value.length == 0) showError(d, '验证码不能为空');
    else $(d.parentNode).addClass('form-item-valid');
    if ($(a.parentNode).hasClass('form-item-valid') &&
        $(b.parentNode).hasClass('form-item-valid') &&
        $(c.parentNode).hasClass('form-item-valid') &&
        $(d.parentNode).hasClass('form-item-valid'))
        return true;
    return false;
});
// 刷新验证码
$('#imgAuthCode').click(function () {
    this.src = '/CheckCode.aspx?' + Date.parse(new Date());
    this.previousElementSibling.focus();
});
function closeDialog() {
    $('.ui-dialog,.ui-mask').css('display', 'none');
}
$('.ui-dialog-close,.ui-mask').click(closeDialog);
$('#protocol').click(function () {
    $('#dialog-title')[0].innerHTML = '东京用户注册协议';
    $('#dialog-content')[0].innerHTML = $('#protocoldiv')[0].innerHTML;
    $('.protocol-button button').click(closeDialog);
    $('.ui-dialog,.ui-mask').css('display', 'block');
    $('.ui-dialog').css('left', (document.body.clientWidth - 947) / 2 + 'px');
});
$('#privacyProtocolTrigger').click(function () {
    $('#dialog-title')[0].innerHTML = '隐私政策';
    $('#dialog-content')[0].innerHTML = $('#privacyProtocol')[0].innerHTML;
    $('.protocol-button button').click(closeDialog);
    $('.ui-dialog').css('left', (document.body.clientWidth - 947) / 2 + 'px');
    $('.ui-dialog,.ui-mask').css('display', 'block');
});
try {
    $('#form-account')[0].value = $('#hide_name')[0].value;
    var ele = $('#' + $('#hide_errorID')[0].value)[0];
    if (ele != null) {
        var statu = ele.parentNode.nextElementSibling;
        if (ele.parentNode.className.indexOf('form-item-error') == -1)
            ele.parentNode.className = ele.parentNode.className + ' form-item-error';
        statu.innerHTML = '<span id="form-pwd-error" class="error"><i class="i-error"></i>' + $('#hide_errorMsg')[0].value + '</span>';
        statu.style.display = 'block';
    }
}
catch (e) {
    //
}