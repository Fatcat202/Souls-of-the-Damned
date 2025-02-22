/// @description Insert description here
// You can write your code in this editor


// Read name of object and assigns it to object_name
var object_name = object_get_name(object_index);
// Isolates the character name from object_name
var name = string_delete(object_name, 0, 8);

if(selected = false)
{
	if(ds_list_size(global.selected_pcs) < 4)
	{
		ds_list_add(global.selected_pcs, name)
		
		selected = true;
		image_index = 1;
	}
	
} else
{
	selected = false
	image_index = 0;
	var index
	for(var i = 0; i < ds_list_size(global.selected_pcs); i++)
	{
		if(name == ds_list_find_value(global.selected_pcs, i)) index = ds_list_find_index(global.selected_pcs, name)
	}
	
	ds_list_delete(global.selected_pcs, index)
}