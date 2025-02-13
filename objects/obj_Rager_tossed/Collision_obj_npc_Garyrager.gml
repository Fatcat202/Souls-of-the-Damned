/// @description End Attack

if(state == "returning")
{
	// Start attack cooldown
	other.cooldown_time_4 = cooldown
	other.cooldown_4 = false
	other.used = true

	// Change Gary sprite
	object_set_sprite(obj_npc_Garyrager, spr_Garyrager_side)

	// Destroy object
	instance_destroy()
}