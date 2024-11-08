/// @description Show Hover Menu.
// Show hover menu?
if (position_meeting(mouse_x, mouse_y, id)) {
	// Yes, Get camera coordinates.
	var _camera_x = camera_get_view_x(view_camera[0]);
	var _camera_y = camera_get_view_y(view_camera[0]);
	// Calculate viewport coordinates
	var _viewport_x = (x - _camera_x);
	var _viewport_y = (y - _camera_y);
	// Format message.
	var _msg = string("Crystals: {0}", crystals);
	var _msg_width = string_width(_msg) / 2;
	var _msg_height = string_height(_msg) / 2;
	draw_set_colour(c_white);
	draw_roundrect(_viewport_x - _msg_width - BUILDING_X_MARGIN, _viewport_y - _msg_height - BUILDING_Y_MARGIN, _viewport_x + _msg_width + BUILDING_X_MARGIN, _viewport_y + _msg_height + BUILDING_Y_MARGIN, false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_hover);
	draw_set_colour(c_black);
	draw_text(_viewport_x, _viewport_y, _msg);
}