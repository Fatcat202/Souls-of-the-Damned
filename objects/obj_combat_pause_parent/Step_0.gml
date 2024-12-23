/// @description Controls
// You can write your code in this editor



#region Change Attacks

	if(keyboard_check(ord(global.cont_power_1)))
	{
		active_power = 1;
	}
	if(keyboard_check(ord(global.cont_power_2)))
	{
		active_power = 2;
	}
	if(keyboard_check(ord(global.cont_power_3)))
	{
		active_power = 3;
	}
	if(keyboard_check(ord(global.cont_power_4)))
	{
		active_power = 4;
	}


#endregion Change Attacks


#region Change Character

	var i = 1;
	if(keyboard_check(ord(global.cont_char_1)))
	{
		if(global.player_index_length > i) global.selected_char = i; i++
	}
	if(keyboard_check(ord(global.cont_char_2)))
	{
		if(global.player_index_length > i) global.selected_char = i; i++
	}	
	if(keyboard_check(ord(global.cont_char_3)))
	{
		//if(global.player_index_length > i) global.selected_char = i; i++
	}
	if(keyboard_check(ord(global.cont_char_4)))
	{
		//if(global.player_index_length > i) global.selected_char = i;
	}


#endregion Controls