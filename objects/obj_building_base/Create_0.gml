/// @description Base Building Setup.
// Get Instance Values from Parent.
event_inherited()
// Initialize Instance Values.
type_num = BUILDING_TYPES.BASE;
menu_title = "BASE MENU"
menu_choices = ["BOT", "", "", "", "", "ESC"]

// Crystal resource hover sound.
hover_sound = asset_get_index("snd_building_base");

// Initialize Base Values.
crystals = 10;

// Menu offset.
menu_x_offset = sprite_width * 1.10;
menu_y_offset = sprite_height * 0.25 * -1;