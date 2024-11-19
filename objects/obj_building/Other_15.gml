/// @description Building Menu Button 5 Clicked.
show_debug_message("Building Menu Button Event 5 Begin");
// Play mouse click sound.
audio_play_sound(snd_mouse_click, 0, false);
show_debug_message("Played building menu mouse click sound");

// Destroy building menu.
instance_destroy(obj_building_menu);
