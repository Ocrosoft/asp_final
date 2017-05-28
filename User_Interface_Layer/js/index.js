/* 公告，优惠 */
$('.news_first').mouseover(function () {
    $(this).addClass('mode_tab_head_item_on');
    $(this.nextElementSibling).removeClass('mod_tab_head_item_on');
    $($('.mod_tab_content_item')[0]).addClass('mod_tab_content_item_on');
    $($('.mod_tab_content_item')[1]).removeClass('mod_tab_content_item_on');
    $('.news_tab_active ').css('transform', 'translateX(0px)');
});
$('.news_last').mouseover(function () {
    $(this).addClass('mode_tab_head_item_on');
    $(this.previousElementSibling).removeClass('mod_tab_head_item_on');
    $($('.mod_tab_content_item')[1]).addClass('mod_tab_content_item_on');
    $($('.mod_tab_content_item')[0]).removeClass('mod_tab_content_item_on');
    $('.news_tab_active ').css('transform', 'translateX(52px)');
});
/* 类别 */
$('.cate_menu_item a').mouseenter(function () {
    $('.cate_part').css('display', 'none');
    $('.cate_menu_item').removeClass('cate_menu_item_on');
    var id = $(this.parentNode).attr("data-index");
    $('.cate_pop').css('display', 'block');
    $('#cate_item' + id).css('display', 'block');
    $(this.parentNode).addClass('cate_menu_item_on');
});
$('.cate_menu,.cate_pop').mouseleave(function (event) {
    if (event.relatedTarget && event.relatedTarget.className.indexOf('cate') != -1) return;
    if ($(event.relatedTarget).hasClass('cate_menu')) return;
    $('.cate_part').css('display', 'none');
    $('.cate_pop').css('display', 'none');
    $('.cate_menu_item').removeClass('cate_menu_item_on');
});
(function loadCate() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET", "/ajax/GetCate.aspx", true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var res = xmlhttp.responseText;
            $('#popCtn')[0].innerHTML = res;
            $('#popCtn').removeClass('mod_loading');
        }
    }
})();
/* 右侧边栏 */
$('.jdm-toolbar-tab').mouseover(function () {
    $(this).addClass('z-jdm-tbar-tab-hover');
});
$('.jdm-toolbar-tab').mouseleave(function () {
    $(this).removeClass('z-jdm-tbar-tab-hover');
});