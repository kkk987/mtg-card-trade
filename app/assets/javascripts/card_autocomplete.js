document.addEventListener("turbolinks:load", function() {
  $("#card-autocomplete").autocomplete({
    source: '/stocks/new',
  })
})