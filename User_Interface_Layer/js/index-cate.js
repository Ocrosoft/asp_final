$('.cate_menu_item a').focusin(function () {
    console.log($(this.parentNode).attr("data-index"));
});