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

// Mouse hovering state.
is_hovering = false;

// Button mouse is hovering.
hover_button = -1;

// Last building menu button pressed.
building_menu_button = -1
