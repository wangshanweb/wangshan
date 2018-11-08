// 引入底部
$(function () {
    $(`<link rel="stylesheet" href="CSS/footer.css">`).appendTo("head");
    $.ajax({
        url:"footer.html",
        type:"get",
        success:function (res) {
            $(res).replaceAll("#footer")
        }
    })
})