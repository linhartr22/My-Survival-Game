/// @description Building Menu Setup.
// Menu size.
#macro MENU_ROWS 2
#macro MENU_COLS 3

// Menu buttons.
#macro MENU_BUTTONS MENU_ROWS * MENU_COLS
#macro MENU_BUTTONS_OFFSET_X 0
#macro MENU_BUTTONS_OFFSET_Y 32
#macro MENU_BUTTON_WIDTH 64
#macro MENU_BUTTON_HEIGHT 64

// Menu display offset.
menu_x_offset = -8;
menu_y_offset = -8;

// Camera viewport size.
viewport_width = camera_get_view_width(view_camera[0]);
viewport_height = camera_get_view_height(view_camera[0]);

// Mouse hover memory.
was_hovering = false;
is_hovering = false;

// Mouse button hover memory.
hover_button_current = -1;
hover_button_last = hover_button_current;

// Last building menu button pressed.
building_menu_button = -1
