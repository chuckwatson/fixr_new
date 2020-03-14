window.addEventListener('DOMContentLoaded', (event) => {
  document.querySelector('#show_review').addEventListener('click', (event) => {
    document.querySelector('.review-container').scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
  })
})

