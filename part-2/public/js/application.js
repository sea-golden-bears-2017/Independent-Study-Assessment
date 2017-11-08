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
})
