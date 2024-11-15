/// @description Check Mouse Hover.
// Get mouse hovering state.
is_hovering = position_meeting(mouse_x, mouse_y, id);

// Did state change?
if (was_hovering != is_hovering) {
	// Yes, Is it hovering?.
	if (is_hovering) {
		// Yes, Play sound.
		audio_play_sound(hover_sound, 0, true);
	} else {
		// No, Stop playing sound.
		audio_stop_sound(hover_sound);
	}
	
	// Save mouse hovering state.
	was_hovering = is_hovering;
}
