$(document).ready(function () {
  $(".file").on('change', function(){
     var fileprop = $(this).prop('files')[0],
         find_img = $(this).parent().find('img'),
         filereader = new FileReader(),
         view_box = $(this).parent('.upload__drop__box__imageview');
    if(find_img){
       find_img.nextAll().remove();
       find_img.remove();
    }
    var imgHTML =  '<div class="upload__drop__box__preview"> <img alt="" class="uploadimg"></div>';
    view_box.append(imgHTML);
    filereader.onload = function() {
      view_box.find('img').attr('src', filereader.result);
      img_del(view_box);
    }
    filereader.readAsDataURL(fileprop);
  });
  function img_del(target){
    target.find("a.img_del").on('click',function(){
      var self = $(this)
          parentBox = self.parent().parent().parent();
          parentBox.find('input[type=file]').val('');
          parentBox.find('.upload__drop__box__preview').remove();
    });
  }
});