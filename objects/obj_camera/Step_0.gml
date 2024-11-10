/// @description Move Camera.
// Is camera following an object?
if (cam_follow != noone) {
	// Yes, set camera target to followed object location.
	cam_to_x = follow.x;
	cam_to_y = follow.y;
} else {
	// No, Check for Camera Movement Keypresses.
	var _vkey = keyboard_key;
	switch (_vkey) {
		case ord("A"): cam_to_x = cam_to_x - CAM_X_SPEED; break;
	    case ord("W"): cam_to_y = cam_to_y - CAM_Y_SPEED; break;
	    case ord("S"): cam_to_y = cam_to_y + CAM_Y_SPEED; break;
	    case ord("D"): cam_to_x = cam_to_x + CAM_X_SPEED; break;
	}
}

// Nudge camera object to target location.
x += (cam_to_x - x)/25;
y += (cam_to_y - y)/25;
// Camera object origin is middle center.
camera_set_view_pos(view_camera[0], x - (cam_width / 2), y - (cam_height / 2));
