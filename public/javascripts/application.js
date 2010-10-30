// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

if(!VP) var VP = {};
VP.selected_photo_index = 0;
VP.cycling = false;
VP.cycle_speed = 7000;

VP.show_home = function() {
	$('blog').fade();
	$('contact').fade();
	$('home').appear();
};

VP.show_blog = function() {
	$('blog').appear();
  $('contact').fade();
  $('home').fade();
};

VP.show_contact = function() {
	$('blog').fade();
  $('contact').appear();
  $('home').fade();
};

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
	//if there's a next image to show
	if ($('photo_' + (VP.selected_photo_index + 1))) {
  	//if we're at the first image and going to next, show the previous button
		if (VP.selected_photo_index == 0) {
			$('previous_button').appear();
		}

		//fade out currently shown image
    $('photo_' + VP.selected_photo_index).fade();

		//fade in next image
		VP.selected_photo_index++;
		$('photo_' + VP.selected_photo_index).appear();

		//if we're a the last image, fade out the next button
		if (!$('photo_' + (VP.selected_photo_index + 1))) {
			$('next_button').fade();
		}
	} else {
    //fade out currently shown image
    $('photo_' + VP.selected_photo_index).fade();

		VP.selected_photo_index = 0;
		$('photo_' + VP.selected_photo_index).appear();
		$('next_button').appear();
		$('previous_button').fade();
	}
};

VP.cycle_images = function() {
  if (VP.cycling) {
		VP.next_image();
  	setTimeout('VP.cycle_images();', VP.cycle_speed);
  }
};

VP.show_nav = function() {
	$$('.hidden_nav').each(Element.appear);
};

VP.hide_nav = function() {
	$$('.hidden_nav').each(Element.fade);
};

Event.observe(window, 'load', function() {
	VP.cycling = true;
  setTimeout('VP.cycle_images();', VP.cycle_speed);
});
