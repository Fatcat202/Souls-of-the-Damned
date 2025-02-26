// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_overheal_potion()
{
	var _item = item;
	with(obj_com_pause_parent)
	{
	//	time_source_create(time_source_game, 4, time_source_units_frames, scr_heal, [2, 5], 10, time_source_expire_after)
		scr_heal(5, 10)
	}
}