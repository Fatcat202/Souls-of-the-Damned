
function scr_Alok_shield()
{

	// Block damage
	if mouse_check_button(mb_left)
	{
		can_damage = false;
	}else can_damage = true;
		
	// Checks each frame to see if the mouse is held down
	alarm[2] = game_get_speed(gamespeed_fps) / 60;

}