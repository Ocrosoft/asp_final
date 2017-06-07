// 修改收货信息
$('.J_consignee_global').click(function () {
    $('#shrxx')[0].innerText = "编辑收货人信息";
    $('.ui-dialog,.ui-mask').css('display', 'block');
}); // 显示
$('.ui-mask').click(function () {
    $(this.previousElementSibling).css('display', 'none'); $(this).css('display', 'none');
    check_complete();
}); // 隐藏
$('.ui-dialog-close').click(function () {
    $(this.parentNode).css('display', 'none'); $('.ui-mask').css('display', 'none');
    check_complete();
}); // 隐藏
function check_complete() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open('GET', '/ajax/CheckOrder-IsInfoComplete.aspx', true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            location.reload();
        }
        else if (xmlhttp.readyState == 4){
            $('.J_consignee_global').click();
        }
    }
} // 检查是否完成

// 提交订单
$('#order-submit').click(function () {
    $('iframe').addClass('hide');
    $('#success_form').removeClass('hide');
    $('.J_consignee_global').click();
    $('#shrxx')[0].innerText = "提交订单";
});