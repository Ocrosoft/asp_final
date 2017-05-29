function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r !== null) return unescape(r[2]); return null;
}
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