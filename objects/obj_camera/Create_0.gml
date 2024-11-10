/// @description Camera Setup.
// Camera dimensions.
cam_width = camera_get_view_width(view_camera[0]);
cam_height = camera_get_view_height(view_camera[0]);

// Move camera object to middle of the camera view.
x = cam_width/2;
y = cam_height/2;

// Set follow object to noone.
cam_follow = noone;

// Set follow target to camera location.
cam_to_x = x;
cam_to_y = y;

// Set keyboard camera movement speed.
#macro CAM_X_SPEED 10
#macro CAM_Y_SPEED 10
