
function scr_heal(healing, overheal_amount)
{
	// healing asks for amount of healing
	// overheal_amount asks for amount of overheal allowed


	// Heal self
	active_health = active_health + healing;
	
	// Check for overheal if reaching max hp
	if(active_health >= max_hp)
	{
		active_health = max_hp + overheal_amount;
	}

}