/// @description Insert description here
// You can write your code in this editor

if(global.command_all == true)
{
	with (obj_ply_npc_parent)
	{
		command_state = "follow_state";
	}
	show_debug_message("** ALL FOLLOW STATE **");
}else
{
	obj_com_pause_parent.command_state = "follow_state";
	show_debug_message("** FOLLOW STATE **");
}