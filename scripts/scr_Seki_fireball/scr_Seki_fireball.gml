
function scr_Seki_fireball(){

// Shoots fireball that explodes on impact and does damage in an area
		
seki_fireball = instance_create_layer(obj_player_parent.x, obj_player_parent.y, "Projectiles", obj_Seki_fireball); 
seki_fireball.speed = 6;
seki_fireball.direction = point_direction(x, y, mouse_x, mouse_y);
seki_fireball.image_angle = seki_fireball.direction;
		
// Cooldown
cooldown_2 = false;
alarm[2] = game_get_speed(gamespeed_fps) * 3;

}