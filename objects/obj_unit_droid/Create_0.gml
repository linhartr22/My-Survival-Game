/// @description Move To Rally Point.
// Create a path.
path = path_add();

// Look for a path to target.
mp_potential_path(path, move_to_x, move_to_y, 2, 4, false);

// Move to rally point.
path_start (path, 2, path_action_stop, false);
