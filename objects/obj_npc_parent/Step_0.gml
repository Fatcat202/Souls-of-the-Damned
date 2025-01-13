// Behavior

// Activate the command state

if(global.command_all == false) // If command_all is false affect only active character
{
	if(command_state == "attack_state")
	{
		scr_attack();
	
	}else if(command_state == "defend_state")
	{
		scr_defend();
	
	}else if(command_state == "move_state")
	{
		scr_move();
	
	}else if(command_state == "follow_state")
	{
		scr_follow();
	}
} else // If command_all is true affect all NPCs
{
	if(command_state == "attack_state")
	{
		with(obj_npc_parent) scr_attack();
	
	}else if(command_state == "defend_state")
	{
		with(obj_npc_parent) scr_defend();
	
	}else if(command_state == "move_state")
	{
		with(obj_npc_parent) scr_move();
	
	}else if(command_state == "follow_state")
	{
		with(obj_npc_parent) scr_follow();
	}
}


