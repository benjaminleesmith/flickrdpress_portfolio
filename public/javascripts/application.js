// Copyright 2009, 2010 Benjamin Lee Smith <benjamin.lee.smith@gmail.com>
//
// This file is part of Voltron Portfolio.
// Voltron Portfolio is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Voltron Portfolio is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Voltron Portfolio.  If not, see <http://www.gnu.org/licenses/>.

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
