/// @description BOT menu button clicked.
show_debug_message("Base Menu Button Event 0 Begin");
// Is there room in the queue and sufficient materials?
if ((base_bot_q < BOT_Q_MAX) && (crystal >= BOT_CRYSTALS)){
	// Yes, Play mouse click sound.
	audio_play_sound(snd_mouse_click, 0, false);
	show_debug_message("Played building menu mouse click sound");

	// Add a bot to the queue.
	base_bot_q += 1;
	//show_debug_message("base bot q: {0}", base_bot_q);
	
	// Update bot button text.
	menu_choices[0] = string_concat("BOT\n", string_repeat("o", base_bot_q));
	
	// Reserve crystal.
	crystal -= BOT_CRYSTALS;
} else {
	// Play error sound.
	audio_play_sound(snd_menu_button_error, 0, false);
	show_debug_message("Played building menu button error sound");
}

// Clear building menu button status.
obj_building_menu.building_menu_button = -1;
