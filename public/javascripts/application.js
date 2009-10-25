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

VP.show_nav = function() {
	$$('.hidden_nav').each(Element.appear);
};

VP.hide_nav = function() {
	$$('.hidden_nav').each(Element.fade);
};

//Event.observe(window, 'load', function() {
//	Event.observe('photo_viewer_wrapper', 'mouseover', function(event) {
//			console.log('over');
//	});
//	
//	Event.observe('photo_viewer_wrapper', 'mouseout', function(event) {
//			console.log('out');
//  });
//});
