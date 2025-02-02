/// @description Timers


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


// ** POISON COATING ATTACK **
// Check if cooldown ticking
if(poison_coating == true)
{
	// Increment cooldown each frame
	poison_coating_timer++;
	if(poison_coating_timer >= poison_coating_time) 
	{
		// Reset changed conditions
		poison_coating = false;
		poison_coating_time = 0;
	}
}

// ** SNEAK ATTACK **
// Check if sneak attack is active
if(sneak_attack == true)
{
	// Increment cooldown each frame
	sneak_attack_timer++;
	if(sneak_attack_timer >= sneak_attack_time) 
	{
		// Reset changed conditions
		can_sneak_attack = false;
		sneak_attack_time = 0;
	}
}


// ** KNOCKBACK **
// Check character is knocked back
if(knocked_back == true)
{
	// Increment cooldown each frame
	knockback_cooldown_timer++;
	if(knockback_cooldown_timer >= knockback_cooldown_time) 
	{
		// Reset changed conditions
		can_control = true;
		can_damage = true;
		can_move = true;
		speed = 0;
		direction = 0;
		knocked_back = false;
		knockback_cooldown_timer = 0;
	}

}


// ** ARMOR REGAIN **
// Check if armor can be regained
if(can_regain_armor == false)
{
	// Increment cooldown each frame
	armor_regain_cooldown_timer++;
	if(armor_regain_cooldown_timer >= armor_regain_cooldown_time) 
	{
		// Reset changed conditions
		can_regain_armor = true;
		armor_regain_cooldown_timer = 0;
	}
}
if(can_regain_armor == true) scr_regain_armor();


