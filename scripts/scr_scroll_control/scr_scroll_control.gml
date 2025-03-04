function scr_scroll_control()
{
	global.scroll_control = true;
	
	instance_deactivate_object(obj_inventory_parent)
	instance_deactivate_object(obj_shop_page_parent)
	
	
}