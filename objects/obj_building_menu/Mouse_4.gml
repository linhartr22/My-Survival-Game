/// @description Building Menu Left Click.
// Ready for mouse click?
if (building_menu_button == -1) {
	// Mouse location relative to sprite.
	var _mouse_view_x = window_view_mouse_get_x(0) - x;
	var _mouse_view_y = window_view_mouse_get_y(0) - y;

	// Get button row and column.
	var _col = (_mouse_view_x - MENU_BUTTONS_OFFSET_X) div MENU_BUTTON_WIDTH;
	var _row = (_mouse_view_y - MENU_BUTTONS_OFFSET_Y) div MENU_BUTTON_HEIGHT;
	var _btn = (_row * MENU_COLS) + _col;
	if (_btn < 0) {_btn = 0;}
	if (_btn >= (MENU_COLS * MENU_ROWS)) {_btn = (MENU_COLS * MENU_ROWS) - 1;}
	//show_debug_message("clicked row: {0}\tclicked col: {1}", _row, _col);
	show_debug_message("button: {0}", _btn);

	// Update last button clicked
	building_menu_button = _btn;
}
