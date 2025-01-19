/// @description Select Command State


if(mouse_check_button_pressed(mb_left) == true)
{
	obj_com_pause_parent.command_state = "defend_state";
}