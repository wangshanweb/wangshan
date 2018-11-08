// 引入头
$(function () {
    $(`<link rel="stylesheet" href="CSS/header.css">`).appendTo("head");
    $.ajax({
        url:"header.html",
        type:"get",
        success:function (res) {
            $(res).replaceAll("#header")
        }
    })
})