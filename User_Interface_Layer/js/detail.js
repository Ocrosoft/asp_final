// 解析json
var jsonObj = JSON.parse($('#glofot')[0].innerText);
$('#detail')[0].children[1].innerHTML = jsonObj.content;
// 缩略图
$($('.lh li')[0]).addClass('img-hover');
$('.lh img').mouseenter(function () {
    $('.lh li').removeClass('img-hover');
    $(this.parentNode).addClass('img-hover');
    $('#spec_img').prop('src', $(this).prop('src').replace('/n5/', '/n1/').replace('s54x54', 's450x450'));
});
// 预览图
$('#spec-n1').mouseenter(function () {
    if ($(this.lastChild).hasClass('jqZoomPup')) return;
    var div = document.createElement('div');
    div.className = 'jqZoomPup';
    div.style.width = '303.75px';
    div.style.height = '303.75px';
    div.style.visibility = 'visible';
    div.innerHTML = '&nbsp;';
    $(this).append(div);
    var zoomdiv = document.createElement('div');
    zoomdiv.className = 'zoomdiv';
    zoomdiv.style.width = '540px';
    zoomdiv.style.height = '540px';
    zoomdiv.style.display = 'block';
    zoomdiv.innerHTML = '<img style="position:absolute;" class="bigimg" src="' + $('#spec_img').prop('src').replace('/n1/s450x450_', '//n0/') + '">';
    $(this.parentNode).append(zoomdiv);
});
$('#spec-n1').mouseleave(function () {
    if ($(this.lastChild).hasClass('jqZoomPup'))
        $(this.lastChild).remove();
    if ($(this.parentNode.lastChild).hasClass('zoomdiv'))
        $(this.parentNode.lastChild).remove();
});
var static_left = getElementLeft($('#spec-n1')[0]);
var static_top = getElementTop($('#spec-n1')[0]);
$('#spec-n1').mousemove(function (e) {
    var left = e.pageX - 151.875 - static_left;
    if (left < 0) left = 0;
    else if (left + 303.75 > parseFloat($(this).css('width').replace('px'))) left = parseFloat($(this).css('width').replace('px')) - 303.75;
    $('.jqZoomPup').css('left', left + 'px');

    var top = e.pageY - 151.875 - static_top;
    if (top < 0) top = 0;
    else if (top + 303.50 >= parseFloat($(this).css('height').replace('px'))) top = parseFloat($(this).css('height').replace('px')) - 303.50;
    $('.jqZoomPup').css('top', top + 'px');

    $('.bigimg').css('left', '-' + left * 1.77 + 'px');
    $('.bigimg').css('top', '-' + top * 1.77 + 'px');
});
$('.sprite-arrow-next').click(function () {
    if ($(this.parentNode).hasClass('disabled')) return;
    var left = -1 * parseInt($('#server_img_lh').css('left').replace('px', '')) / 304;
    $('#server_img_lh').animate({ left: '-' + (left + 1) * 304 + 'px' }, 500);
    $($('.sprite-arrow-prev')[0].parentNode).removeClass('disabled');
    if (parseInt($('#server_img_lh')[0].children.length / 4) <= left + 1) $(this.parentNode).addClass('disabled');
});
$('.sprite-arrow-prev').click(function () {
    if ($(this.parentNode).hasClass('disabled')) return;
    var left = -1 * parseInt($('#server_img_lh').css('left').replace('px', '')) / 304;
    $('#server_img_lh').animate({ left: '-' + (left - 1) * 304 + 'px' }, 500);
    $($('.sprite-arrow-next')[0].parentNode).removeClass('disabled');
    if (left - 1 <= 0) $(this.parentNode).addClass('disabled');
});
function getElementLeft(element) {
    var actualLeft = element.offsetLeft;
    var current = element.offsetParent;
    while (current !== null) {
        actualLeft += current.offsetLeft;
        current = current.offsetParent;
    }
    return actualLeft;
}
function getElementTop(element) {
    var actualTop = element.offsetTop;
    var current = element.offsetParent;
    while (current !== null) {
        actualTop += current.offsetTop;
        current = current.offsetParent;
    }
    return actualTop;
}
// 加入购物车
$('.btn-add').click(function () {
    $('#buy-num')[0].value++;
    if ($('#buy-num')[0].value >= 99) $('#buy-num')[0].value = 99;
    if ($('#buy-num')[0].value == 99) $(this).addClass('disabled');
    $('.btn-reduce').removeClass('disabled');
});
$('.btn-reduce').click(function () {
    $('#buy-num')[0].value--;
    if ($('#buy-num')[0].value < 1) $('#buy-num')[0].value = 1;
    if ($('#buy-num')[0].value == 1) $(this).addClass('disabled');
    $('.btn-add').removeClass('disabled');
});
$('#buy-num').keyup(function () {
    var num = parseInt(this.value);
    if (isNaN(num)) this.value = 1;
    var reg = new RegExp('^\\d{1,2}$');
    if (!reg.test(this.value)) this.value = 1;
    if (num > 99) this.value = 99;
    if (num < 1) this.value = 1;
    $('.btn-add,.btn-reduce').removeClass('disabled');
    if (this.value == 99) $('.btn-add').addClass('disabled');
    if (this.value == 1) $('.btn-reduce').addClass('disabled');
});
$('#InitCartUrl').click(function () {
    var xmlhttp = new XMLHttpRequest();
    var str = $(this).prop('sku-id');
    //console.log(str);
    xmlhttp.open('GET', '/ajax/AddToCart.aspx?id=' + str + '&num=' + $('#buy-num')[0].value, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            alert('测试，成功');
        }
        else if (xmlhttp.readyState == 4) alert('测试，失败');
    }
});