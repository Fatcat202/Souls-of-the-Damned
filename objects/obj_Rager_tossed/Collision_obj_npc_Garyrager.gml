/// @description End Attack

if(state == "returning")
{
	// Start attack cooldown
	other.cooldown_time_4 = cooldown
	other.cooldown_4 = false
	other.used = true

	// Change Gary sprite
	other.sprite_index = spr_Garyrager_side

	// Destroy object
	instance_destroy()
}