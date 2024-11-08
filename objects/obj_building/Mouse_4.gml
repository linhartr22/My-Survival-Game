/// @description Create Building Menu.
// Already showing menu?
if (instance_exists(obj_building_menu) || is_showing_menu){
	// Yes, is_showing_menu?
	if (instance_exists(obj_building_menu)){
		show_debug_message("I am currently showing the menu.");
	} else {
		show_debug_message("Someone else is already showing the menu.");
	}
} else {
	// No, Show menu.
	is_showing_menu = true;
	instance_create_layer(x, y, "Menus", obj_building_menu);
	obj_building_menu.menu_title = menu_title;
	obj_building_menu.menu_choices = menu_choices;
}
