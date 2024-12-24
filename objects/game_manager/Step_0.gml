/// @description Insert description here



my_surface = -1;

if(global.arr_combat_pause = true)
{

    scr_test()
    //Get the application surface's width and height
    var s_width = surface_get_width(application_surface);
    var s_height = surface_get_height(application_surface);
    
    //Create or recreate custom surface
    my_surface = surface_create(s_width, s_height);
    
    //Copy the application surface to custom surface
    surface_copy(my_surface, 0, 0, application_surface);
	
	if(my_surface != -1)draw_surface(my_surface, 0, 0);
	
	
	
}