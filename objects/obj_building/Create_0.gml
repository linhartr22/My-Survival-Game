/// @description Prototype Building Setup.
/// Child objects will inherit this event, as first step in their create event.
// Values used for type_num.
enum BUILDING_TYPES
{
    BASE,
	BARACKS,
	MESS_HALL
}

// Hover message bubble margins.
#macro BUILDING_X_MARGIN 10
#macro BUILDING_Y_MARGIN 5

// Hover message text.
hover_msg = "";

// Menu offset.
menu_x_offset = sprite_width * 1.10;
menu_y_offset = sprite_height * 0.25 * -1;

// Clear is_showing_menu status.
is_showing_menu = false;

// Mouse hover status.
was_hovering = false;
is_hovering = false;
