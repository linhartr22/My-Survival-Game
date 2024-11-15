/// @description Show Building Hover Menu.
/// TODO: Switch to using middle center adjusted camera coordinates.
// Show hover menu?
if (is_hovering) {
	// Yes, Get camera coordinates.
	var _camera_x = camera_get_view_x(view_camera[0]);
	var _camera_y = camera_get_view_y(view_camera[0]);
	
	// Sprite viewport coordinates
	var _viewport_x = x - _camera_x;
	var _viewport_y = y - _camera_y;
	
	// Message dimensions.
	var _msg_width = string_width(hover_msg) / 2;
	var _msg_height = string_height(hover_msg) / 2;
	
	// Draw bubble.
	draw_set_colour(c_white);
	var _bubble_x1 = _viewport_x + (sprite_width / 2) - _msg_width - BUILDING_X_MARGIN;
	var _bubble_x2 = _viewport_x + (sprite_width / 2) + _msg_width + BUILDING_X_MARGIN;
	var _bubble_y1 = _viewport_y + (sprite_height / 2) - _msg_height - BUILDING_Y_MARGIN;
	var _bubble_y2 = _viewport_y + (sprite_height / 2) + _msg_height + BUILDING_Y_MARGIN;
	draw_roundrect(_bubble_x1, _bubble_y1, _bubble_x2, _bubble_y2, false);
	
	// Format message.
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_hover);
	draw_set_colour(c_black);
	
	// Display message.
	draw_text(_viewport_x + (sprite_width / 2) - _msg_width, _viewport_y + (sprite_height / 2), hover_msg);
}