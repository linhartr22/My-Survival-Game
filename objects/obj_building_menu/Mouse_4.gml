/// @description Building Menu left click.
// Play mouse click sound.
audio_play_sound(snd_menu_button_hover, 0, false);
show_debug_message("Played building menu mouse click sound");

// Mouse location relative to sprite.
var _mouse_view_x = window_view_mouse_get_x(0) - x;
var _mouse_view_y = window_view_mouse_get_y(0) - y;

// Get button row and column.
var _col = (_mouse_view_x - MENU_BUTTONS_OFFSET_X) div MENU_BUTTON_WIDTH;
var _row = (_mouse_view_y - MENU_BUTTONS_OFFSET_Y) div MENU_BUTTON_HEIGHT;
show_debug_message("clicked row: {0}\tclicked col: {1}", _row, _col);
