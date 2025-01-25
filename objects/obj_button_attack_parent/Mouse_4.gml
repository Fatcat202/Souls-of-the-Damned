/// @description 


// Save command all sprite index
var temp;
if(instance_exists(obj_button_command_all)) temp = obj_button_command_all.image_index

// Set all other button sprites to index 1
obj_button_attack_parent.image_speed = 0;
obj_button_attack_parent.image_index = 0;


// Set sprite frame to frame 1
image_speed = 0;
image_index = 1;

// Reset command all sprite index
if(instance_exists(obj_button_command_all)) obj_button_command_all.image_index = temp