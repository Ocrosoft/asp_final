$('.J_consignee_global').click(function () { $('.ui-dialog,.ui-mask').css('display', 'block'); });
$('.ui-mask').click(function () { $(this.previousElementSibling).css('display', 'none'); $(this).css('display', 'none'); });
$('.ui-dialog-close').click(function () { $(this.parentNode).css('display', 'none'); $('.ui-mask').css('display', 'none');});