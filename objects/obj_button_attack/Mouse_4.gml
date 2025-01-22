/// @description Insert description here
// You can write your code in this editor


if(global.command_all == true)
{
	with (obj_ply_npc_parent)
	{
		command_state = "attack_state";
	}
	show_debug_message("** ALL ATTACK STATE **");
}else
{
	obj_com_pause_parent.command_state = "attack_state";
	show_debug_message("** ATTACK STATE **");
}
