/// @description Base Building Setup.
// Get prototype instance values.
event_inherited();

// Building type.
type_num = BUILDING_TYPES.BASE;

// Menu text.
menu_title = "BASE MENU";
menu_choices = ["BOT", "", "", "", "", "ESC"];

// Initialize base values.
crystal = 10;
water = 50;

// Hover sound index.
hover_sound = asset_get_index("snd_building_base");
