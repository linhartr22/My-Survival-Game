/// @description Start Base Building Menu.
// Base building menu already created?
if (!instance_exists(obj_building_menu)){
	//show_debug_message("Object Id {0} says I am creating the menu.", building_id);
	// No, Create base building menu.
	is_showing_menu = true;
	var _menu_x = x + (sprite_width * 0.9); 
	var _menu_y = y + (sprite_height * 0.9);
	instance_create_layer(_menu_x, _menu_y, "Menus", obj_building_menu,{
		building_id : building_id,
		menu_title : menu_title,
		menu_choices : menu_choices,	// Can't put arrays in object's Variable Definitions. Ignore Feather.
		menu_hover : menu_hover,		// Can't put arrays in object's Variable Definitions. Ignore Feather.
	});
}
