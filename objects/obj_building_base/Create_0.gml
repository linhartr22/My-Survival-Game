/// @description Base Building Setup.
// Get prototype instance values.
event_inherited();

// Bots.
#macro BOT_Q_MAX 5
#macro BOT_CRYSTALS 5
#macro BOT_BUILD_TIME 5

// Base building type.
type_num = BUILDING_TYPES.BASE;

// Bots in build queue. Must be declared before building menu text.
base_bot_q = 0;

// Building menu text. Used by building menu object.
menu_title = "BASE MENU";
menu_choices[0] = string_concat("BOTS\n", string_repeat("o", base_bot_q));
menu_hover[0] = string_concat(BOT_CRYSTALS, " CRYSTALS\n", BOT_BUILD_TIME, " SECONDS");

// Initialize base values.
crystal = 10;
water = 50;

// Hover sound index. Used by parent object.
hover_sound = snd_building_base;

// Building id. Used by parent and building menu objects.
building_id = id;

// Building progress object id.
my_bp = -1;

// Building rally point.
rally_x = x;
rally_y = y + sprite_height;
