/// @description Controls


#region Change Attacks

	if(keyboard_check(ord(global.cont_attack_1)))
	{
		active_power = 1;
	}
	if(keyboard_check(ord(global.cont_attack_2)))
	{
		active_power = 2;
	}
	if(keyboard_check(ord(global.cont_attack_3)))
	{
		active_power = 3;
	}
	if(keyboard_check(ord(global.cont_attack_4)))
	{
		active_power = 4;
	}

#endregion Change Attacks


#region Change Character 
	var i = 1;
	if(keyboard_check_pressed(ord(global.cont_char_1)))
	{
		if(global.total_active_pcs > i) scr_change_com_pause_char(1); i++
	}
	if(keyboard_check_pressed(ord(global.cont_char_2)))
	{
		if(global.total_active_pcs > i) scr_change_com_pause_char(2); i++
	}
	if(keyboard_check_pressed(ord(global.cont_char_3)))
	{
		if(global.total_active_pcs > i) scr_change_com_pause_char(3); i++
	}
	if(keyboard_check_pressed(ord(global.cont_char_4)))
	{
		if(global.total_active_pcs > i) scr_change_com_pause_char(4); i++
	}

#endregion Change Character
