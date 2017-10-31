$(document).ready(function() {
  $("#new-post-form").on("submit", (e) => {
    e.preventDefault();
    console.log("prevented default")
    const data = $("#new-post-form").serialize()
    $.ajax({
      type: 'POST',
      url: '/posts',
      data: data
    }).done((response)=>{
      console.log(response)
      $("#post-list").prepend(`<li>${response}</li>`)
    });
  });
});
