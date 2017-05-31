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
/* 焦点图 */
$('.slider_indicator_btn').mouseover(function () {
    $('.slider_indicator_btn').removeClass('slider_indicator_btn_active');
    $(this).addClass('slider_indicator_btn_active');
    var btns = $('.slider_indicator_btn');
    for (var i = 0; i < btns.length; i++) {
        if ($(btns[i]).hasClass('slider_indicator_btn_active')) {
            $('.slider_item').css('z-index', '0');
            $('.slider_item').removeClass('slider_item_active');
            $($('.slider_item')[i]).addClass('slider_item_active');
            $($('.slider_item')[i]).css('z-index', '1');
            $($('.slider_item')[i]).animate({ opacity: '1' }, 500, function () {
                $.each($('.slider_item'), function (index, value) {
                    if (!$(value).hasClass('slider_item_active')) $(value).css('opacity', '0');
                });
            });
            break;
        }
    }
});
$('.slider_control_prev i').click(function () {
    var items = $('.slider_item');
    $('.slider_indicator_btn').removeClass('slider_indicator_btn_active');
    for (var i = 0; i < items.length; i++) {
        if ($(items[i]).hasClass('slider_item_active')) {
            var j= i - 1;
            if (j < 0) j = items.length - 1;
            $('.slider_item').css('z-index', '0');
            $('.slider_item').removeClass('slider_item_active');
            $($('.slider_item')[j]).addClass('slider_item_active');
            $($('.slider_indicator_btn')[j]).addClass('slider_indicator_btn_active');
            $($('.slider_item')[j]).css('z-index', '1');
            $($('.slider_item')[j]).animate({ opacity: '1' }, 500, function () {
                $.each($('.slider_item'), function (index, value) {
                    if (!$(value).hasClass('slider_item_active')) $(value).css('opacity', '0');
                });
            });
            break;
        }
    }
});
function next_slider() {
    var items = $('.slider_item');
    $('.slider_indicator_btn').removeClass('slider_indicator_btn_active');
    for (var i = 0; i < items.length; i++) {
        if ($(items[i]).hasClass('slider_item_active')) {
            var j = i + 1;
            if (j >= items.length) j = 0;
            $('.slider_item').css('z-index', '0');
            $('.slider_item').removeClass('slider_item_active');
            $($('.slider_item')[j]).addClass('slider_item_active');
            $($('.slider_indicator_btn')[j]).addClass('slider_indicator_btn_active');
            $($('.slider_item')[j]).css('z-index', '1');
            $($('.slider_item')[j]).animate({ opacity: '1' }, 500, function () {
                $.each($('.slider_item'), function (index, value) {
                    if (!$(value).hasClass('slider_item_active')) $(value).css('opacity', '0');
                });
            });
            break;
        }
    }
}
$('.slider_control_next i').click(next_slider);
setInterval(next_slider, 4000);
/* 排行榜 */
(function loadPHB() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET", "/ajax/Index-phb.aspx", true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var res = xmlhttp.responseText;
            $('.top_list')[0].innerHTML = res;
        }
    }
})();
function search(key) {
    location.href = '/search.aspx?key=' + $('#key')[0].value;
}