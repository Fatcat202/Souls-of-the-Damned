/// @description Controls

event_inherited()

#region End Combat Pause

	// End combat pause
	if(global.end_combat_pause) scr_combat_resume()
	
	
#endregion End Combat Pause


#region Controls


	#region Movement

		// Checks if the player is moveable
		if(can_control == true)
		{
			// Assign input variable defaults
			var _left = 0;
			var _right = 0;
			var _up = 0;
			var _down = 0;

			// Determine movement direction based on key presses, prevent self from touching solid objects
			if(place_free (x - collision_speed, y)) _left = keyboard_check(ord(global.cont_left));

			if(place_free (x + collision_speed, y)) _right = keyboard_check(ord(global.cont_right))

			if(place_free (x, y - collision_speed)) _up = keyboard_check(ord(global.cont_up))

			if(place_free (x, y + collision_speed)) _down = keyboard_check(ord(global.cont_down))

			// Calculate overall directional being moved in
			var _hspd = _right - _left;
			var _vspd = _down - _up;
	
			// Normalise vector to avoid speed boost when moving diagonally
			if (_hspd != 0 && _vspd != 0)
			{
				var len = sqrt((_hspd * _hspd) + (_vspd * _vspd));
				_hspd /= len;
				_vspd /= len;
			}
	
			// Move player
			if(_hspd !=0 || _vspd != 0)
			{
				var _spd = move_spd;
				var _dir = point_direction(0, 0, _hspd, _vspd);
				var _xadd = lengthdir_x(_spd, _dir);
				var _yadd = lengthdir_y(_spd, _dir);
		
				x = x + _xadd;
				y = y + _yadd;
		
				// Flip image when moving
				if(_hspd < 0)
				{
					image_xscale = -1;
				}else image_xscale = 1;
			}
	
	
		
			// Force objects outside of other objects if stuck or overlaping
			if(place_meeting(x, y, obj_collision_parent) || place_meeting(x, y, obj_enemy_parent) || place_meeting(x, y, obj_player_parent) || place_meeting(x, y, obj_npc_parent))
			{
				for(var i = 0; i < 1000; i++)
				{
					// Right
					if(!place_meeting(x + i, y, obj_collision_parent) && !place_meeting(x + i, y, obj_enemy_parent) && !place_meeting(x + i, y, obj_player_parent) && !place_meeting(x + i, y, obj_npc_parent))
					{
						x += i;
						break;	
					}

					// Left
					if(!place_meeting(x - i, y, obj_collision_parent) && !place_meeting(x - i, y, obj_enemy_parent) && !place_meeting(x - i, y, obj_player_parent) && !place_meeting(x - i, y, obj_npc_parent))
					{
						x -= i;
						break;	
					}
		
					// Up
					if(!place_meeting(x, y + i, obj_collision_parent) && !place_meeting(x, y + i, obj_enemy_parent) && !place_meeting(x, y + i, obj_player_parent) && !place_meeting(x, y + i, obj_npc_parent))
					{
						y += i;
						break;	
					}
		
					// Down
					if(!place_meeting(x, y - i, obj_collision_parent) && !place_meeting(x, y - i, obj_enemy_parent) && !place_meeting(x, y - i, obj_player_parent) && !place_meeting(x, y - i, obj_npc_parent))
					{
						y -= i;
						break;	
					}
		
					// Top Right
					if(!place_meeting(x + i, y + i, obj_collision_parent) && !place_meeting(x + i, y + i, obj_enemy_parent) && !place_meeting(x + i, y + i, obj_player_parent) && !place_meeting(x + i, y + i, obj_npc_parent))
					{
						x += i;
						y += i;
						break;	
					}
			
					// Top Left
					if(!place_meeting(x - i, y + i, obj_collision_parent) && !place_meeting(x - i, y + i, obj_enemy_parent) && !place_meeting(x - i, y + i, obj_player_parent) && !place_meeting(x - i, y + i, obj_npc_parent))
					{
						x -= i;
						y += i;
						break;	
					}
			
					// Bottom Right
					if(!place_meeting(x + i, y - i, obj_collision_parent) && !place_meeting(x + i, y - i, obj_enemy_parent) && !place_meeting(x + i, y - i, obj_player_parent) && !place_meeting(x + i, y - i, obj_npc_parent))
					{
						x += i;
						y -= i;
						break;	
					}
			
					// Bottom Left
					if(!place_meeting(x - i, y - i, obj_collision_parent) && !place_meeting(x - i, y - i, obj_enemy_parent) && !place_meeting(x - i, y - i, obj_player_parent) && !place_meeting(x - i, y - i, obj_npc_parent))
					{
						x -= i;
						y -= i;
						break;	
					}
				}
			}
		}

	#endregion Movement


	#region Change Attacks

		if(keyboard_check_pressed(ord(global.cont_attack_1)))
		{
			active_power = 1;
			obj_button_attack_parent.image_index = 0;
			obj_button_atk_1.image_index = 1;
		}
		if(keyboard_check_pressed(ord(global.cont_attack_2)))
		{
			active_power = 2;
			obj_button_attack_parent.image_index = 0;
			obj_button_atk_2.image_index = 1;
		}
		if(keyboard_check_pressed(ord(global.cont_attack_3)))
		{
			active_power = 3;
			obj_button_attack_parent.image_index = 0;
			obj_button_atk_3.image_index = 1;
		}
		if(keyboard_check_pressed(ord(global.cont_attack_4)))
		{
			active_power = 4;
			obj_button_attack_parent.image_index = 0;
			obj_button_atk_4.image_index = 1;
		}

	#endregion Change Attacks



	#region Change Character 

		if(keyboard_check_pressed(ord(global.cont_char_1)))
		{
			if(global.total_active_pcs >= 1) scr_change_char(1);
		}
		if(keyboard_check_pressed(ord(global.cont_char_2)))
		{
			if(global.total_active_pcs >= 2) scr_change_char(2);
		}
		if(keyboard_check_pressed(ord(global.cont_char_3)))
		{
			if(global.total_active_pcs >= 3) scr_change_char(3);
		}
		if(keyboard_check_pressed(ord(global.cont_char_4)))
		{
			if(global.total_active_pcs == 4) scr_change_char(4);
		}

	#endregion Change Character


#endregion Controls





