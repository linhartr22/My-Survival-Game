/// @description Prototype Resource Setup.
/// Child objects will inherit this event, as first step in their create event.
// Values for resource type_num.
enum RESOURCE_TYPES {
	CRYSTAL,
	WATER,
	METHANE
}

// Hover message bubble margins.
#macro RESOURCE_X_MARGIN 10
#macro RESOURCE_Y_MARGIN 5

// Mouse hovering state.
is_hovering = false;
