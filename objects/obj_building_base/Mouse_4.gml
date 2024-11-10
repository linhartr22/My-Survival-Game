/// @description Create Base Building Menu.
// Menu already created?
if (!instance_exists(obj_building_menu)){
	// No, Create menu.
	is_showing_menu = true;
	instance_create_layer(x, y, "Menus", obj_building_menu);
	obj_building_menu.building_id = id;
	obj_building_menu.menu_title = menu_title;
	obj_building_menu.menu_choices = menu_choices;
}
