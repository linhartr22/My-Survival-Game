/// @description Display Building Menu.
// Get camera coordinates.
var _camera_x = camera_get_view_x(view_camera[0]);
var _camera_y = camera_get_view_y(view_camera[0]);

// Get viewport coordinates.
var _viewport_x = building_id.x - _camera_x;
var _viewport_y = building_id.y - _camera_y;
var _viewport_width = camera_get_view_width(view_camera[0]);
var _viewport_height = camera_get_view_height(view_camera[0]);

// Add menu offsets.
if (_viewport_x > _viewport_width / 2) {
	_viewport_x -= menu_x_offset;
} else {
	_viewport_x += menu_x_offset;
}	
if (_viewport_y > _viewport_height / 2) {
	_viewport_y -= menu_y_offset;
} else {
	_viewport_y += menu_y_offset;
}	

// Update sprite location.
x = _viewport_x;
y = _viewport_y;

// Draw sprite.
draw_self();

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
