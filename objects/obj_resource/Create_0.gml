/// @description Prototype Resource Setup.
// Values used for type_num.
enum RESOURCE_TYPES
{
	PROTOTYPE,
	CRYSTAL,
	WATER,
	METHANE
}
// Initialize instance values.
type_num = RESOURCE_TYPES.PROTOTYPE;
unit_name = "";
initial_units = 0;
current_units = 0;

// Hover bubble margins.
#macro RESOURCE_X_MARGIN 10
#macro RESOURCE_Y_MARGIN 5
// Mouse hover status.
was_hovering = false;
is_hovering = false;

// Origin resource hover sound.
hover_sound = -1;
