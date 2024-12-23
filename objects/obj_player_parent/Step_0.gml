/// @description

// Players are affected by Damage Over Time
scr_take_dot();

#region Controls


#region Movement



// Determine movement direction based on key presses
var _left = keyboard_check(ord(global.cont_left))
var _right = keyboard_check(ord(global.cont_right))
var _up = keyboard_check(ord(global.cont_up))
var _down = keyboard_check(ord(global.cont_down))
var _hspd = _right - _left;
var _vspd = _down - _up;

// Checks if the player is moveable
if(can_control == true)
{
	
	/*
	// Collisions
	
	//var collision_speed = global.player_stats[global.selected_char].move_spd + 40;
	if place_meeting(x + _hspd, y, obj_wall)
	{
		while !place_meeting(x + sign(_hspd), y, obj_wall)
		{
			x += sign(_hspd);
		}
    _hspd = 0;
	}
	if place_meeting(x, y + _vspd, obj_wall) 
	{
		while !place_meeting(x , y + sign(_vspd), obj_wall) {
		  x += sign(_vspd);
	 }
    _vspd = 0;
	}	*/
	
	// Normalize vectors to maintain consistant speed
	if (_hspd != 0 && _vspd != 0)
	{
		var len = sqrt(_hspd * _hspd + _vspd * _vspd);
		_hspd /= len;
		_vspd /= len;
	}
	
	// Move player
	if(_hspd !=0 || _vspd != 0)
	{
		var _spd = global.player_stats[global.selected_char].move_spd;
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
}
{


}

#endregion Movement


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
	if(global.player_index_length > i) scr_change_char(1); i++
}
if(keyboard_check(ord(global.cont_char_2)))
{
	if(global.player_index_length > i) scr_change_char(2); i++
}
if(keyboard_check(ord(global.cont_char_3)))
{
	//if(global.player_index_length > i) scr_change_char(3); i++
}
if(keyboard_check(ord(global.cont_char_4)))
{
	//if(global.player_index_length > i) scr_change_char(4); i++
}


#endregion Controls


#endregion