/// @description Crystal Resource Setup.
// Get instance values from parent.
event_inherited()
// Initialize instance values.
type_num = RESOURCE_TYPES.CRYSTAL;
units_name = "Crystals";
#macro UNITS_BASE 400
#macro UNITS_LOW -50
#macro UNITS_HIGH 100
initial_units = UNITS_BASE+irandom_range(UNITS_LOW, UNITS_HIGH);
current_units = initial_units;

// Crystal resource hover sound.
hover_sound = asset_get_index("snd_resource_crystal");
