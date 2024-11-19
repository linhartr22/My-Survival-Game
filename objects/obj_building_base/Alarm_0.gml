/// @description Bots Build Queue timer.T
// Destroy building progress instance.
instance_destroy(my_bp);

// Decrement base bot queue.
base_bot_q--;

// Update bot button text.
menu_choices[0] = string_concat("BOTS\n", string_repeat("o", base_bot_q));

// Bot location.
var _bot_x = x + (sprite_width / 2) - (64 / 2);
var _bot_y = y + (sprite_height * 1.05); 

// Spawn bot.
instance_create_layer(_bot_x, _bot_y, "Menus", obj_unit_droid, {
	move_to_x : rally_x,
	move_to_y : rally_y
	});
