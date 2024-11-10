/// @description Create Base Building Menu.
// Menu already created?
if (instance_exists(obj_building_menu)){
	// Yes, Someone else is using the menu.
	show_debug_message("Object Id {0} says someone else is using the menu.", id);
} else {
	// Menu already showing?
	if (!is_showing_menu){
		// No, Create menu.
		is_showing_menu = true;
		show_debug_message("Object Id {0} says I am using the menu.", id);
		instance_create_layer(x, y, "Menus", obj_building_menu,{
			building_id : id,
			menu_title : menu_title,
			menu_choices : menu_choices,
		});
	}
}
