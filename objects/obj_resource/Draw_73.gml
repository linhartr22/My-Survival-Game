/// @description Show Resource Hover Message.
// Show hover message?
if (is_hovering) {
	// Message dimensions.
	hover_msg = string("=== RESOURCES ===\n{0} {1}", current_units, units_name);
	var _msg_width = string_width(hover_msg) / 2;
	var _msg_height = string_height(hover_msg) / 2;
	
	// Draw bubble.
	draw_set_colour(c_white);
	var _bubble_x1 = x + (sprite_width / 2) - _msg_width - RESOURCE_X_MARGIN;
	var _bubble_x2 = x + (sprite_width / 2) + _msg_width + RESOURCE_X_MARGIN;
	var _bubble_y1 = y + (sprite_height / 2) - _msg_height - RESOURCE_Y_MARGIN;
	var _bubble_y2 = y + (sprite_height / 2) + _msg_height + RESOURCE_Y_MARGIN;
	draw_roundrect(_bubble_x1, _bubble_y1, _bubble_x2, _bubble_y2, false);
	
	// Format message.
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_hover);
	draw_set_colour(c_black);
	
	// Display message.
	draw_text(x + (sprite_width / 2), y + (sprite_height / 2), hover_msg);
}
