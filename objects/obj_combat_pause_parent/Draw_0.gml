/// @description Insert description here
// You can write your code in this editor


// Draw healthbars if not player controlled
if(combat_pause_index != global.selected_char)
{
	// Inherit the parent event
	event_inherited();
}else 
{
	// Draws sprite
	draw_self();
}

