// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_overheal_potion()
{
	var _item = item;

	with(obj_com_pause_parent)
	{
		
		
		scr_activate_fastheal(global.fastheal_speed, global.inventory[_item].duration, global.inventory[_item].die_mod)
		
		
		
	}
}