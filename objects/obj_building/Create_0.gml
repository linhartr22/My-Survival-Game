/// @description Prototype Building Setup.
// Values used for type_num.
enum BUILDING_TYPES
{
    PROTOTYPE,
	BASE,
	BARACKS,
	MESS_HALL
}
// Initialize instance values.
type_num = BUILDING_TYPES.PROTOTYPE;
menu_title = "PROTOTYPE MENU"
menu_choices = ["", "", "", "", "", "ESC"]

// Hover bubble margins.
#macro BUILDING_X_MARGIN 10
#macro BUILDING_Y_MARGIN 5
// Mouse hover status.
was_hovering = false;
is_hovering = false;

// Origin resource hover sound.
hover_sound = -1;

// Menu offset.
menu_x_offset = sprite_width * 0.6;
menu_y_offset = sprite_height * 0.2;

// Clear is_showing_menu status.
is_showing_menu = false;

