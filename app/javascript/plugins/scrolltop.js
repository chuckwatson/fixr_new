// footer.addEventListener('click', (event) => {
//   card.classList.toggle('highlight-card');
//   window.scroll({
//    top: 0,
//    left: 0,
//    behavior: 'smooth'
//   });
// }
$(window).scroll(function() {
    var height = $(window).scrollTop();
    if (height > 100) {
        $('#footer').fadeIn();
    } else {
        $('#footer').fadeOut();
    }
});
$(document).ready(function() {
    $("#footer").click(function(event) {
        event.preventDefault();
        document.querySelectorAll('.highlight-card').forEach((element) => {
          element.classList.remove('highlight-card')
        });
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
    });

});
