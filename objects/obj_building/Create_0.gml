/// @description Prototype Building Setup.
/// Child objects will inherit this event, as first step in their create event.
// Values for building type_num.
enum BUILDING_TYPES {
    BASE,
	BARACKS,
	MESS_HALL
}

// Hover message bubble margins.
#macro BUILDING_X_MARGIN 10
#macro BUILDING_Y_MARGIN 5

// Mouse hovering state.
is_hovering = false;

// Building menu text. Same for all buildings.
menu_choices = ["", "", "", "", "RALY", "EXIT"];
menu_hover = ["", "", "", "", "SET RALLY\nPOINT", "EXIT MENU"];

// Showing building menu state.
is_showing_menu = false;
