/// @description Menu Button Check.
// Parent mouse hover check.
event_inherited();

// Showing menu?
if (is_showing_menu) {
	// Menu button pressed?
	if (obj_building_menu.building_menu_button != -1) {
		// Yes, Trigger user event.
		event_user(obj_building_menu.building_menu_button);		
	}
}
