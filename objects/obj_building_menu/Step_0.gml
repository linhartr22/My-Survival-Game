/// @description Building Menu Step Event.
// Exit menu.
if (keyboard_key = vk_escape){
	instance_destroy(self);
}

// Play menu button hover sound?
show_debug_message("button current: {0}\tbutton last: {1}", button_current, button_last);
if (button_current != button_last){
	audio_play_sound(snd_menu_button_hover, 0, false);
	button_last = button_current;
}
if (button_current == -1){
	audio_stop_sound(snd_menu_button_hover);
	button_last = button_current;
}
