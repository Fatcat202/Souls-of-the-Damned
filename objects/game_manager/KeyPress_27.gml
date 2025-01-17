/// @description ESC Pause

if(global.game_esc_paused = false)
{
	global.game_esc_paused = true;
	scr_esc_pause();
}else 
{
	global.game_esc_paused = false;
	scr_esc_resume();
}
