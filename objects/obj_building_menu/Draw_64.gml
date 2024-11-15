/// @description Display Building Menu.
#region Show Sprite.
// Camera coordinates.
var _camera_x = camera_get_view_x(view_camera[0]);
var _camera_y = camera_get_view_y(view_camera[0]);
//show_debug_message("camera   x: {0}\t  camera y: {1}", _camera_x, _camera_y);
//show_debug_message("building x: {0}\tbuilding y: {1}", building_id.x, building_id.y);

// Is the building on the left half of the camera?
if (building_id.x > _camera_x + (viewport_width / 2)){
	// Yes.
	x = building_id.x - sprite_width - menu_x_offset;
} else {
	// No, right half.
	x = building_id.x + building_id.sprite_width + menu_x_offset;
}
// Is the building on the top half of the camera?
if (building_id.y > _camera_y + (viewport_height / 2)){
	// Yes.
	y = building_id.y - sprite_height - menu_y_offset;
} else {
	// No, bottom half.
	y = building_id.y + building_id.sprite_height + menu_y_offset;
}
//show_debug_message("menu x: {0}\tmenu y: {1}", x, y);

// GUI coordinates in viewport.
var _viewport_x = x - _camera_x;
var _viewport_y = y - _camera_y;
//show_debug_message("viewport x: {0}\tviewport y: {1}", _viewport_x, _viewport_y);

// Show menu title.
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_hover);
draw_set_colour(c_black);
draw_text_transformed(_viewport_x + (sprite_width / 2) + MENU_BUTTONS_OFFSET_X, _viewport_y, menu_title, 2, 1.5, 0);

// Show menu choices.
for (var _row = 0; _row < MENU_ROWS; _row++){
	for (var _col = 0; _col < MENU_COLS; _col++){
		var _xc = _viewport_x + MENU_BUTTONS_OFFSET_X + (_col * MENU_BUTTON_WIDTH) + (MENU_BUTTON_WIDTH / 2);
		var _yc = _viewport_y + MENU_BUTTONS_OFFSET_Y + (_row * MENU_BUTTON_HEIGHT);
		draw_text_transformed(_xc, _yc, menu_choices[(_row * 3) + _col], 2, 1.25, 0);
	}
}
#endregion

#region Mouse Button Select.
// Mouse location relative to sprite.
var _mouse_view_x = window_view_mouse_get_x(0) - x;
var _mouse_view_y = window_view_mouse_get_y(0) - y;
//show_debug_message("mouse view x: {0}\t\tmouse view y: {1}", _mouse_view_x, _mouse_view_y);

// Is mouse in sprite?
if ((_mouse_view_x >= MENU_BUTTONS_OFFSET_X) && (_mouse_view_x < sprite_width) && (_mouse_view_y >= MENU_BUTTONS_OFFSET_Y) && (_mouse_view_y < sprite_height)){
	//show_debug_message("Mouse in building menu.");
	// Yes, Get row and column.
	var _col = (_mouse_view_x - MENU_BUTTONS_OFFSET_X) div MENU_BUTTON_WIDTH;
	var _row = (_mouse_view_y - MENU_BUTTONS_OFFSET_Y) div MENU_BUTTON_HEIGHT;
	//show_debug_message("row: {0}\tcol: {1}", _row, _col);
	
	// Update mouse button hover memory.
	button_current = (_row * MENU_COLS) + _col;
	
	// Button highlight position.
	var _button_x = (x - _camera_x) + MENU_BUTTONS_OFFSET_X + (_col * MENU_BUTTON_WIDTH);
	var _button_y = (y - _camera_y) + MENU_BUTTONS_OFFSET_Y + (_row * MENU_BUTTON_HEIGHT);
	show_debug_message("button x: {0}\tbutton y: {1}", _button_x, _button_y);
	
	// Highlight button under mouse.
	draw_line_width_colour(_button_x, _button_y, _button_x + MENU_BUTTON_WIDTH, _button_y, 3, c_blue, c_blue);
	draw_line_width_colour(_button_x + MENU_BUTTON_WIDTH, _button_y, _button_x + MENU_BUTTON_WIDTH, _button_y + MENU_BUTTON_HEIGHT, 3, c_blue, c_blue);
	draw_line_width_colour(_button_x + MENU_BUTTON_WIDTH, _button_y + MENU_BUTTON_HEIGHT, _button_x, _button_y + MENU_BUTTON_HEIGHT, 3, c_blue, c_blue);
	draw_line_width_colour(_button_x, _button_y + MENU_BUTTON_HEIGHT, _button_x, _button_y, 3, c_blue, c_blue);
	
} else {
	// No, Update mouse button hover memory.
	button_current = -1;
}
show_debug_message("");
#endregion
