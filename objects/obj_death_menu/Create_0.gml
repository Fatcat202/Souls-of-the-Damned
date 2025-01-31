/// @description Insert description here
// You can write your code in this editor


cam_x = camera_get_view_x(CAMERA);
cam_y = camera_get_view_y(CAMERA);

death_button_x = cam_x + 320;
death_button_y = cam_y + 200;
death_text_y = cam_y + 80;
death_button_gap = 65;
	

if !instance_exists(obj_button_main_menu) {
	instance_create_layer(death_button_x, death_button_y, "Menu_Buttons", obj_button_main_menu);
}
death_button_y += death_button_gap;
if !instance_exists(obj_button_quit_game) {
	instance_create_layer(death_button_x, death_button_y, "Menu_Buttons", obj_button_quit_game);
}


