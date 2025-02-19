/// @description Destroy Object

// Inherit the parent event
event_inherited();


// Destroy if player is not mythic
if(!obj_ply_npc_parent.is_mythic) instance_destroy(obj_button_mythic)

