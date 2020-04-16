$(function(){
  //1
  var dataBox = new DataTransfer();
  //2
  var file_field = document.querySelector('input[type=file]')
  //3
  $('#img-file').change(function(){
    //4
    var files = $('input[type="file"]').prop('files')[0];
    $.each(this.files, function(i, file){
      //5
      var fileReader = new FileReader();

      //6
      dataBox.items.add(file)
      //7
      file_field.files = dataBox.files

      var num = $('.post-image').length + 1 + i
      fileReader.readAsDataURL(file);
     //8
      if (num == 4){
        $('#image-box__container').css('display', 'none')   
      }
      //9
      fileReader.onloadend = function() {
        var src = fileReader.result
        var html= `<div class='post-image' data-image="${file.name}">
                    <div class=' post-image__content'>
                      <div class='post-image__content--icon'>
                        <img src=${src} width="114" height="80" >
                      </div>
                    </div>
                    <div class='post-image__operetion'>
                      <div class='post-image__operetion--delete'>削除</div>
                    </div>
                  </div>`
        //10
        $('#image-box__container').before(html);
      };
      //11
      $('#image-box__container').attr('class', `post-num-${num}`)
    });
  });
  //12
  $(document).on("click", '.post-image__operetion--delete', function(){
    //13
    var target_image = $(this).parent().parent()
    //14
    var target_name = $(target_image).data('image')
    if(file_field.files.length==1){
      //15
      $('input[type=file]').val(null)
      dataBox.clearData();
      console.log(dataBox)
    }else{
      //16
      $.each(file_field.files, function(i,input){
        //17
        if(input.name==target_name){
          dataBox.items.remove(i) 
        }
      })
      //18
      file_field.files = dataBox.files
    }
  //19
  target_image.remove()
  //
  var num = $('.post-image').length
  $('#image-box__container').show()
  $('#image-box__container').attr('class', `post-num-${num}`)
  })
});