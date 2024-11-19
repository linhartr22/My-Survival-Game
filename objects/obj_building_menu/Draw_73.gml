/// @description Building Menu Draw GUI.
#region Show Building Menu Text.
// Show menu title.
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_hover);
draw_set_colour(c_black);
draw_text_transformed(x + (sprite_width / 2) + MENU_BUTTONS_OFFSET_X, y, menu_title, 2, 1.5, 0);

// Show menu choices.
for (var _row = 0; _row < MENU_ROWS; _row++){
	for (var _col = 0; _col < MENU_COLS; _col++){
		var _xc = x + MENU_BUTTONS_OFFSET_X + (_col * MENU_BUTTON_WIDTH) + (MENU_BUTTON_WIDTH / 2);
		var _yc = y + MENU_BUTTONS_OFFSET_Y + (_row * MENU_BUTTON_HEIGHT);
		draw_text_transformed(_xc, _yc, menu_choices[(_row * 3) + _col], 1.25, 1.2, 0);
	}
}
#endregion

#region Building Menu Button Hover.
// Is mouse in sprite?
if ((mouse_x - x >= MENU_BUTTONS_OFFSET_X) && (mouse_x - x < sprite_width) && (mouse_y - y >= MENU_BUTTONS_OFFSET_Y) && (mouse_y - y < sprite_height)){
	show_debug_message("Mouse in building menu.");
	// Yes, Get row and column.
	var _col = (mouse_x - x - MENU_BUTTONS_OFFSET_X) div MENU_BUTTON_WIDTH;
	var _row = (mouse_y - y - MENU_BUTTONS_OFFSET_Y) div MENU_BUTTON_HEIGHT;
	show_debug_message("row: {0}\tcol: {1}", _row, _col);
	
	// Update mouse button hover state.
	hover_button = (_row * MENU_COLS) + _col;
	show_debug_message("hover button: {0}", hover_button);
	
	// Button highlight position.
	var _button_x = x + MENU_BUTTONS_OFFSET_X + (_col * MENU_BUTTON_WIDTH);
	var _button_y = y + MENU_BUTTONS_OFFSET_Y + (_row * MENU_BUTTON_HEIGHT);
	//show_debug_message("button highlight x: {0}\tbutton highlight y: {1}", _button_x, _button_y);
	
	// Highlight button under mouse.
	draw_line_width_colour(_button_x, _button_y, _button_x + MENU_BUTTON_WIDTH, _button_y, 3, c_blue, c_blue);
	draw_line_width_colour(_button_x + MENU_BUTTON_WIDTH, _button_y, _button_x + MENU_BUTTON_WIDTH, _button_y + MENU_BUTTON_HEIGHT, 3, c_blue, c_blue);
	draw_line_width_colour(_button_x + MENU_BUTTON_WIDTH, _button_y + MENU_BUTTON_HEIGHT, _button_x, _button_y + MENU_BUTTON_HEIGHT, 3, c_blue, c_blue);
	draw_line_width_colour(_button_x, _button_y + MENU_BUTTON_HEIGHT, _button_x, _button_y, 3, c_blue, c_blue);
	
	// Display menu button hover text.
	if (menu_hover[hover_button] != "") {
		// Message dimensions.
		var _msg_width = string_width(menu_hover[hover_button]) / 2;
		var _msg_height = string_height(menu_hover[hover_button]) / 2;
	
		// Draw bubble.
		draw_set_colour(c_white);
		var _bubble_x1 = x + (sprite_width * 0.5) - _msg_width - BUILDING_X_MARGIN;
		var _bubble_x2 = x + (sprite_width * 0.5) + _msg_width + BUILDING_X_MARGIN;
		var _bubble_y1 = y - (sprite_height * 0.25) - _msg_height - BUILDING_Y_MARGIN;
		var _bubble_y2 = y - (sprite_height * 0.25) + _msg_height + BUILDING_Y_MARGIN;
		draw_roundrect(_bubble_x1, _bubble_y1, _bubble_x2, _bubble_y2, false);
	
		// Format message.
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_font(fnt_hover);
		draw_set_colour(c_black);
	
		// Display message.
		draw_text(x + (sprite_width * 0.5), y - (sprite_height * 0.25) - _msg_height, menu_hover[hover_button]);
	}
	
	// Display rally point icon?
	if (hover_button = 4) {
		// Yes, Display rally point icon.
		draw_sprite(spr_building_rally, 0, building_id.rally_x, building_id.rally_y);
	}
} else {
	// No, Update mouse button hover memory.
	hover_button = -1;
}
#endregion
