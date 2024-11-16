/// @description Building Menu Step Event.
// Start menu button hover sound?
if (button_current != button_last){
	//Yes.
	audio_play_sound(snd_menu_button_hover, 0, false);
	
	// Refresh mouse hover button memory.
	button_last = button_current;
}

// Stop menu button hover sound?
if (button_current == -1){
	// Yes.
	audio_stop_sound(snd_menu_button_hover);

	// Refresh mouse hover button memory.
	button_last = button_current;
}
