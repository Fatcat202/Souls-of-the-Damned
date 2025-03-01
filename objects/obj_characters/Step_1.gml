/// @description Timers

if(!is_dead)
{

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
	
	// ** FASTHEAL **
	// Check if fastheal is active
	if(fastheal_active == true)
	{
		// Increment timer until healing is done
		fastheal_timer++;
		if(fastheal_timer >= fastheal_time) 
		{
			// Increment number of ticks
			fastheal_ticks++
			
			// Reset fastheal timer
			fastheal_timer = 0;
			
			// Heal total amount for tick
			scr_heal(fastheal_healing, fastheal_healing + active_health)
			
			if(fastheal_ticks >= fastheal_max_ticks)
			{
				// Reset changed conditions
				fastheal_active = false;
				fastheal_timer = 0;
				fastheal_ticks = 0;
				fastheal_max_ticks = 0;
				fastheal_time = 0;
				fastheal_healing = 0;
			}
		}
	}
	
	// ** REMOVE OVERHEAL **
	// Check if character is overhealed and not fasthealing
	if(active_health > max_hp && !fastheal_active)
	{
		// Increment cooldown each frame
		overheal_timer++;
		if(overheal_timer >= global.overheal_reduce_time) 
		{
			// Reduce health by 1
			active_health--;
			
			// Reset overheal timer
			overheal_timer = 0;
		}
	}else overheal_timer = 0;

	// ** POISON RESISTANCE **
	// Check character has poison resistance
	if(poison_resist_ticking == true)
	{
		// Increment cooldown each frame
		poison_resist_timer++;
		if(poison_resist_timer >= poison_resist_time) 
		{
			// Reset changed conditions
			poison_resist_ticking = false;
			poison_resist = false;
			poison_resist_time = 0;
		}
	}


	// ** BONUS ARMOR **
	// Check character is stunned
	if(bonus_armor == true)
	{
		// Increment cooldown each frame
		bonus_armor_duration_timer++;
		if(bonus_armor_duration_timer >= bonus_armor_duration_time) 
		{
			// Reset changed conditions
			if (active_armor > max_armor) active_armor = max_armor
			bonus_armor = false;
			bonus_armor_duration_time = 0;
			bonus_armor_duration_timer = 0;
		}
	}


	// ** IMBUE ATTACK **
	// Check if imbue attack is active
	if(imbue_attack == true)
	{
		// Increment cooldown each frame
		imbue_attack_cooldown_timer++;
		if(imbue_attack_cooldown_timer >= imbue_attack_cooldown_time) 
		{
			// Reset changed conditions
			imbue_attack = false;
			imbue_attack_cooldown_time = 0;
			imbue_attack_cooldown_timer = 0;
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
}


