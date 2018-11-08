$(function () {
    var $Simg2=$(".Simg2");
    $Simg2.mouseover(
        function () {
            $Simg2.addClass("animated bounceInDown")
        }
    )


    var $Sdiv3=$(".Sdiv3>img");
    $Sdiv3.mouseover(
        function () {
            $Sdiv3.addClass("animated  bounceInLeft")
        }
    )
    var $Sdiv4=$(".Sdiv4>img");
    $Sdiv4.mouseover(
        function () {
            $Sdiv4.addClass("animated pulse")
        }
    )

    var  $Sbg2=$(".Sbg2>a");
    $Sbg2.mouseover(
        function () {
            $Sbg2.addClass("animated fadeInRight")
        }
    )

    var $Sdiv5Img=$(".Sdiv5>a");
    $Sdiv5Img.mouseover(
        function () {
        $Sdiv5Img.addClass("animated pulse")
    })

    var $Simg3=$(".Simg3");
    $Simg3.mouseover(
        function () {
            $Simg3.addClass("animated fadeInDownBig")
        }
    )
    var $Sbg5=$(".Sbg5");
    $Sbg5.mouseover(
        function () {
            $Sbg5.addClass("animated pulse")
        }
    )
    /*var $Sbg5=$(".Sbg5");
    $Sbg5.mouseover(
        function () {
            $Sbg5.addClass("animated pulse")
        }
    )*/
})