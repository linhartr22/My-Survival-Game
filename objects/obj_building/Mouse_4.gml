/// @description Create Base Building Menu.
// Menu already created?
if (instance_exists(obj_building_menu)){
	// Am I already using the menu?
	if (is_showing_menu){
		// Yes.
		show_debug_message("Object Id {0} says I am already using the menu.", building_id);
	} else {
		// No.
		show_debug_message("Object Id {0} says Object Id {1} is using the menu.", building_id, obj_building_menu.building_id);
	}
} else {
	// Menu already showing?
	if (!is_showing_menu){
		// No, Create menu.
		is_showing_menu = true;
		show_debug_message("Object Id {0} says I am creating the menu.", building_id);
		instance_create_layer(x, y, "Menus", obj_building_menu,{
			building_id : building_id,
			menu_title : menu_title,
			menu_choices : menu_choices,	// Can't put arrays in object's Variable Definitions. Ignore Feather.
			menu_hover : menu_hover,		// Can't put arrays in object's Variable Definitions. Ignore Feather.
		});
	}
}
