/// @description Timers
// You can write your code in this editor



// Characters are affected by Damage Over Time
scr_take_dot();

// ** STUN **
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


// ** POISON DEBUFF ABILITY **
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


// ** KNOCKBACK **
// Check character is stunned
if(knocked_back == true)
{
	// Increment cooldown each frame
	knockback_cooldown_timer++;
	if(knockback_cooldown_timer >= knockback_cooldown_time) 
	{
		// Reset changed conditions
		can_control = true;
		can_damage = true;
		speed = 0;
		direction = 0;
		knocked_back = false;
		knockback_cooldown_timer = 0;
	}
	
	// TODO Place in here check for collisions to prevent clipping into objects
	
}




