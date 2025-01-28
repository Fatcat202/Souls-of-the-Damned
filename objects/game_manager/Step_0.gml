/// @description HUD Buttons


#region HUD Buttons

	var attack_x = ((global.cam_target_x + global.cam_x) / 2) + 620;  //camera_get_view_x(CAMERA) + 620; // Starting x location
	var attack_y = ((global.cam_target_y + global.cam_y) / 2) + 20; // Starting y location
	var attack_spacing = 36; // Space between cooldowns

	#region Place Buttons
		if(!global.game_esc_paused)
		{
			if(global.game_combat_paused == true)
			{
				// Attack buttons
				if !instance_exists(obj_button_atk_1)
				{
					instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_atk_1);
				}
				with(obj_button_atk_1)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_atk_2)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_atk_2);
				}
				with(obj_button_atk_2)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_atk_3)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_atk_3);
				}
				with(obj_button_atk_3)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_atk_4)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_atk_4);
				}
				with(obj_button_atk_4)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				// Command Buttons
				if !instance_exists(obj_button_attack)
				{
					instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_attack);
				}
				with(obj_button_attack)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_defend)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_defend);
				}
				with(obj_button_defend)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_follow)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_follow);
				}
				with(obj_button_follow)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_command_all)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_command_all);
				}
				with(obj_button_command_all)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
			}else // ** NOT COMBAT PAUSED **
			{
				if !instance_exists(obj_button_atk_1)
				{
					instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_atk_1);
				}
				with(obj_button_atk_1)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_atk_2)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_atk_2);
				}
				with(obj_button_atk_2)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_atk_3)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_atk_3);
				}
				with(obj_button_atk_3)
				{
					x = attack_x
					y = attack_y
				}
				attack_y += attack_spacing;
		
				if !instance_exists(obj_button_atk_4)
				{
				    instance_create_layer(attack_x, attack_y, "HUD_Buttons", obj_button_atk_4);
				}
				with(obj_button_atk_4)
				{
					x = attack_x
					y = attack_y
				}
			}
		}
	#endregion Place Buttons
	

#endregion HUD Buttons