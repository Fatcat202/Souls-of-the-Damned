/// @description

// Players can automatically regain armor over time
scr_regain_armor();

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
	
	// Normalise direction to avoid speed boost when moving diagonally
	if (_hspd != 0 && _vspd != 0)
	{
		var len = sqrt(_hspd * _hspd + _vspd * _vspd);
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
}


#endregion Movement


#region Change Attacks

if(keyboard_check_pressed(ord(global.cont_attack_1)))
{
	active_power = 1;
}
if(keyboard_check_pressed(ord(global.cont_attack_2)))
{
	active_power = 2;
}
if(keyboard_check_pressed(ord(global.cont_attack_3)))
{
	active_power = 3;
}
if(keyboard_check_pressed(ord(global.cont_attack_4)))
{
	active_power = 4;
}


#endregion Change Attacks


// TODO rebuild to track the player and npc objects in the room before assigning binds
//


#region Change Character 
var i = 1;
if(keyboard_check_pressed(ord(global.cont_char_1)))
{
	if(global.total_active_pcs > i) scr_change_char(1); i++
}
if(keyboard_check_pressed(ord(global.cont_char_2)))
{
	if(global.total_active_pcs > i) scr_change_char(2); i++
}
if(keyboard_check_pressed(ord(global.cont_char_3)))
{
	if(global.total_active_pcs > i) scr_change_char(3); i++
}
if(keyboard_check_pressed(ord(global.cont_char_4)))
{
	if(global.total_active_pcs > i) scr_change_char(4); i++
}


#endregion Controls


#endregion