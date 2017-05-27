$('.cate_menu_item a').mouseenter(function () {
    $('.cate_part').css('display', 'none');
    var id = $(this.parentNode).attr("data-index");
    $('.cate_pop').css('display', 'block');
    $('#cate_item' + id).css('display', 'block');
});
$('.cate_menu,.cate_pop').mouseleave(function (event) {
    console.log(event.relatedTarget);
    if (event.relatedTarget.className.indexOf('cate') != -1 ||
        event.relatedTarget.parentNode.className.indexOf('cate') != -1) return;
    if ($(event.relatedTarget.id).hasClass('cate_menu')) return;
    $('.cate_part').css('display', 'none');
    $('.cate_pop').css('display', 'none');
});