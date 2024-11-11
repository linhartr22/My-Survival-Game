/// @description Building Menu Setup.
// Parent building id.
// building_id = -1;
show_debug_message("Menu building id: {0}",building_id);

// Menu dimensions.
#macro MENU_ROWS 2
#macro MENU_COLS 3

#macro MENU_BUTTONS_OFFSET_X 0
#macro MENU_BUTTONS_OFFSET_Y 32
#macro MENU_BUTTON_WIDTH 64
#macro MENU_BUTTON_HEIGHT 64

// Menu display offset.
menu_x_offset = sprite_width * 1.25;
menu_y_offset = sprite_height * 0.6;

// Camera viewport dimensions.
viewport_width = camera_get_view_width(view_camera[0]);
viewport_height = camera_get_view_height(view_camera[0]);

// Mouse hover statuses.
was_hovering = false;
is_hovering = false;
