/// @description Building Menu Step Event.
// Start menu button hover sound?
if (hover_button_current != hover_button_last){
	//Yes.
	audio_play_sound(snd_menu_button_hover, 0, false);
	
	// Refresh mouse hover button memory.
	hover_button_last = hover_button_current;
}

// Stop menu button hover sound?
if (hover_button_current == -1){
	// Yes.
	audio_stop_sound(snd_menu_button_hover);

	// Refresh mouse hover button memory.
	hover_button_last = hover_button_current;
}
