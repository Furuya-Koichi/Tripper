$(function(){
  function buildHTML(comment){
    var html = `<div class="inner">
                  <div class="innerupper">
                    <div class="innerupper__name">
                      ${comment.user_name}
                    </div>
                    ：
                    <div class="innerupper__content">
                      ${comment.content}
                    </div>
                  </div>
                  <div class="inner__time">
                    ${comment.created_at}
                  </div>
                </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.comments').append(html);
      $('.commentbox').val('');
      $('.commentbtn').prop('disabled', false);
    })
  })
});


