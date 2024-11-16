/// @description Base Building Setup.
// Get prototype instance values.
event_inherited();

// Bots.
#macro BOT_Q_MAX 5
#macro BOT_CRYSTALS 5
#macro BOT_BUILD_TIME 5

// Building type.
type_num = BUILDING_TYPES.BASE;

// Bot build queue.
base_bot_q = 0;

// Menu text.
menu_title = "BASE MENU";
menu_choices = ["BOT", "", "", "", "", "EXIT"];
menu_hover = [string_concat(BOT_CRYSTALS, " CRYSTALS\n", BOT_BUILD_TIME, " SECONDS"), 
	"", "", "", "",	"EXIT MENU"];

// Initialize base values.
crystal = 10;
water = 50;

// Hover sound index.
hover_sound = asset_get_index("snd_building_base");

// Building id. Used by parent and building menu objects.
building_id = id;
