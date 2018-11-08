






/*底部轮播*/
$(function () {
    var moved = 0, LIWIDTH = 170;
    var $prev = $(".mb-5 .Prev");
    var $next = $(".mb-5 .Next");
    var $ul = $(".d-l .ulp");
    $prev.click(function (e) {
        e.preventDefault();
        var $prev = $(this);
        if (!$prev.is(".disabled")) {
            moved--;
            $ul.css("marginLeft", LIWIDTH * moved)
            $next.removeClass("disabled");
            if (moved == 0) {
                $prev.addClass("disabled");
            }
        }
    });
    $next.click(function () {
        var $next=$(this);
        if(!$next.is(".disabled")){
        moved++;
        $ul.css("marginLeft",-LIWIDTH*moved)
        $prev.removeClass("disabled");
        if($ul.children().length-6==moved){
            $next.addClass("disabled");
       }
    }
  })
});