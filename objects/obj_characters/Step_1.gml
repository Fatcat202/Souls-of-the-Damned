/// @description Timers
// You can write your code in this editor



// Check character is stunned
if(stunned == true)
{
	// Increment cooldown each frame
	stun_cooldown_timer++;
	if(stun_cooldown_timer >= stun_cooldown_time) 
	{
		// Reset changed conditions
		speed = 0;
		can_move = true;
		can_attack = true;
		stunned = false;
		stun_cooldown_time = 0;
	}
}

// Check if cooldown ticking
if(poison_debuff == true)
{
	// Increment cooldown each frame
	poison_debuff_timer++;
	if(poison_debuff_timer >= poison_debuff_time) 
	{
		// Reset changed conditions
		poison_debuff = false;
		poison_debuff_time = 0;
	}
}