/// @description Bots Build Queue timer.T
// Decrement base bot queue.
base_bot_q--;

// Update bot button text.
menu_choices[0] = string_concat("BOTS\n", string_repeat("o", base_bot_q));

// Destroy building progress instance.
instance_destroy(my_bp);

// Bot location.
var _bp_x = x + (sprite_width / 2) - (64 / 2);
var _bp_y = y + (sprite_height * 1.05); 

// Spawn bot.
instance_create_layer(_bp_x, _bp_y, "Menus", obj_unit_droid);
