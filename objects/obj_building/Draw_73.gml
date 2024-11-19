/// @description Show Building Hover Menu.
// Show hover menu?
if (is_hovering) {
	// Message dimensions.
	var _msg_width = string_width(hover_msg) / 2;
	var _msg_height = string_height(hover_msg) / 2;
	
	// Draw bubble.
	draw_set_colour(c_white);
	var _bubble_x1 = x + (sprite_width / 2) - _msg_width - BUILDING_X_MARGIN;
	var _bubble_x2 = x + (sprite_width / 2) + _msg_width + BUILDING_X_MARGIN;
	var _bubble_y1 = y + (sprite_height / 2) - _msg_height - BUILDING_Y_MARGIN;
	var _bubble_y2 = y + (sprite_height / 2) + _msg_height + BUILDING_Y_MARGIN;
	draw_roundrect(_bubble_x1, _bubble_y1, _bubble_x2, _bubble_y2, false);
	
	// Format message.
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_hover);
	draw_set_colour(c_black);
	
	// Display message.
	draw_text(x + (sprite_width / 2) - _msg_width, y + (sprite_height / 2), hover_msg);
}
