/// @description Prototype Resource Setup.
/// Child objects will inherit this event, as first step in their create event.
// Values used for type_num.
enum RESOURCE_TYPES
{
	CRYSTAL,
	WATER,
	METHANE
}

// Hover bubble margins.
#macro RESOURCE_X_MARGIN 10
#macro RESOURCE_Y_MARGIN 5

// Hover message.
hover_msg = "";

// Mouse hover status.
was_hovering = false;
is_hovering = false;
