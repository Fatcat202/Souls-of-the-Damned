/// @description Death and Timers

event_inherited()

#region Non-Lethal NEEDS WORK
var non_lethal_tick_rate = 30
non_lethal_tick++;

// Remove 5 non-lethal damage every 30 frames
if (non_lethal_tick mod non_lethal_tick_rate == 0) 
{	
	non_lethal = non_lethal - 5;
	// Check if non-lethal will knock unconsious
	if(active_health <= non_lethal)
	{
		// TODO Set up script for unconsious condition
	}
}

#endregion Non-Lethal


#region Death NEEDS WORK

if(active_health <= 0)
{
	
	if(is_dead == false) global.total_dead++;
	
	// Set death conditions
	can_attack = false;
	can_control = false;
	can_damage = false;
	can_move = false;
	can_regain_armor = false;
	can_heal = false;
	is_dead = true;
	
	// Alter image to show death
	image_angle = 90;
	image_blend = c_red;
	
}

if(global.total_dead >= global.total_active_pcs)
{
	global.game_death_paused = true;
	layer_destroy_instances("HUD_Buttons");
	scr_esc_pause();
	
	instance_create_layer(0, 0, "Game_Manager", obj_death_menu);
	instance_activate_object(obj_death_menu)
}

// Added check to make sure players do not spontaniously resurrect
if(is_dead == true && active_health > 0) active_health = -1;


#endregion Death


#region Timers

// Timers for attacks 1-4 cooldowns

// Check if cooldown ticking
if(cooldown_1 == false)
{
	// Increment cooldown each frame
	cooldown_timer_1++;
	if(cooldown_timer_1 >= cooldown_time_1) 
	{
		// Reset cooldown once time has been reached
		cooldown_1 = true;
		cooldown_timer_1 = 0;
	}
}

// Check if cooldown ticking
if(cooldown_2 == false)
{
	// Increment cooldown each frame
	cooldown_timer_2++;
	if(cooldown_timer_2 >= cooldown_time_2) 
	{
		// Reset cooldown once time has been reached
		cooldown_2 = true;
		cooldown_timer_2 = 0;

	}
}

// Check if cooldown ticking
if(cooldown_3 == false)
{
	// Increment cooldown each frame
	cooldown_timer_3++;
	if(cooldown_timer_3 >= cooldown_time_3) 
	{
		// Reset cooldown once time has been reached
		cooldown_3 = true;
		cooldown_timer_3 = 0;
	}
}

// Check if cooldown ticking
if(cooldown_4 == false)
{
	// Increment cooldown each frame
	cooldown_timer_4++;
	if(cooldown_timer_4 >= cooldown_time_4) 
	{
		// Reset cooldown once time has been reached
		cooldown_4 = true;
		cooldown_timer_4 = 0;
	}
}

// Blocking timer to make sure it stays on when holding mouse down, but turns off immediatly after
if(blocking == true)
{
	// Increment cooldown each frame
	blocking_cooldown_timer++;
	
	// If ability length has been reached
	if(blocking_cooldown_timer > 1)
	{
		// Reset changed variables
		can_damage = true;
		blocking = false;
		blocking_cooldown_timer = 0;
	}
}

#endregion Timers
