
function scr_transfer_variables(send_to, send_from)
{
	// Used to transfer variables whenever the type of character obj in the room is changed
	
	
	// Health and armor
	send_to.active_health = send_from.active_health;
	send_to.max_hp = send_from.max_hp;
	send_to.active_armor = send_from.active_armor;
	send_to.max_armor = send_from.max_armor;
	send_to.non_lethal = send_from.non_lethal;
	
	// Cooldowns
	send_to.cooldown_1 = send_from.cooldown_1;
	send_to.cooldown_timer_1 = send_from.cooldown_timer_1;
	send_to.cooldown_time_1 = send_from.cooldown_time_1;
	send_to.cooldown_2 = send_from.cooldown_2;
	send_to.cooldown_timer_2 = send_from.cooldown_timer_2;
	send_to.cooldown_time_2 = send_from.cooldown_time_2;
	send_to.cooldown_3 = send_from.cooldown_3;
	send_to.cooldown_timer_3 = send_from.cooldown_timer_3;
	send_to.cooldown_time_3 = send_from.cooldown_time_3;
	send_to.cooldown_4 = send_from.cooldown_4;
	send_to.cooldown_timer_4 = send_from.cooldown_timer_4;
	send_to.cooldown_time_4 = send_from.cooldown_time_4;
	
	// Status
	send_to.can_damage = send_from.can_damage;
	send_to.can_attack = send_from.can_attack;
	send_to.can_regain_armor = send_from.can_regain_armor;
	send_to.can_move = send_from.can_move;
	send_to.stunned = send_from.stunned;
	send_to.is_flyer = send_from.is_flyer;
	send_to.blocking = send_from.blocking;
	send_to.poison_coating = send_from.poison_coating;
	send_to.knocked_back = send_from.knocked_back;
	send_to.can_heal = send_from.can_heal;
	send_to.index = send_from.index;
	send_to.active_power = send_from.active_power;
	send_to.command_state = send_from.command_state;
	send_to.command_state_previous = send_from.command_state_previous;
	send_to.target_move_x = send_from.target_move_x;
	send_to.target_move_y = send_from.target_move_y;
	send_to.sneak_attack = send_from.sneak_attack;
	send_to.is_dead = send_from.is_dead;
		
	
	// Timers
	send_to.dot_tick = send_from.dot_tick;
	send_to.non_lethal_tick = send_from.non_lethal_tick;
	send_to.armor_regain_cooldown_time = send_from.armor_regain_cooldown_time
	send_to.armor_regain_cooldown_timer = send_from.armor_regain_cooldown_timer
	send_to.stun_cooldown_time = send_from.stun_cooldown_time;
	send_to.stun_cooldown_timer = send_from.stun_cooldown_timer;
	send_to.blocking_cooldown_timer = send_from.blocking_cooldown_timer;
	send_to.poison_coating_timer = send_from.poison_coating_timer;
	send_to.poison_coating_timer = send_from.poison_coating_time;
	send_to.knockback_cooldown_timer = send_from.knockback_cooldown_timer;
	send_to.knockback_cooldown_time = send_from.knockback_cooldown_time;
	send_to.sneak_attack_time = send_from.sneak_attack_time;
	send_to.sneak_attack_timer = send_from.sneak_attack_timer;


	// Bullets
	send_to.bullets = send_from.bullets;
		
	// Paths
	send_to.attack_path = send_from.attack_path;
	send_to.follow_path = send_from.follow_path;
	send_to.move_path = send_from.move_path;
	
	// Image Variables
	send_to.image_xscale = send_from.image_xscale;
	send_to.image_yscale = send_from.image_yscale;
	send_to.image_blend = send_from.image_blend;
	send_to.image_angle = send_from.image_angle;
}