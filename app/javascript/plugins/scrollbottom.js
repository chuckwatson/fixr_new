// footer.addEventListener('click', (event) => {
//   card.classList.toggle('highlight-card');
//   window.scroll({
//    top: 0,
//    left: 0,
//    behavior: 'smooth'
//   });
// }
// $(window).scroll(function() {
//     var height = $(window).scrollBottom();
//     if (height > 100) {
//         $('#show_footer').fadeIn();
//     } else {
//         $('#show_footer').fadeOut();
//     }
// });
// $(document).ready(function() {
//     $("#show_footer").click(function(event) {
//         event.preventDefault();


//         document.querySelectorAll('#reviews').forEach((element) => {
//           element.classList.remove('reviews')
//         });


//         $("html, body").animate({ scrollBottom: 0 }, "slow");
//         return false;
//     });

// });
window.addEventListener('DOMContentLoaded', (event) => {
  document.querySelector('#show_review').addEventListener('click', (event) => {
    document.querySelector('.review-container').scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
  })
})

