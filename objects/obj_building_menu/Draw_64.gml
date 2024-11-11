/// @description Display Building Menu.
#region Show Sprite.
// Camera coordinates. Origin middle center.
var _camera_x = camera_get_view_x(view_camera[0]) + (viewport_width / 2);
var _camera_y = camera_get_view_y(view_camera[0]) + (viewport_height / 2);

// Update sprite position.
if (building_id.x > _camera_x){
	x = building_id.x - menu_x_offset;
} else {
	x = building_id.x + menu_x_offset;
}	
if (building_id.y > _camera_y){
	y = building_id.y - menu_y_offset;
} else {
	y = building_id.y + menu_y_offset;
}

// Menu coordinates in viewport.
var _viewport_x = x - _camera_x + (viewport_width / 2);
var _viewport_y = y - _camera_y + (viewport_height / 2);

// Show menu title.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_hover);
draw_set_colour(c_black);
draw_text_transformed(_viewport_x, _viewport_y - (sprite_height * 0.39), menu_title, 2, 1.25, 0);

// Show menu choices.
for (var _row = 0; _row < MENU_ROWS; _row++){
	for (var _col = 0; _col < MENU_COLS; _col++){
		var _xc = _viewport_x + _col * (sprite_width * 0.33) - (sprite_width * 0.33);
		var _yc = _viewport_y + _row * (sprite_height * 0.39) - (sprite_height * 0.18);
		draw_text_transformed(_xc, _yc, menu_choices[(_row * 3) + _col], 2, 1.25, 0)
	}
}
#endregion

#region Mouse Button Select.
// Mouse location relative to sprite. Origin Top Left.
var _mouse_view_x = window_view_mouse_get_x(0) - (x - (sprite_width / 2));
var _mouse_view_y = window_view_mouse_get_y(0) - (y - (sprite_height / 2));

// Is mouse in sprite?
if (_mouse_view_x >= 0 && _mouse_view_x < sprite_width && _mouse_view_y >= 0 && _mouse_view_y < sprite_height){
	// Yes, Get row and column.
	var _row = (_mouse_view_y - MENU_BUTTONS_OFFSET_Y) div MENU_BUTTON_HEIGHT;
	var _col = (_mouse_view_x - MENU_BUTTONS_OFFSET_X) div MENU_BUTTON_WIDTH;
	
	// Button highlight position. Origin Top Left.
	var button_x = (x - (sprite_width / 2)) + MENU_BUTTONS_OFFSET_X + (_col * MENU_BUTTON_WIDTH);
	var button_y = (y - (sprite_height / 2)) + MENU_BUTTONS_OFFSET_Y + (_row * MENU_BUTTON_HEIGHT);
	
	// Highlight button under mouse.
	draw_line_width_colour(button_x, button_y, button_x + MENU_BUTTON_WIDTH, button_y, 3, c_blue, c_blue);
	draw_line_width_colour(button_x + MENU_BUTTON_WIDTH, button_y, button_x + MENU_BUTTON_WIDTH, button_y + MENU_BUTTON_HEIGHT, 3, c_blue, c_blue);
	draw_line_width_colour(button_x + MENU_BUTTON_WIDTH, button_y + MENU_BUTTON_HEIGHT, button_x, button_y + MENU_BUTTON_HEIGHT, 3, c_blue, c_blue);
	draw_line_width_colour(button_x, button_y + MENU_BUTTON_HEIGHT, button_x, button_y, 3, c_blue, c_blue);
	
}
#endregion
