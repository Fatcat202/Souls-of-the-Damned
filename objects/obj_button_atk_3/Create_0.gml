/// @description Text

// Inherit the parent event
event_inherited();


if(instance_exists(obj_player_parent)) player_name = obj_player_parent.player_name
if(instance_exists(obj_com_pause_parent)) player_name = obj_com_pause_parent.player_name

switch (player_name)
{
	case "Alok":
			
		name = "HOLY JAVALIN"
		
		description = "Alok conjures and throws a javalin made of divine light."

			
	break;
		
	case "Xan":
	
		name = "QUICKDRAW"
		
		description = "Xan draws his revolver, shooting one shot at all within range."
	
	break;
		
	case "Dogan":
	
		name = "RAPIER"
		
		description = "Dogan lights and throws a bomb, exploding either within a short time or on impact."
	
	break;
		
	case "Seki":
		
		name = "LIGHTNING BOLT"
		
		description = "Seki throws a lightning bolt damaging all it passes through."
	
	break;
		
}