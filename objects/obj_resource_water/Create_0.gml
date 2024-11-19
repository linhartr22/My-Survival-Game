/// @description Crystal Resource Setup.
// Get prototype instance values.
event_inherited();

// How many units.
#macro WATER_BASE 1000
#macro WATER_MIN - 200
#macro WATER_MAX + 600

// Resource type.
type_num = RESOURCE_TYPES.WATER;

// Unit name.
units_name = "Barrels";

// Initial resource values.
initial_units = WATER_BASE + irandom_range(WATER_MIN, WATER_MAX);
current_units = initial_units;

// Hover sound index. Used by parent object.
hover_sound = snd_resource_water;
