/// @description Prototype Building Step Event.
// Get mouse hovering state.
is_hovering = position_meeting(mouse_x, mouse_y, id);
// Did state change?
if (was_hovering != is_hovering) {
	// Yes.
	if (is_hovering) {
		// Yes, Play sound.
		audio_play_sound(hover_sound, 0, true, 0.5);
	} else {
		// No, Stop playing sound.
		audio_stop_sound(hover_sound);
	}
	// Save mouse hovering state.
	was_hovering = is_hovering;
}

// Am I showing the menu?
/*
if (is_showing_menu){
	// Yes, update menu location.
	obj_building_menu.x = x;
	obj_building_menu.y = y;
}
*/
