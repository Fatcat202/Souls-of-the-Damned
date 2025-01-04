
function scr_data_cross_reference(referenced_char)
{
	// Take name of active char and convert to allow cross reference with npc and player arrays
	// Needed for some specific data transfers between objects and to display the player name in the hud
	
	for(var i = 1; i <= 8; i++)
	{
		if(object_get_name(global.arr_npc[i]) == global.arr_active_pcs[referenced_char] || object_get_name(global.arr_players[i]) == global.arr_active_pcs[referenced_char])
		{
			global.char_index = i;
			break;
		}
	}
}