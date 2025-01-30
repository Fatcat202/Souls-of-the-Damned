/// @description On Hit

// If target cannot be damaged, end early
if(other.can_damage == false) return;
	
scr_damage(damage);

scr_knockback(0.45);