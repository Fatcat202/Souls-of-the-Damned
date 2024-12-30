/// @description Destruction timer


// If fireball hits something, start destruction timer
// Destruction timer set to how long explosion animation is
if(triggered == true)
{
	if(destruction_timer >= game_get_speed(gamespeed_fps) / 4)
	{
		instance_destroy()
	}
	destruction_timer++;
}

