/// @description Base Building Step Events.
// Parent mouse hover check.
event_inherited();

// Showing menu?
if (is_showing_menu) {
    // Menu button pressed?
	if (obj_building_menu.building_menu_button != -1) {
		// Yes, Trigger button event.
		event_user(obj_building_menu.building_menu_button);		
	}
}

// Any bots in the queue and build timer inactive?
if ((base_bot_q > 0) && (alarm[0] = -1)){
	// Start build timer.
	alarm[0] = (BOT_BUILD_TIME * 60);
	
	// Create building in progress indicator.
	var _bp_x = (x + (sprite_width / 2)) - (64 / 2);
	var _bp_y = (y + sprite_height) - (64 * 1.5); 
	my_bp = instance_create_layer(_bp_x, _bp_y, "Menus", obj_building_progress);
}
