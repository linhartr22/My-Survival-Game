/// @description Base Building Setup.
// Get prototype instance values.
event_inherited();

#region Revise prototype instance values.
// Building type.
type_num = BUILDING_TYPES.BASE;
// Base building hover sound.
hover_sound = asset_get_index("snd_building_base");
// Menu text.
menu_title = "BASE MENU";
menu_choices = ["BOT", "", "", "", "", "ESC"];hover_msg ="";

// Initialize Base Values.
crystals = 10;

