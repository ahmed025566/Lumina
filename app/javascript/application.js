// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
//= require jquery3
//= require jquery_ujs
//= require_tree .
$(function() {
  $('.post-like').on("click", (e) => {
    var post_id = e.target.getAttribute('data-id')
    $.ajax({
      url: "post/like/"+post_id,
      method: 'GET'
    }).done((res) => {
      console.log(res)
    })
  })
})




