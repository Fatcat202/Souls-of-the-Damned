/// @description Death

// Inherit the parent event
event_inherited();

// Death Upon Reaching 0 HP
if(active_health <= 0) instance_destroy()