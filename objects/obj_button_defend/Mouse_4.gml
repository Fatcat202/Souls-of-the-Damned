/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(global.command_all == true)
{
	with (obj_ply_npc_parent)
	{
		command_state = "defend_state";
	}
	show_debug_message("** ALL DEFEND STATE **");
}else
{
	obj_com_pause_parent.command_state = "defend_state";
	show_debug_message("** DEFEND STATE **");
}