/// @description Start Game


if(ds_list_size(global.selected_pcs) > 0 && global.starting_map != -1)
{
	room_goto(global.starting_map);
}