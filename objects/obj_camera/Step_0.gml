/// @description Move Camera.
// Following camera object?
if (cam_follow != obj_camera) {
	// No, Set camera target to followed object location.
	cam_follow_x = cam_follow.x;
	cam_follow_y = cam_follow.y;
} else {
	// Yes, Check for camera movement key pressed.
	switch (keyboard_key) {
		case ord("A"): cam_follow_x = cam_follow_x - CAM_X_SPEED; break;
	    case ord("W"): cam_follow_y = cam_follow_y - CAM_Y_SPEED; break;
	    case ord("S"): cam_follow_y = cam_follow_y + CAM_Y_SPEED; break;
	    case ord("D"): cam_follow_x = cam_follow_x + CAM_X_SPEED; break;
	}
}

// Nudge camera to follow location.
x += (cam_follow_x - x) / FOLLOW_X_SPEED;
y += (cam_follow_y - y) / FOLLOW_Y_SPEED;
if (cam_follow_x < 0) cam_follow_x = 0;
if (cam_follow_y < 0) cam_follow_y = 0;
if (cam_follow_x > room_width - cam_width) cam_follow_x = room_width - cam_width;
if (cam_follow_y > room_height - cam_height) cam_follow_y = room_height - cam_height;
camera_set_view_pos(view_camera[0], x, y);
