// 猜你喜欢 我的关注 最近浏览
$('.c-item').mouseenter(function () {
    $('.c-item').removeClass('curr');
    $(this).addClass('curr');
});
// 运费提示
$('.price-tips').mouseenter(function () {
    $(this.nextElementSibling).css('display', 'block');
});
$('.price-tips').mouseleave(function () {
    $(this.nextElementSibling).css('display', 'none');
});
// 增减数量
function get_unit_price(ele) {
    return parseFloat(ele.parentNode.parentNode.previousElementSibling.children[0].innerText.replace('¥', ''));
}
$('.increment').click(function () {
    if (this.previousElementSibling.value == 99) return;
    this.previousElementSibling.value++;
    $(this.previousElementSibling.previousElementSibling).removeClass('disabled');
    this.parentNode.parentNode.nextElementSibling.innerHTML = '<strong>¥' + (get_unit_price(this) * this.previousElementSibling.value).toFixed(2) + '</strong>';
    //reSum();

    var xmlhttp = new XMLHttpRequest();
    var id = this.parentNode.parentNode.nextElementSibling.nextElementSibling.children[2].id.split('_')[1];
    var num = this.previousElementSibling.value;
    //console.log(str);
    xmlhttp.open('GET', '/ajax/AddToCart.aspx?id=' + id + '&num=' + num + '&over=1', true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            alert('测试，成功');
            location.href = location.href;
        }
        else if (xmlhttp.readyState == 4) alert('测试，失败');
    }
});
$('.decrement').click(function () {
    if ($(this).hasClass('disabled')) return;
    this.nextElementSibling.value--;
    if (this.nextElementSibling.value == 1)
        $(this).addClass('disabled');
    this.parentNode.parentNode.nextElementSibling.innerHTML = '<strong>¥' + (get_unit_price(this) * this.nextElementSibling.value).toFixed(2) + '</strong>';
    //reSum();

    var xmlhttp = new XMLHttpRequest();
    var id = this.parentNode.parentNode.nextElementSibling.nextElementSibling.children[2].id.split('_')[1];
    var num = this.nextElementSibling.value;
    //console.log(str);
    xmlhttp.open('GET', '/ajax/AddToCart.aspx?id=' + id + '&num=' + num + '&over=1', true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            location.href = location.href;
        }
        else if (xmlhttp.readyState == 4) alert('测试，失败');
    }
});
$('.quantity-form input').keyup(function () {
    var val = this.value;
    try {
        var num = parseInt(val);
        if (isNaN(num)) this.value = 1;
        else if (num < 1) this.value = 1;
        else if (num > 99) this.value = 99;
    }
    catch (e) {
        this.value = 1;
    }
    val = this.value;
    var reg = new RegExp('^\\d{1,2}$');
    if (!reg.test(val)) this.value = 1;
    if (parseInt(val) == 1) $('.decrement').addClass('disabled');
    else $('.decrement').removeClass('disabled');
    this.parentNode.parentNode.nextElementSibling.innerHTML = '<strong>¥' + (get_unit_price(this) * this.value).toFixed(2) + '</strong>';
    reSum();
});
// checkbox
$('#toggle-checkboxes_up,#toggle-checkboxes_down').change(function () {
    $('#server_warp input[type="checkbox"]').prop('checked', $(this).prop('checked'));
    reSum();
});
// 重新计算总价
function reSum() {
    var sum = 0.00;
    var count = 0;
    var checked = $('.item-form input[type="checkbox"]');
    checked.each(function (id) {
        if ($(checked[id]).prop('checked')) {
            sum += parseFloat(checked[id].parentNode.parentNode.parentNode.children[5].innerText.replace('¥', ''));
            count++;
        }
        $('.amount-sum')[0].innerHTML = '已选择<em>' + count + '</em>件商品<b class="up"></b>';
        $('#server_sum_price')[0].innerHTML = '<em>¥' + sum.toFixed(2) + '</em>';
    });
}
$('.cart-checkbox input[class="jdcheckbox"]').change(function () {
    if ($('.item-form input[class="jdcheckbox"]').length == $('.item-form input:checked').length)
        $('#toggle-checkboxes_up,#toggle-checkboxes_down').prop('checked', true);
    else
        $('#toggle-checkboxes_up,#toggle-checkboxes_down').prop('checked', false);
    reSum();
});