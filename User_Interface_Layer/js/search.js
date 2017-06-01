﻿function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r !== null) return unescape(r[2]); return null;
}
// 翻页按钮
$('.fp-prev').click(function () {
    var href = location.href;
    var page = GetQueryString("page");
    href = href.replace('&page=' + page, '');
    page = parseInt(page) - 1;
    href += '&page=' + page;
    location.href = href;
});
$('.fp-next').click(function () {
    var href = location.href;
    var page = GetQueryString("page");
    if (page === null) href += '&page=2';
    else {
        href = href.replace('&page=' + page, '');
        page = parseInt(page) + 1;
        href += '&page=' + page;
    }
    location.href = href;
});
(function loading() {
    var page = GetQueryString("page");
    if (page !== null && page !== '1') {
        $('.fp-prev').removeClass('disabled');
    }
    else $('.fp-prev').addClass('disabled');
    $('.fp-prev,.fp-next').css('cursor', 'pointer');
})();
// 标题
if ($('#server_qbjg')[0])document.title = $('#server_qbjg')[0].innerText + document.title;
// 商品精选
(function load_spjx() {
    var xmlhttp = new XMLHttpRequest();
    var str = '?';
    if (GetQueryString('key') != null && GetQueryString('key') != '') str += 'key=' + GetQueryString('key')+'&';
    if (GetQueryString('level') && GetQueryString('level') != '') str += 'level=' + GetQueryString('level') + '&';
    if (GetQueryString('type') && GetQueryString('type') != '') str += 'type=' + GetQueryString('type') + '&';
    if (GetQueryString('typeName') && GetQueryString('typeName') != '') str += 'typeName=' + GetQueryString('typeName') + '&';
    if (!GetQueryString('key') && !GetQueryString('type') && !GetQueryString('typeName')) return; // 没有关键词
    str = str.substring(0, str.length - 1);
    xmlhttp.open("GET", "/ajax/search-spjx.aspx" + str, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var res = xmlhttp.responseText;
            $('#server_spjx')[0].innerHTML = res;
        }
    }
})();