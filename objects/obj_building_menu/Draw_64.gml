/// @description Display Building Menu.
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
