/// @description desc_active = false


// Reset all timer variables
desc_active = false;
desc_timer_active = false;
desc_timer = 0;

// Destroy description object if it exists
if(instance_exists(obj_description)) instance_destroy(obj_description)