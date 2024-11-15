/// @description Camera Setup.
// Set keyboard camera movement speed.
#macro CAM_X_SPEED 16
#macro CAM_Y_SPEED 9

// Follow speed.
#macro FOLLOW_X_SPEED 25
#macro FOLLOW_Y_SPEED 25

// Get camera dimensions.
cam_width = camera_get_view_width(view_camera[0]);
cam_height = camera_get_view_height(view_camera[0]);

// Set follow object to camera.
cam_follow = obj_camera;

// Set follow location to camera.
cam_follow_x = x;
cam_follow_y = y;
