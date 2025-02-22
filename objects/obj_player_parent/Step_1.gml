/// @description Blocking Reset

// Inherit the parent event
event_inherited();

// Block Damage
if(blocking == true)
{
	can_damage = false
	
	// Allow damage when mouse is released
	if(mouse_check_button_released(mb_left))
	{
		blocking = false;
		can_damage = true;
	}
}