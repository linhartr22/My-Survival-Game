/// @description Crystal Resource Setup.
// Get prototype instance values.
event_inherited();

// How many units.
#macro CRYSTALS_BASE 400
#macro CRYSTALS_MIN -50
#macro CRYSTALS_MAX +100

#region Revise prototype instance values.
// Resource type.
type_num = RESOURCE_TYPES.CRYSTAL;

// Unit name.
units_name = "Crystals";
initial_units = CRYSTALS_BASE+irandom_range(CRYSTALS_MIN, CRYSTALS_MAX);
current_units = initial_units;

// Hover sound index.
hover_sound = asset_get_index("snd_resource_crystal");
#endregion
