
function scr_heal_enemy(healing, target, overheal_amount)
{
	// healing asks for amount of healing
	// overheal_amount asks for amount of overheal allowed
	// 0 target means heal self
	// 1 target means heal other

	
	
	if(target == 0)
	{
		// Heal self
		self.active_health = self.active_health + healing;
		if(self.active_health > self.max_hp)
			{
				// Check for overheal if reaching max hp
				self.active_health = self.max_hp + overheal_amount;
			}
	}else
	{
		if(object_exists(obj_enemy_parent) == true)
		{
			// Heal other
			other.active_health = other.active_health + healing;
			if(other.active_health > other.max_hp)
				{
					// Check for overheal if reaching max hp
					other.active_health = max_hp + overheal_amount;
				}
		}
	}
}