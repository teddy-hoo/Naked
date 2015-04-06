$(document).ready(function () {
    $("#registerForm .alert").hide();
    $("div.profile .alert").hide();

    // hide the nav bar in 5 seconds
    setTimeout(function(){
        $('.nav-bar').css('opacity', 0.3);
        $('#messager').hide();
    }, 3000);

    $('#nextPost').hover(function(){
        $("#post").addClass("next-post");
    },
    function(){
        $("#post").removeClass("next-post");
    });

    $('#prePost').hover(function(){
        $("#post").addClass("pre-post");
    },
    function(){
        $("#post").removeClass("pre-post");
    });

});
