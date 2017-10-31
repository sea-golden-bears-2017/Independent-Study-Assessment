$(document).ready(function() {
  $("#new-post-form").on("submit", (e) => {
    e.preventDefault();
    const data = $("#new-post-form").serialize();
    $.ajax({
      type: 'POST',
      url: '/posts',
      data: data
    }).done((response)=>{
      $("#post-list").prepend(`<li>${response}</li>`);
      $(e.target).closest("form")[0].reset();
    });
  });

  $("#post-list").on("submit", (e) => {
    e.preventDefault();
    console.log("prevented default");
    const url = $(e.target, "form").attr("action");
    console.log(url);
    $.ajax({
      type: 'PUT',
      url: url
    }).done((response)=>{
      console.log(response);
      $(e.target).closest("article").html(response);
    });
  });


});
