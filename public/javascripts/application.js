if(!VP) var VP = {};
VP.selected_photo_index = 0;

VP.previous_image = function() {
  if(VP.selected_photo_index == 1) {
    $('previous_button').fade();
  }
  $('photo_'+VP.selected_photo_index).fade();
  VP.selected_photo_index--;
  $('photo_'+VP.selected_photo_index).appear();

  if(!$('photo_'+(VP.selected_photo_index+2))) {
    $('next_button').appear();
  }
};

VP.next_image = function() {
  if(VP.selected_photo_index == 0) {
    $('previous_button').appear();
  }
  $('photo_'+VP.selected_photo_index).fade();
  VP.selected_photo_index++;
  $('photo_'+VP.selected_photo_index).appear();

  if(!$('photo_'+(VP.selected_photo_index+1))) {
    $('next_button').fade();
  }
};

