$(document).ready(() => {
  $('#new-post-form').on('submit', (e) => {
    e.preventDefault();
    const form = $(e.currentTarget);
    const data = form.serialize();
    const url = form.attr('action');
    $.ajax({
      url: url,
      data: data,
      method: 'POST'
    }).done((response) => {
      $('ul#post-list').prepend(`<li> ${response}</li>`);
      $('#new-post-form')[0].reset();
    });
  });

  // $('#comments').on('submit', '#likes-form', (e) => {
  $("#post-list").on("submit", (e) => {
    e.preventDefault();
    const url = $(e.target).attr('action');
    const post = $(e.target);
    $.ajax({
      url: url,
      method: 'PUT',
    }).done((response) => {
      // $(e.target).closest('article').find('.post-detail').find('#post-likes').text(response)
      post.closest("article").html(response);
    });
  });



})
